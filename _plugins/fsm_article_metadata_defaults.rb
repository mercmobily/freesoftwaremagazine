require "time"

module FsmArticleMetadataDefaults
  DEFAULTS = {
    "listed" => "true",
    "license" => "verbatim_only",
    "section" => "opinions",
  }.freeze

  module_function

  def article_page?(page)
    path =
      if page.respond_to?(:relative_path) && page.relative_path
        page.relative_path
      elsif page.respond_to?(:path) && page.path
        page.path
      else
        ""
      end

    normalized = path.tr("\\", "/")
    normalized.start_with?("articles/") && File.basename(normalized) == "index.md"
  end

  def blank_value?(value)
    return true if value.nil?
    return value.strip.empty? if value.is_a?(String)

    false
  end

  def parse_time(value)
    return value.to_time if value.respond_to?(:to_time)
    return Time.parse(value) if value.is_a?(String) && !value.strip.empty?

    nil
  rescue ArgumentError
    nil
  end

  def fallback_published(page, site)
    from_date_field = parse_time(page.data["date"])
    return from_date_field if from_date_field

    from_page_date = parse_time(page.respond_to?(:date) ? page.date : nil)
    return from_page_date if from_page_date

    full_path = File.join(site.source, page.path.to_s)
    return File.mtime(full_path) if File.file?(full_path)

    site.time
  rescue StandardError
    site.time
  end
end

module Jekyll
  class FsmArticleMetadataDefaultsGenerator < Generator
    safe true
    priority :high

    def generate(site)
      site.pages.each do |page|
        next unless FsmArticleMetadataDefaults.article_page?(page)

        FsmArticleMetadataDefaults::DEFAULTS.each do |key, value|
          page.data[key] = value if FsmArticleMetadataDefaults.blank_value?(page.data[key])
        end

        if FsmArticleMetadataDefaults.blank_value?(page.data["published"])
          page.data["published"] = FsmArticleMetadataDefaults.fallback_published(page, site)
        end
      end
    end
  end
end
