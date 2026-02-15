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

  def require_published?
    value = ENV.fetch("FSM_REQUIRE_PUBLISHED", "").to_s.strip.downcase
    %w[1 true yes].include?(value)
  end

  def fallback_summary(page)
    raw = page.content.to_s
    return "" if raw.strip.empty?

    if defined?(FsmContentTransforms)
      FsmContentTransforms.summary_for(raw).to_s.strip
    else
      base = raw.split("<!--break-->").first.to_s
      stripped = base.gsub(%r{</?[^>]+(>|$)}, "").gsub(/\s+/, " ").strip
      return "" if stripped.empty?

      "#{stripped[0, 200]} ..."
    end
  rescue StandardError
    ""
  end
end

module Jekyll
  class FsmArticleMetadataDefaultsGenerator < Generator
    safe true
    priority :high

    def generate(site)
      require_published = FsmArticleMetadataDefaults.require_published?
      missing_published = []
      invalid_published = []

      site.pages.each do |page|
        next unless FsmArticleMetadataDefaults.article_page?(page)

        FsmArticleMetadataDefaults::DEFAULTS.each do |key, value|
          page.data[key] = value if FsmArticleMetadataDefaults.blank_value?(page.data[key])
        end

        published = page.data["published"]
        if FsmArticleMetadataDefaults.blank_value?(published)
          if require_published
            missing_published << page.path.to_s
          else
            page.data["published"] = Time.at(0)
          end
        else
          parsed_published = FsmArticleMetadataDefaults.parse_time(published)
          if parsed_published.nil?
            invalid_published << "#{page.path}: #{published.inspect}"
          else
            page.data["published"] = parsed_published
          end
        end

        summary = FsmArticleMetadataDefaults.fallback_summary(page)
        if !summary.empty? && FsmArticleMetadataDefaults.blank_value?(page.data["summary"])
          page.data["summary"] = summary
        end
        if !summary.empty? && FsmArticleMetadataDefaults.blank_value?(page.data["description"])
          page.data["description"] = summary
        end
      end

      return if invalid_published.empty? && (!require_published || missing_published.empty?)

      errors = []
      unless missing_published.empty?
        errors << "Missing required front matter field `published` in:"
        missing_published.sort.each { |path| errors << "- #{path}" }
      end
      unless invalid_published.empty?
        errors << "Invalid `published` format in:"
        invalid_published.sort.each { |entry| errors << "- #{entry}" }
      end
      raise ArgumentError, errors.join("\n")
    end
  end
end
