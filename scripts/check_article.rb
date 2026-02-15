#!/usr/bin/env ruby
# frozen_string_literal: true

require "jekyll"
require "set"
require "yaml"

ROOT = File.expand_path("..", __dir__)
require File.join(ROOT, "_plugins", "fsm_content_transforms")

ALLOWED_LICENSES = Set[
  "verbatim_only",
  "cc-by",
  "cc-by-nc",
  "cc-by-nc-nd",
  "cc-by-nc-sa",
  "cc-by-nd",
  "cc-by-sa",
  "gfdl",
  "gpl",
  "other"
].freeze

ALLOWED_SECTIONS = Set[
  "announcements",
  "end_users",
  "games",
  "hacking",
  "humour",
  "interviews",
  "opinions",
  "reviews"
].freeze

REQUIRED_FIELDS = %w[title authors tags layout main_image].freeze
UNSUPPORTED_DIRECTIVE_PATTERN = /\[\[\s*(?:\/)?(?:img|img_clear|image_big|img_private|image_private)\b/i
UNPROCESSED_KNOWN_DIRECTIVE_PATTERN = /\[\[\s*(?:\/)?(?:code|textbox|image|table_caption|zoom|video|img|img_clear|image_big|img_private|image_private)\b/i

def usage!
  warn "Usage: ruby scripts/check_article.rb <slug|articles/<slug>/index.md>"
  exit 1
end

def normalize_article_path(arg)
  raw = arg.to_s.strip
  return nil if raw.empty?

  if raw.match?(%r{\Aarticles/[^/]+/index\.md\z})
    raw
  elsif raw.match?(%r{\Aarticles/[^/]+\z})
    "#{raw}/index.md"
  elsif raw.match?(%r{\A[^/]+\z})
    "articles/#{raw}/index.md"
  end
end

def parse_article(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return [{}, text] unless match

  data = YAML.safe_load(match[1], aliases: true) || {}
  body = text.sub(/\A---\s*\n.*?\n---\s*\n/m, "")
  [data, body]
end

def split_terms(value)
  case value
  when nil
    []
  when String
    value.split(",").map(&:strip).reject(&:empty?)
  when Array
    value.flat_map { |v| split_terms(v) }
  else
    s = value.to_s.strip
    s.empty? ? [] : [s]
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

  body.scan(/\[\[\s*image\s*:\s*([^|\]\r\n]+)\s*\|/i) { |m| refs << m[0].to_s.strip }
  body.scan(/!\[[^\]]*\]\(([^)\r\n]+)\)/) do |m|
    target = m[0].to_s.strip.split(/\s+["']/, 2).first.to_s.strip
    refs << target unless target.empty?
  end
  body.scan(/<img[^>]*\bsrc=["']([^"']+)["']/i) { |m| refs << m[0].to_s.strip }
  body.scan(/=(?:IMAGE|IMG|IMG_CLEAR|IMAGE_BIG)=([^=\r\n]+)=/i) { |m| refs << m[0].to_s.strip }
  body.scan(/=(?:IMG_PRIVATE|IMAGE_PRIVATE)=([^\r\n]*)(?:\r?\n|$)/i) do |m|
    src = m[0].to_s.split("=", -1).first.to_s.strip
    refs << src unless src.empty?
  end

  refs.reject(&:empty?).uniq
end

def check_local_ref!(failures:, article_path:, article_dir:, label:, ref:)
  if remote_ref?(ref)
    failures << "#{article_path}: #{label} uses remote URL #{ref.inspect}; use a local file."
    return
  end

  repo_path = resolve_repo_path(article_dir, ref)
  if repo_path.nil?
    failures << "#{article_path}: #{label} path #{ref.inspect} is invalid."
    return
  end

  full_path = File.join(ROOT, repo_path)
  failures << "#{article_path}: #{label} file #{repo_path} does not exist." unless File.file?(full_path)
end

article_arg = ARGV.first
usage! if article_arg.nil?

article_path = normalize_article_path(article_arg)
usage! if article_path.nil?

full_article_path = File.join(ROOT, article_path)
unless File.file?(full_article_path)
  warn "FAIL #{article_path}: file not found."
  exit 1
end

article_dir = File.dirname(article_path)
data, body = parse_article(full_article_path)
failures = []

REQUIRED_FIELDS.each do |field|
  value = data[field]
  if value.nil? || (value.is_a?(String) && value.strip.empty?)
    failures << "#{article_path}: missing required field #{field}."
  end
end

layout = data["layout"].to_s.strip
unless layout.empty? || %w[article book].include?(layout)
  failures << "#{article_path}: layout must be article or book."
end

license = data["license"].to_s.strip
unless license.empty? || ALLOWED_LICENSES.include?(license)
  failures << "#{article_path}: invalid license #{license.inspect}."
end

split_terms(data["section"]).each do |section|
  failures << "#{article_path}: invalid section #{section.inspect}." unless ALLOWED_SECTIONS.include?(section)
end

main_image = data["main_image"].to_s.strip
unless main_image.empty?
  check_local_ref!(
    failures: failures,
    article_path: article_path,
    article_dir: article_dir,
    label: "main_image",
    ref: main_image
  )
end

extract_image_refs(body).each do |ref|
  check_local_ref!(
    failures: failures,
    article_path: article_path,
    article_dir: article_dir,
    label: "image reference",
    ref: ref
  )
end

if body.match?(UNSUPPORTED_DIRECTIVE_PATTERN)
  failures << "#{article_path}: unsupported image directives found (use [[image:src|caption]])."
end

rendered = FsmContentTransforms.transform(body)
if rendered.match?(UNPROCESSED_KNOWN_DIRECTIVE_PATTERN)
  failures << "#{article_path}: contains unprocessed FSM directives."
end

if failures.empty?
  puts "OK   #{article_path}: article check passed."
  exit 0
end

warn "FAIL #{article_path}:"
failures.each { |failure| warn "- #{failure}" }
exit 1
