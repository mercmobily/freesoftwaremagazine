#!/usr/bin/env ruby
# frozen_string_literal: true

require "net/http"
require "rbconfig"

ROOT = File.expand_path("..", __dir__)

def usage!
  warn "Usage: ruby scripts/preview_article.rb <slug|articles/<slug>/index.md>"
  exit 1
end

def normalize_slug(arg)
  raw = arg.to_s.strip
  return nil if raw.empty?

  if raw.match?(%r{\Aarticles/([^/]+)/index\.md\z})
    Regexp.last_match(1)
  elsif raw.match?(%r{\Aarticles/([^/]+)\z})
    Regexp.last_match(1)
  elsif raw.match?(%r{\A[^/]+\z})
    raw
  end
end

def command_available?(cmd)
  system("command -v #{cmd} >/dev/null 2>&1")
end

def open_url(url)
  host_os = RbConfig::CONFIG["host_os"]
  opener =
    if host_os =~ /darwin/
      "open"
    elsif host_os =~ /mingw|mswin/
      "start"
    elsif command_available?("xdg-open")
      "xdg-open"
    end

  unless opener
    warn "Could not find a browser opener command. Open this URL manually: #{url}"
    return
  end

  if opener == "start"
    system("cmd", "/c", "start", "", url)
  else
    system(opener, url)
  end
end

slug = normalize_slug(ARGV.first)
usage! if slug.nil?

article_path = File.join(ROOT, "articles", slug, "index.md")
unless File.file?(article_path)
  warn "Article not found: articles/#{slug}/index.md"
  exit 1
end

url = "http://127.0.0.1:4000/articles/#{slug}/"
puts "Starting Jekyll preview for #{slug}"
puts "Target URL: #{url}"

jekyll_pid = spawn(
  {
    "FSM_DISABLE_TAXONOMY_LISTS" => "1",
  },
  "bundle",
  "exec",
  "jekyll",
  "serve",
  "--livereload",
  "--incremental",
  chdir: ROOT
)

%w[INT TERM].each do |signal|
  trap(signal) do
    begin
      Process.kill(signal, jekyll_pid)
    rescue Errno::ESRCH
      nil
    end
  end
end

server_ready = false
120.times do
  begin
    response = Net::HTTP.get_response(URI("http://127.0.0.1:4000/"))
    if response.is_a?(Net::HTTPSuccess) || response.is_a?(Net::HTTPRedirection)
      server_ready = true
      break
    end
  rescue StandardError
    nil
  end
  sleep 0.25
end

if server_ready
  open_url(url)
else
  warn "Jekyll server did not become ready quickly. Open manually: #{url}"
end

Process.wait(jekyll_pid)
exit $CHILD_STATUS.exitstatus || 0
