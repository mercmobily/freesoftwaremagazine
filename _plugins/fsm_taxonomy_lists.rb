# Taxonomy/list generation + pagination for Jekyll migration.
# Recreates Ryver-style list pages for:
# - all_articles
# - tags, sections, authors, licenses, issues, books

require "yaml"
require "time"
require "cgi"

module FsmTaxonomyLists
  PER_PAGE = 20
  DISABLE_ENV_VAR = "FSM_DISABLE_TAXONOMY_LISTS"

  TAXONOMIES = [
    {
      key: "tags",
      field: "tags",
      folder: "tags",
      sort_by: "published",
      descending: true,
    },
    {
      key: "sections",
      field: "section",
      folder: "sections",
      sort_by: "published",
      descending: true,
    },
    {
      key: "authors",
      field: "authors",
      folder: "authors",
      sort_by: "published",
      descending: true,
    },
    {
      key: "licenses",
      field: "license",
      folder: "licenses",
      sort_by: "published",
      descending: true,
    },
    {
      key: "issues",
      field: "issue",
      folder: "issues",
      sort_by: "published",
      descending: true,
    },
    {
      key: "books",
      field: "book",
      folder: "books",
      sort_by: "book_weight",
      descending: false,
    },
  ].freeze

  module_function

  def article_page?(page)
    path = if page.respond_to?(:relative_path) && page.relative_path
             page.relative_path
           elsif page.respond_to?(:path) && page.path
             page.path
           else
             ""
           end

    normalized = path.tr("\\", "/")
    normalized.start_with?("articles/") && File.basename(normalized) == "index.md"
  end

  def listed?(page)
    value = page.data["listed"]
    return true if value == true
    return false unless value.is_a?(String)

    value.strip.casecmp("true").zero?
  end

  def listed_articles(site)
    site.pages.select { |page| article_page?(page) && listed?(page) }
  end

  def split_terms(value)
    case value
    when nil
      []
    when String
      value.split(",").map { |term| term.strip }.reject(&:empty?)
    when Array
      value.flat_map { |item| split_terms(item) }
    else
      term = value.to_s.strip
      term.empty? ? [] : [term]
    end
  end

  def sort_articles(articles, sort_by:, descending:)
    sorted =
      case sort_by
      when "book_weight"
        articles.sort_by do |article|
          [
            number_value(article.data["book_weight"]),
            -time_value(article.data["published"]).to_i,
            article.data["title"].to_s,
          ]
        end
      else
        articles.sort_by do |article|
          [
            time_value(article.data["published"]).to_i,
            article.data["title"].to_s,
          ]
        end
      end

    descending ? sorted.reverse : sorted
  end

  def time_value(raw)
    return raw.to_time if raw.respond_to?(:to_time)
    return Time.parse(raw) if raw.is_a?(String) && !raw.strip.empty?

    Time.at(0)
  rescue ArgumentError
    Time.at(0)
  end

  def number_value(raw)
    Float(raw.to_s)
  rescue ArgumentError, TypeError
    0.0
  end

  def group_by_taxonomy(articles, field)
    grouped = Hash.new { |hash, key| hash[key] = [] }

    articles.each do |article|
      terms = split_terms(article.data[field]).uniq
      terms.each do |term|
        grouped[term] << article
      end
    end

    grouped
  end

  def article_slug(article)
    path = article.path.to_s.tr("\\", "/")
    return "" unless path.end_with?("/index.md")

    File.basename(File.dirname(path))
  end

  def list_title_for(taxonomy_key, term, term_articles)
    case taxonomy_key
    when "sections"
      titleize(term.tr("_", " "))
    when "issues"
      if term.start_with?("issue_")
        "Issue #{term.delete_prefix("issue_")}"
      else
        term
      end
    when "books"
      matched = term_articles.find { |article| article_slug(article) == term }
      return matched.data["title"].to_s if matched && matched.data["title"]

      titleize(term.tr("_", " "))
    else
      term
    end
  end

  def titleize(value)
    value.split(/\s+/).map(&:capitalize).join(" ")
  end

  def author_info(site, author_name)
    full_path = File.join(site.source, "authors", author_name, "_info.yaml")
    return {} unless File.file?(full_path)

    data = YAML.safe_load(File.read(full_path), aliases: true)
    data.is_a?(Hash) ? data : {}
  rescue Psych::SyntaxError
    {}
  end

  def author_photo_path(site, author_name)
    %w[photo.png photo.jpg photo.jpeg photo.webp].each do |file_name|
      full_path = File.join(site.source, "authors", author_name, file_name)
      return "/authors/#{author_name}/#{file_name}" if File.file?(full_path)
    end
    nil
  end

  def page_dir(base_dir, page_number)
    return base_dir if page_number == 1

    File.join(base_dir, "page_#{page_number}")
  end

  def page_url(base_dir, page_number)
    dir = page_dir(base_dir, page_number)
    encoded = dir.split("/").map { |segment| CGI.escape(segment).gsub("+", "%20") }.join("/")
    "/#{encoded}/"
  end

  def disabled?
    value = ENV.fetch(DISABLE_ENV_VAR, "").to_s.strip.downcase
    %w[1 true yes on].include?(value)
  end
end

module Jekyll
  class FsmTaxonomyListPage < Page
    def initialize(site, dir, page_data)
      @site = site
      @base = site.source
      @dir = dir
      @name = "index.html"

      process(@name)
      self.data = page_data
      self.content = "{% include paginated_article_list.html %}\n"
    end
  end

  class FsmTaxonomyListGenerator < Generator
    safe true
    priority :low

    def generate(site)
      return if FsmTaxonomyLists.disabled?

      articles = FsmTaxonomyLists.listed_articles(site)
      generate_all_articles(site, articles)
      generate_taxonomy_lists(site, articles)
    end

    private

    def generate_all_articles(site, articles)
      sorted = FsmTaxonomyLists.sort_articles(
        articles,
        sort_by: "published",
        descending: true
      )

      create_paginated_pages(
        site: site,
        base_dir: "all_articles",
        list_name: "all_articles",
        list_title: "All Articles",
        articles: sorted,
        extra_data: {}
      )
    end

    def generate_taxonomy_lists(site, articles)
      FsmTaxonomyLists::TAXONOMIES.each do |taxonomy|
        grouped = FsmTaxonomyLists.group_by_taxonomy(articles, taxonomy[:field])
        grouped.keys.sort.each do |term|
          term_articles = grouped[term]
          sorted = FsmTaxonomyLists.sort_articles(
            term_articles,
            sort_by: taxonomy[:sort_by],
            descending: taxonomy[:descending]
          )

          list_title = FsmTaxonomyLists.list_title_for(taxonomy[:key], term, term_articles)
          base_dir = File.join(taxonomy[:folder], term)

          extra_data = {}
          if taxonomy[:key] == "authors"
            info = FsmTaxonomyLists.author_info(site, term)
            photo = FsmTaxonomyLists.author_photo_path(site, term)
            bio = info["bio"].to_s.strip
            extra_data["list_description"] = bio unless bio.empty?
            extra_data["list_photo_url"] = photo if photo
          end

          create_paginated_pages(
            site: site,
            base_dir: base_dir,
            list_name: taxonomy[:key],
            list_title: list_title,
            articles: sorted,
            extra_data: extra_data
          )
        end
      end
    end

    def create_paginated_pages(site:, base_dir:, list_name:, list_title:, articles:, extra_data:)
      total_pages = [(articles.size.to_f / FsmTaxonomyLists::PER_PAGE).ceil, 1].max
      page_numbers = (1..total_pages).to_a

      page_numbers.each do |page_number|
        first = (page_number - 1) * FsmTaxonomyLists::PER_PAGE
        page_articles = articles.slice(first, FsmTaxonomyLists::PER_PAGE) || []

        pager_links = page_numbers.map do |n|
          {
            "page_number" => n,
            "page_url" => FsmTaxonomyLists.page_url(base_dir, n),
            "this_page" => n == page_number,
          }
        end

        title =
          if page_number == 1
            list_title
          else
            "#{list_title} (Page #{page_number})"
          end

        page_data = {
          "layout" => "generic",
          "title" => title,
          "list_title" => list_title,
          "list_name" => list_name,
          "elements_in_this_page" => page_articles,
          "current_page_number" => page_number,
          "total_pages" => total_pages,
          "prev_page_url" => (page_number > 1 ? FsmTaxonomyLists.page_url(base_dir, page_number - 1) : nil),
          "next_page_url" => (page_number < total_pages ? FsmTaxonomyLists.page_url(base_dir, page_number + 1) : nil),
          "pager_links" => pager_links,
        }.merge(extra_data)

        site.pages << FsmTaxonomyListPage.new(
          site,
          FsmTaxonomyLists.page_dir(base_dir, page_number),
          page_data
        )
      end
    end
  end
end
