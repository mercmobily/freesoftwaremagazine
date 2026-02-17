#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("..", __dir__)
ARTICLE_PATTERN = File.join(ROOT, "articles", "*", "index.md")

def blank_value?(value)
  return true if value.nil?
  return value.strip.empty? if value.is_a?(String)

  false
end

def parse_frontmatter(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return {} unless match

  YAML.safe_load(match[1], aliases: true) || {}
end

def listed?(data)
  value = data["listed"]
  return true if blank_value?(value)
  return true if value == true
  return false unless value.is_a?(String)

  value.strip.casecmp("true").zero?
end

failures = []
checked = 0

Dir.glob(ARTICLE_PATTERN).sort.each do |path|
  data = parse_frontmatter(path)
  next unless listed?(data)

  checked += 1
  next unless blank_value?(data["published"])

  rel = path.sub(%r{\A#{Regexp.escape(ROOT)}/}, "")
  failures << "#{rel}: missing required front matter field published."
end

if failures.empty?
  puts "OK   merge publish-field validation passed for #{checked} listed article(s)."
  exit 0
end

warn "FAIL merge publish-field validation found #{failures.size} problem(s):"
failures.each { |failure| warn "- #{failure}" }
exit 1
