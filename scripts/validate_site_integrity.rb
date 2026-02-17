#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "rexml/document"
require "set"
require "time"
require "yaml"

ROOT = File.expand_path("..", __dir__)
SITE = File.join(ROOT, "_site")
PER_PAGE = 20
REQUIRE_PUBLISHED = %w[1 true yes].include?(ENV.fetch("FSM_REQUIRE_PUBLISHED", "").to_s.strip.downcase)
ARTICLE_DEFAULTS = {
  "listed" => "true",
  "license" => "verbatim_only",
  "section" => "opinions",
}.freeze

def blank_value?(value)
  return true if value.nil?
  return value.strip.empty? if value.is_a?(String)

  false
end

def load_frontmatter(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return {} unless match

  YAML.safe_load(match[1], aliases: true) || {}
end

def apply_article_defaults(data)
  merged = data.dup
  ARTICLE_DEFAULTS.each do |key, value|
    merged[key] = value if blank_value?(merged[key])
  end
  merged
end

def parse_time(value)
  return value.to_time if value.respond_to?(:to_time)
  return Time.parse(value) if value.is_a?(String) && !value.strip.empty?

  nil
rescue ArgumentError
  nil
end

def parse_published(path, data, errors)
  value = data["published"]
  if blank_value?(value)
    errors << "#{path}: missing required front matter field published." if REQUIRE_PUBLISHED
    return Time.at(0)
  end

  parsed = parse_time(value)
  if parsed.nil?
    errors << "#{path}: invalid published value #{value.inspect}."
    return Time.at(0)
  end

  parsed
end

def listed?(data)
  value = data["listed"]
  return true if value == true
  return false unless value.is_a?(String)

  value.strip.casecmp("true").zero?
end

def split_terms(value)
  case value
  when nil
    []
  when String
    value.split(",").map { |v| v.strip }.reject(&:empty?)
  when Array
    value.flat_map { |v| split_terms(v) }
  else
    str = value.to_s.strip
    str.empty? ? [] : [str]
  end
end

def pages_for_terms(articles, field)
  grouped = Hash.new(0)
  articles.each do |article|
    split_terms(article[:data][field]).uniq.each { |term| grouped[term] += 1 }
  end
  [grouped.size, grouped.values.map { |count| (count.to_f / PER_PAGE).ceil }.sum]
end

def html_pages_count(path)
  Dir.glob(File.join(path, "**", "index.html"), File::FNM_DOTMATCH).count { |p| File.file?(p) }
end

def decode_path(href)
  path = href.split(/[?#]/, 2).first
  return nil unless path

  CGI.unescape(path)
end

source_articles = []
metadata_failures = []
Dir.glob(File.join(ROOT, "articles", "*", "index.md")).sort.each do |path|
  data = apply_article_defaults(load_frontmatter(path))
  data["published"] = parse_published(path, data, metadata_failures)
  slug = File.basename(File.dirname(path))
  source_articles << { path: path, slug: slug, data: data }
end

listed_articles = source_articles.select { |article| listed?(article[:data]) }
listed_sorted = listed_articles.sort_by do |article|
  published = article[:data]["published"]
  t = begin
    published.respond_to?(:to_time) ? published.to_time : Time.parse(published.to_s)
  rescue StandardError
    Time.at(0)
  end
  -t.to_i
end

nids = source_articles.filter_map do |article|
  nid = article[:data]["nid"].to_s.strip
  nid.empty? || nid.include?("/") ? nil : nid
end
unique_nids = nids.uniq

failures = metadata_failures.dup
checks = []

# Core page counts
article_output_count = Dir.glob(File.join(SITE, "articles", "*", "index.html")).size
page_output_count = Dir.glob(File.join(SITE, "pages", "*", "index.html")).size

checks << ["article pages", article_output_count, listed_articles.size]
checks << ["pages", page_output_count, 25]

# Redirect parity
redirect_output_count = Dir.glob(File.join(SITE, "[0-9]*", "index.html")).size
checks << ["nid redirects", redirect_output_count, unique_nids.size]

sample_nid = "2403"
sample_redirect = File.join(SITE, sample_nid, "index.html")
if File.file?(sample_redirect)
  sample_html = File.read(sample_redirect)
  unless sample_html.include?("http-equiv=\"refresh\"") &&
         sample_html.include?("http://freesoftwaremagazine.com/articles/microsoft_the_copyright_infringer")
    failures << "sample redirect content mismatch at #{sample_nid}/index.html"
  end
else
  failures << "sample redirect missing at #{sample_nid}/index.html"
end

# RSS + sitemap validation
rss = REXML::Document.new(File.read(File.join(SITE, "rss.xml")))
sitemap = REXML::Document.new(File.read(File.join(SITE, "sitemap.xml")))
sitemap_news = REXML::Document.new(File.read(File.join(SITE, "sitemap_news.xml")))

rss_items = REXML::XPath.match(rss, "//rss/channel/item")
rss_first_link = REXML::XPath.first(rss, "//rss/channel/item[1]/link")&.text.to_s
expected_rss_items = [listed_articles.size, 50].min
expected_first = listed_sorted.empty? ? "" : "http://www.freesoftwaremagazine.com/articles/#{listed_sorted.first[:slug]}/"

checks << ["rss item count", rss_items.size, expected_rss_items]
checks << ["rss pubDate tags", REXML::XPath.match(rss, "//rss/channel/item/pubDate").size, expected_rss_items]
checks << ["rss putDate tags", REXML::XPath.match(rss, "//rss/channel/item/putDate").size, 0]
checks << ["rss first link", rss_first_link, expected_first]
checks << ["sitemap url count", REXML::XPath.match(sitemap, "//urlset/url").size, listed_articles.size + 1]
checks << ["sitemap_news url count", REXML::XPath.match(sitemap_news, "//urlset/url").size, [listed_articles.size, 50].min]

# Stage 4 output-diff style checks against source metadata
all_expected_pages = (listed_articles.size.to_f / PER_PAGE).ceil
checks << ["all_articles pages", html_pages_count(File.join(SITE, "all_articles")), all_expected_pages]

taxonomy_checks = {
  "tags pages" => pages_for_terms(listed_articles, "tags").last,
  "authors pages" => pages_for_terms(listed_articles, "authors").last,
  "licenses pages" => pages_for_terms(listed_articles, "license").last,
  "sections generated pages" => pages_for_terms(listed_articles, "section").last,
  "issues generated pages" => pages_for_terms(listed_articles, "issue").last,
  "books generated pages" => pages_for_terms(listed_articles, "book").last,
}

checks << ["tags pages", html_pages_count(File.join(SITE, "tags")), taxonomy_checks["tags pages"]]
checks << ["authors pages", html_pages_count(File.join(SITE, "authors")), taxonomy_checks["authors pages"]]
checks << ["licenses pages", html_pages_count(File.join(SITE, "licenses")), taxonomy_checks["licenses pages"]]
checks << ["sections generated pages", html_pages_count(File.join(SITE, "sections")) - 1, taxonomy_checks["sections generated pages"]]
checks << ["issues generated pages", html_pages_count(File.join(SITE, "issues")) - 1, taxonomy_checks["issues generated pages"]]
checks << ["books generated pages", html_pages_count(File.join(SITE, "books")) - 1, taxonomy_checks["books generated pages"]]

# Pagination link integrity across generated HTML
all_site_html = Dir.glob(File.join(SITE, "**", "*.html"), File::FNM_DOTMATCH).select { |p| File.file?(p) }
existing = Set.new(all_site_html.map { |path| path.sub(%r{\A#{Regexp.escape(SITE)}/?}, "") })
checked_links = 0
missing_links = 0

all_site_html.each do |file|
  content = File.read(file)
  content.scan(/href="([^"]+)"/) do |m|
    href = m[0]
    next unless href.start_with?("/")
    next unless href.include?("/page_") || href.start_with?("/all_articles/")

    checked_links += 1
    decoded = decode_path(href)
    next unless decoded && decoded != "/"

    rel = decoded.start_with?("/") ? decoded[1..] : decoded
    candidates =
      if rel.end_with?("/")
        [File.join(rel, "index.html")]
      else
        [rel, File.join(rel, "index.html"), "#{rel}.html"]
      end

    unless candidates.any? { |candidate| existing.include?(candidate) }
      missing_links += 1
    end
  end
end

checks << ["pagination links checked", checked_links.positive?, true]
checks << ["pagination links missing", missing_links, 0]

# Content transform integrity checks
legacy_marker_pattern = /=(?:CODE_START|CODE_END|TEXTBOX_START|TEXTBOX_END|IMAGE|IMG|IMG_CLEAR|IMAGE_BIG|IMG_PRIVATE|IMAGE_PRIVATE|TABLE_CAPTION|ZOOM|VIDEO)=/
unprocessed_directive_pattern = /\[\[\s*(?:\/)?(?:code|textbox|image|img|img_clear|image_big|img_private|image_private|table_caption|zoom|video)\b/i

legacy_marker_hits = 0
unprocessed_directive_hits = 0
Dir.glob(File.join(SITE, "articles", "*", "index.html")).each do |path|
  html = File.read(path)
  legacy_marker_hits += html.scan(legacy_marker_pattern).size
  unprocessed_directive_hits += html.scan(unprocessed_directive_pattern).size
end

checks << ["legacy markers in rendered articles", legacy_marker_hits, 0]
checks << ["unprocessed directives in rendered articles", unprocessed_directive_hits, 0]

# Social preview + in-article hero image check on newest listed article with main_image
latest_with_main_image = listed_sorted.find do |article|
  !blank_value?(article[:data]["main_image"])
end

if latest_with_main_image
  slug = latest_with_main_image[:slug]
  main_image = latest_with_main_image[:data]["main_image"].to_s.strip.gsub(" ", "%20")
  article_html_path = File.join(SITE, "articles", slug, "index.html")

  if File.file?(article_html_path)
    html = File.read(article_html_path)
    expected_image_url_fragment = "/articles/#{slug}/#{main_image}"
    hero_image_regex = /<img[^>]*class="[^"]*\bfigure-img\b[^"]*\bimg-fluid\b[^"]*\brounded\b[^"]*"[^>]*src="#{Regexp.escape(main_image)}"/m

    checks << ["social og:image present", html.include?('property="og:image"'), true]
    checks << ["social og:image URL", html.include?(expected_image_url_fragment), true]
    checks << ["article hero image present", !!(html =~ hero_image_regex), true]
  else
    checks << ["social article html exists", false, true]
  end
end

checks.each do |name, actual, expected|
  if actual == expected
    puts "OK   #{name}: #{actual}"
  else
    puts "FAIL #{name}: actual=#{actual.inspect} expected=#{expected.inspect}"
    failures << "#{name} mismatch"
  end
end

if failures.empty?
  puts "\nSite integrity validation passed."
  exit 0
end

puts "\nSite integrity validation failed:"
failures.uniq.each { |failure| puts "- #{failure}" }
exit 1
