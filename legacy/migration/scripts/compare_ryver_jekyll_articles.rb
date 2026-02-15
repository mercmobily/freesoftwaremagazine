#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "optparse"

options = {
  orig_root: "legacy/_site_orig",
  new_root: "legacy/_site_jekyll",
  sample: 20
}

OptionParser.new do |opts|
  opts.banner = "Usage: ruby legacy/migration/scripts/compare_ryver_jekyll_articles.rb [options]"
  opts.on("--orig-root PATH", "Ryver output root (default: legacy/_site_orig)") { |v| options[:orig_root] = v }
  opts.on("--new-root PATH", "Jekyll output root (default: legacy/_site_jekyll)") { |v| options[:new_root] = v }
  opts.on("--sample N", Integer, "How many sample mismatches to print (default: 20)") { |v| options[:sample] = v }
end.parse!

orig_root = options[:orig_root]
new_root = options[:new_root]

unless Dir.exist?(orig_root)
  warn "Missing directory: #{orig_root}"
  exit 1
end
unless Dir.exist?(new_root)
  warn "Missing directory: #{new_root}"
  exit 1
end

def article_rel_paths(root)
  Dir.glob(File.join(root, "articles", "*", "index.html"))
     .select { |p| File.file?(p) }
     .map { |p| p.sub(%r{\A#{Regexp.escape(root)}/?}, "") }
     .sort
end

def extract_article_content(html)
  m = html.match(%r{<div class="article-content">\s*([\s\S]*?)</div>\s*<div class="card bg-faded mt-5">}m)
  return m[1] if m

  m = html.match(%r{<div class="article-content">\s*([\s\S]*?)</div>\s*</div>\s*</div>}m)
  return m[1] if m

  nil
end

def normalize_ws(text)
  text.to_s.gsub(/\r\n?/, "\n").gsub(/\s+/, "")
end

def normalize_typography(text)
  text.to_s
      .tr("\u2018\u2019\u2032", "'''")
      .tr("\u201C\u201D\u2033", "\"\"\"")
      .tr("\u2013\u2014", "--")
      .gsub("\u2026", "...")
      .gsub("\u00A0", " ")
end

def normalize_alnum(text)
  text.to_s.downcase.gsub(/[^[:alnum:]]+/u, "")
end

def plain_text(html_fragment)
  raw = html_fragment.to_s
                     .gsub(%r{<script[\s\S]*?</script>}i, "")
                     .gsub(%r{<style[\s\S]*?</style>}i, "")
                     .gsub(%r{</?[^>]+>}, " ")
  CGI.unescapeHTML(raw)
end

orig_paths = article_rel_paths(orig_root)
new_paths = article_rel_paths(new_root)

orig_set = orig_paths.to_h { |r| [r, File.join(orig_root, r)] }
new_set = new_paths.to_h { |r| [r, File.join(new_root, r)] }
missing_in_new = orig_set.keys - new_set.keys
extra_in_new = new_set.keys - orig_set.keys
common = orig_set.keys & new_set.keys

metrics = Hash.new(0)
metrics[:total_orig] = orig_paths.size
metrics[:total_new] = new_paths.size
metrics[:common] = common.size

category_counts = Hash.new(0)
category_examples = Hash.new { |h, k| h[k] = [] }
text_alnum_mismatch_examples = []

legacy_marker_tags = %w[
  CODE_START CODE_END
  TEXTBOX_START TEXTBOX_END
  IMAGE IMG IMG_CLEAR IMAGE_BIG IMG_PRIVATE IMAGE_PRIVATE
  TABLE_CAPTION ZOOM VIDEO
].freeze

common.each do |rel|
  orig_html = File.read(orig_set[rel])
  new_html = File.read(new_set[rel])

  metrics[:full_page_exact] += 1 if orig_html == new_html

  orig_content = extract_article_content(orig_html)
  new_content = extract_article_content(new_html)
  unless orig_content && new_content
    metrics[:content_extract_fail] += 1
    text_alnum_mismatch_examples << rel if text_alnum_mismatch_examples.size < options[:sample]
    next
  end

  if normalize_ws(orig_content) == normalize_ws(new_content)
    metrics[:content_equal_no_ws] += 1
  else
    metrics[:content_diff_no_ws] += 1
  end

  orig_text = plain_text(orig_content)
  new_text = plain_text(new_content)

  text_ws_equal = normalize_ws(orig_text) == normalize_ws(new_text)
  text_ws_typo_equal = normalize_ws(normalize_typography(orig_text)) ==
                       normalize_ws(normalize_typography(new_text))
  text_alnum_equal = normalize_alnum(normalize_typography(orig_text)) ==
                     normalize_alnum(normalize_typography(new_text))

  metrics[:text_equal_no_ws] += 1 if text_ws_equal
  metrics[:text_equal_no_ws_typography] += 1 if text_ws_typo_equal
  metrics[:text_equal_alnum] += 1 if text_alnum_equal

  next if text_alnum_equal

  text_alnum_mismatch_examples << rel if text_alnum_mismatch_examples.size < options[:sample]

  categories = []
  categories << :new_heading_ids if new_content.match?(/<h[1-6]\s+id=/i)
  categories << :new_rouge_markup if new_content.include?("highlighter-rouge")

  new_has_md = new_content.match?(/\[[^\]]+\]\([^)]+\)/) || new_content.match?(/(^|[^\w])_[^_\n]{2,}_([^\w]|$)/)
  orig_has_md = orig_content.match?(/\[[^\]]+\]\([^)]+\)/) || orig_content.match?(/(^|[^\w])_[^_\n]{2,}_([^\w]|$)/)
  categories << :new_raw_markdown if new_has_md && !orig_has_md

  orig_markers = orig_content.scan(/=([A-Z_]+)=/).flatten & legacy_marker_tags
  new_markers = new_content.scan(/=([A-Z_]+)=/).flatten & legacy_marker_tags
  if orig_markers.any? && (orig_markers - new_markers).any?
    categories << :legacy_marker_bug_fixed
  end

  categories << :escaped_numeric_entity if new_content.match?(/&amp;#x?[0-9a-f]+;/i)

  if categories.empty?
    category_counts[:uncategorized] += 1
    category_examples[:uncategorized] << rel if category_examples[:uncategorized].size < options[:sample]
    next
  end

  categories.each do |cat|
    category_counts[cat] += 1
    category_examples[cat] << rel if category_examples[cat].size < options[:sample]
  end
end

effective_mismatch = metrics[:common] - metrics[:text_equal_alnum] - category_counts[:legacy_marker_bug_fixed]

def pct(value, total)
  return "0.00" if total.to_i.zero?

  format("%.2f", (value.to_f * 100.0) / total)
end

puts "Ryver vs Jekyll article comparison"
puts "orig_root=#{orig_root}"
puts "new_root=#{new_root}"
puts

puts "counts:"
puts "  orig_articles=#{metrics[:total_orig]}"
puts "  new_articles=#{metrics[:total_new]}"
puts "  common_articles=#{metrics[:common]}"
puts "  missing_in_jekyll=#{missing_in_new.size}"
puts "  extra_in_jekyll=#{extra_in_new.size}"
puts

puts "parity:"
puts "  full_page_exact=#{metrics[:full_page_exact]} (#{pct(metrics[:full_page_exact], metrics[:common])}%)"
puts "  article_content_equal_no_ws=#{metrics[:content_equal_no_ws]} (#{pct(metrics[:content_equal_no_ws], metrics[:common])}%)"
puts "  article_text_equal_no_ws=#{metrics[:text_equal_no_ws]} (#{pct(metrics[:text_equal_no_ws], metrics[:common])}%)"
puts "  article_text_equal_no_ws_typography=#{metrics[:text_equal_no_ws_typography]} (#{pct(metrics[:text_equal_no_ws_typography], metrics[:common])}%)"
puts "  article_text_equal_alnum=#{metrics[:text_equal_alnum]} (#{pct(metrics[:text_equal_alnum], metrics[:common])}%)"
puts "  article_text_diff_even_alnum=#{metrics[:common] - metrics[:text_equal_alnum]}"
puts "  effective_mismatch_excluding_legacy_marker_fixes=#{effective_mismatch}"
puts "  content_extract_failures=#{metrics[:content_extract_fail]}"
puts

unless missing_in_new.empty?
  puts "missing_in_jekyll samples:"
  missing_in_new.first(options[:sample]).each { |rel| puts "  #{rel}" }
  puts
end

unless extra_in_new.empty?
  puts "extra_in_jekyll samples:"
  extra_in_new.first(options[:sample]).each { |rel| puts "  #{rel}" }
  puts
end

unless category_counts.empty?
  puts "mismatch categories (within text_diff_even_alnum):"
  category_counts.sort_by { |_, v| -v }.each do |cat, count|
    puts "  #{cat}=#{count}"
    category_examples[cat].first(options[:sample]).each { |rel| puts "    - #{rel}" }
  end
  puts
end

if text_alnum_mismatch_examples.any?
  puts "text_diff_even_alnum samples:"
  text_alnum_mismatch_examples.first(options[:sample]).each { |rel| puts "  #{rel}" }
end

exit_code = 0
exit_code = 1 if missing_in_new.any? || extra_in_new.any?
exit exit_code
