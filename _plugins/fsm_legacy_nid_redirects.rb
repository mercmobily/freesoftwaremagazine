# Generate legacy NID redirect pages.
# Ryver generated /<nid>/index.html redirects for article nodes.

module FsmLegacyNidRedirects
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

  def article_slug(page)
    path = page.path.to_s.tr("\\", "/")
    return nil unless path.end_with?("/index.md")

    File.basename(File.dirname(path))
  end

  def nid_for(page)
    raw = page.data["nid"]
    return nil if raw.nil?

    value = raw.to_s.strip
    return nil if value.empty?
    return nil if value.include?("/")

    value
  end

  def redirect_html(url)
    <<~HTML
      <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
          <title>Free Software Magazine</title>
          <meta http-equiv="refresh" content="0;URL='#{url}'" />
        </head>
        <body>
          <p>This page is actually located on <a href="#{url}">
            freesoftwaremagazine.com</a>.</p>
        </body>
      </html>
    HTML
  end
end

module Jekyll
  class FsmLegacyNidRedirectPage < PageWithoutAFile
    def initialize(site:, dir:, target_url:)
      @site = site
      @base = site.source
      @dir = dir
      @name = "index.html"

      process(@name)
      self.data = {
        "layout" => nil,
        "render_with_liquid" => false,
        "sitemap" => false,
      }
      self.content = FsmLegacyNidRedirects.redirect_html(target_url)
    end
  end

  class FsmLegacyNidRedirectGenerator < Generator
    safe true
    priority :low

    def generate(site)
      seen = {}
      article_pages = site.pages.select { |page| FsmLegacyNidRedirects.article_page?(page) }
      article_pages.sort_by! { |page| page.path.to_s }

      article_pages.each do |page|
        next unless FsmLegacyNidRedirects.article_page?(page)

        nid = FsmLegacyNidRedirects.nid_for(page)
        next unless nid

        slug = FsmLegacyNidRedirects.article_slug(page)
        next unless slug

        # Keep first match if duplicates exist, mirroring best-effort static behavior.
        next if seen[nid]
        seen[nid] = true

        target_url = "http://freesoftwaremagazine.com/articles/#{slug}"
        site.pages << FsmLegacyNidRedirectPage.new(
          site: site,
          dir: nid,
          target_url: target_url
        )
      end
    end
  end
end
