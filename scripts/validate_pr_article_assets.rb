#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "set"
require "yaml"

ROOT = File.expand_path("..", __dir__)
ARTICLE_INDEX_PATTERN = %r{\Aarticles/[^/]+/index\.md\z}

def git(*args)
  stdout, status = Open3.capture2("git", *args)
  [stdout, status.success?]
end

def ref_exists?(ref)
  _, ok = git("rev-parse", "--verify", "--quiet", "#{ref}^{commit}")
  ok
end

def detect_base_ref
  env_base = ENV["GITHUB_BASE_REF"].to_s.strip
  unless env_base.empty?
    ["origin/#{env_base}", env_base].each do |candidate|
      return candidate if ref_exists?(candidate)
    end
  end

  %w[origin/master origin/main master main].find { |ref| ref_exists?(ref) }
end

def changed_entries(base_ref)
  merge_base_out, ok = git("merge-base", base_ref, "HEAD")
  return [[], "could not determine merge-base against #{base_ref}"] unless ok

  merge_base = merge_base_out.strip
  diff_out, ok = git("diff", "--name-status", "--diff-filter=ACMR", "#{merge_base}...HEAD")
  return [[], "could not diff #{merge_base}...HEAD"] unless ok

  entries =
    diff_out.lines.map(&:strip).reject(&:empty?).map do |line|
      parts = line.split("\t")
      status = parts[0].to_s
      path = if status.start_with?("R", "C")
               parts[2]
             else
               parts[1]
             end

      { status: status, path: path.to_s }
    end

  [entries, nil]
end

def parse_article(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  if match
    data = YAML.safe_load(match[1], aliases: true) || {}
    body = text.sub(/\A---\s*\n.*?\n---\s*\n/m, "")
    [data, body]
  else
    [{}, text]
  end
end

def remote_ref?(value)
  value.match?(%r{\A(?:https?:)?//}i) || value.start_with?("data:")
end

def resolve_repo_path(article_dir, ref)
  clean = ref.to_s.strip
  return nil if clean.empty?

  relative_path =
    if clean.start_with?("/")
      clean.sub(%r{\A/+}, "")
    else
      File.join(article_dir, clean)
    end

  expanded = File.expand_path(relative_path, ROOT)
  return nil unless expanded.start_with?("#{ROOT}/")

  expanded.sub(%r{\A#{Regexp.escape(ROOT)}/}, "")
end

def extract_image_refs(body)
  refs = []

  body.scan(/\[\[\s*image\s*:\s*([^|\]\r\n]+)\s*\|/i) do |match|
    refs << match[0].to_s.strip
  end

  body.scan(/!\[[^\]]*\]\(([^)\r\n]+)\)/) do |match|
    target = match[0].to_s.strip.split(/\s+["']/, 2).first.to_s.strip
    refs << target unless target.empty?
  end

  body.scan(/<img[^>]*\bsrc=["']([^"']+)["']/i) do |match|
    refs << match[0].to_s.strip
  end

  body.scan(/=(?:IMAGE|IMG|IMG_CLEAR|IMAGE_BIG)=([^=\r\n]+)=/i) do |match|
    refs << match[0].to_s.strip
  end

  body.scan(/=(?:IMG_PRIVATE|IMAGE_PRIVATE)=([^\r\n]*)(?:\r?\n|$)/i) do |match|
    src = match[0].to_s.split("=", -1).first.to_s.strip
    refs << src unless src.empty?
  end

  refs.reject(&:empty?).uniq
end

def check_ref(article_path:, article_dir:, label:, ref:, changed_paths:, failures:)
  if remote_ref?(ref)
    failures << "#{article_path}: #{label} uses remote URL #{ref.inspect}; use a local file included in the PR."
    return
  end

  repo_path = resolve_repo_path(article_dir, ref)
  if repo_path.nil?
    failures << "#{article_path}: #{label} path #{ref.inspect} is invalid."
    return
  end

  full_path = File.join(ROOT, repo_path)
  failures << "#{article_path}: #{label} file #{repo_path} does not exist." unless File.file?(full_path)
  failures << "#{article_path}: #{label} file #{repo_path} is not included in this PR." unless changed_paths.include?(repo_path)
end

base_ref = detect_base_ref
if base_ref.nil?
  puts "OK   PR article asset validation skipped: no base branch reference found."
  exit 0
end

entries, error = changed_entries(base_ref)
if error
  warn "FAIL PR article asset validation: #{error}"
  exit 1
end

changed_paths = entries.map { |entry| entry[:path] }.to_set
new_articles =
  entries
    .select { |entry| entry[:status].start_with?("A", "C") && entry[:path].match?(ARTICLE_INDEX_PATTERN) }
    .map { |entry| entry[:path] }
    .uniq

if new_articles.empty?
  puts "OK   PR article asset validation: no newly added articles in diff."
  exit 0
end

failures = []

new_articles.each do |article_path|
  full_article_path = File.join(ROOT, article_path)
  unless File.file?(full_article_path)
    failures << "#{article_path}: file missing in working tree."
    next
  end

  article_dir = File.dirname(article_path)
  data, body = parse_article(full_article_path)

  main_image = data["main_image"].to_s.strip
  if main_image.empty?
    failures << "#{article_path}: missing required front matter field main_image."
  else
    check_ref(
      article_path: article_path,
      article_dir: article_dir,
      label: "main_image",
      ref: main_image,
      changed_paths: changed_paths,
      failures: failures
    )
  end

  extract_image_refs(body).each do |ref|
    check_ref(
      article_path: article_path,
      article_dir: article_dir,
      label: "image reference",
      ref: ref,
      changed_paths: changed_paths,
      failures: failures
    )
  end
end

if failures.empty?
  puts "OK   PR article asset validation passed for #{new_articles.size} new article(s)."
  exit 0
end

warn "FAIL PR article asset validation found #{failures.size} problem(s):"
failures.each { |failure| warn "- #{failure}" }
exit 1
