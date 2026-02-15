# Port of Ryver FSM content transforms for Jekyll migration.
# Applies only to article source pages that are marked as listed.

module FsmContentTransforms
  FIGURE_IMAGE_TAGS = %w[IMAGE IMG IMG_CLEAR IMAGE_BIG].freeze
  PRIVATE_IMAGE_TAGS = %w[IMG_PRIVATE IMAGE_PRIVATE].freeze

  module_function

  def article_page?(doc)
    path =
      if doc.respond_to?(:relative_path) && doc.relative_path
        doc.relative_path
      elsif doc.respond_to?(:path) && doc.path
        doc.path
      else
        ""
      end

    normalized = path.tr("\\", "/")
    normalized.start_with?("articles/") && File.basename(normalized) == "index.md"
  end

  def listed?(doc)
    value = doc.data["listed"]
    return true if value == true
    return false unless value.is_a?(String)

    value.strip.casecmp("true").zero?
  end

  def summary_for(raw_content)
    base = transform(raw_content).split("<!--break-->").first.to_s
    stripped = base.gsub(%r{</?[^>]+(>|$)}, "")
    "#{stripped[0, 200]} ..."
  end

  # Preferred author-facing syntax is normalized into canonical FSM markers.
  # This keeps one rendering implementation while supporting both styles forever.
  def normalize_preferred_syntax(raw_content)
    content = raw_content.to_s

    # [[code]] ... [[/code]]
    content = content.gsub(/\[\[\s*code\s*\]\][ \t]*(?:\r?\n)([\s\S]*?)\[\[\s*\/code\s*\]\][ \t]*(?:\r?\n|$)/i) do
      code = Regexp.last_match(1)
      "=CODE_START=\n#{code}=CODE_END=\n"
    end

    # [[textbox:Title]] ... [[/textbox]]
    content = content.gsub(/\[\[\s*textbox\s*:(.*?)\s*\]\][ \t]*(?:\r?\n)([\s\S]*?)\[\[\s*\/textbox\s*\]\][ \t]*(?:\r?\n|$)/i) do
      heading = Regexp.last_match(1).to_s.strip
      body = Regexp.last_match(2)
      "=TEXTBOX_START=#{heading}=\n#{body}=TEXTBOX_END=\n"
    end

    # Image-family tags (all legacy image variants are supported).
    content = content.gsub(/\[\[\s*(image|img|img_clear|image_big|img_private|image_private)\s*:(.*?)\|(.*?)\s*\]\][ \t]*(?:\r?\n|$)/i) do
      tag = Regexp.last_match(1).to_s.upcase
      src = Regexp.last_match(2).to_s.strip
      caption = Regexp.last_match(3).to_s.strip
      "=#{tag}=#{src}=#{caption}=\n"
    end

    # [[table_caption:...]]
    content = content.gsub(/\[\[\s*table_caption\s*:(.*?)\s*\]\][ \t]*(?:\r?\n|$)/i) do
      caption = Regexp.last_match(1).to_s.strip
      "=TABLE_CAPTION=#{caption}=\n"
    end

    # [[zoom:...]]
    content = content.gsub(/\[\[\s*zoom\s*:(.*?)\s*\]\][ \t]*(?:\r?\n|$)/i) do
      caption = Regexp.last_match(1).to_s.strip
      "=ZOOM=#{caption}=\n"
    end

    # [[video:youtube:ID]] / [[video:blip:ID]]
    content = content.gsub(/\[\[\s*video\s*:\s*(youtube|blip)\s*:\s*(.*?)\s*\]\]/i) do
      provider = Regexp.last_match(1).to_s.upcase
      id = Regexp.last_match(2).to_s.strip
      "=VIDEO=#{provider}=#{id}="
    end

    # [[youtube:ID]] / [[blip:ID]]
    content = content.gsub(/\[\[\s*youtube\s*:(.*?)\s*\]\]/i) do
      id = Regexp.last_match(1).to_s.strip
      "=VIDEO=YOUTUBE=#{id}="
    end

    content.gsub(/\[\[\s*blip\s*:(.*?)\s*\]\]/i) do
      id = Regexp.last_match(1).to_s.strip
      "=VIDEO=BLIP=#{id}="
    end
  end

  # Legacy private-image markers exist in two forms:
  # - IMG_PRIVATE (documented family marker)
  # - IMAGE_PRIVATE (seen in historical source)
  # They may carry src only, src+caption, or src+width+height(+caption).
  def private_image_markup(payload)
    parts = payload.to_s.split("=", -1)
    parts.pop while parts.any? && parts.last.empty?

    src = parts.shift.to_s.strip
    return "" if src.empty?

    width = nil
    height = nil
    if parts.length >= 2 &&
       parts[0].to_s.strip.match?(/\A\d+\z/) &&
       parts[1].to_s.strip.match?(/\A\d+\z/)
      width = parts.shift.to_s.strip
      height = parts.shift.to_s.strip
    end

    caption = parts.join("=").strip
    size_attrs = +""
    size_attrs << %( width="#{width}") if width && !width.empty?
    size_attrs << %( height="#{height}") if height && !height.empty?

    image_tag = %(<img class="figure-img img-fluid rounded" src="#{src}"#{size_attrs}>)

    return image_tag if caption.empty?

    "\n\n<figure class=\"figure\">\n#{image_tag}\n<figcaption class=\"figure-caption\">#{caption}</figcaption>\n</figure>\n\n"
  end

  def transform(raw_content)
    content = normalize_preferred_syntax(raw_content)
    # Normalize legacy uppercase hex entity notation to avoid markdown escaping.
    content = content.gsub(/&#X([0-9A-Fa-f]+);/, '&#x\1;')

    # CODE_START / CODE_END -> markdown code block via 4-space indentation.
    content = content.gsub(/=CODE_START=[\r\n]+([\s\S]*?)=CODE_END=[ \t]*(?:[\r\n]+|$)/) do
      code = Regexp.last_match(1)
      "\n\n#{code.gsub(/^/, '    ')}\n\n"
    end

    # TEXTBOX_START / TEXTBOX_END -> boxed HTML block.
    content = content.gsub(/=TEXTBOX_START=(.*?)=[\r\n]+([\s\S]*?)=TEXTBOX_END=[ \t]*(?:[\r\n]+|$)/) do
      heading = Regexp.last_match(1)
      body = Regexp.last_match(2)
      "\n\n<div class=\"TEXTBOX\">\n<h2>\n\n#{heading}\n\n</h2>\n<div class=\"textbox-contents\" markdown=\"1\">\n\n#{body}\n\n</div>\n</div>\n\n"
    end

    # Legacy private image tags (including IMAGE_PRIVATE alias from source).
    content = content.gsub(/=(#{PRIVATE_IMAGE_TAGS.join('|')})=([^\r\n]*)([ \t]*(?:\r?\n|$))/) do
      markup = private_image_markup(Regexp.last_match(2))
      "#{markup}#{Regexp.last_match(3)}"
    end

    # Legacy FSM figure image tags.
    # Supports both one-line captions and multiline captions, as long as the
    # closing '=' is followed by end-of-line or end-of-file.
    content = content.gsub(/=(#{FIGURE_IMAGE_TAGS.join('|')})=([^=\r\n]+)=([\s\S]*?)=[ \t]*(?:\r?\n|$)/) do
      src = Regexp.last_match(2)
      caption = Regexp.last_match(3).to_s.strip
      "\n\n<figure class=\"figure\">\n<img class=\"figure-img img-fluid rounded\" src=\"#{src}\">\n<figcaption class=\"figure-caption\">#{caption}</figcaption>\n</figure>\n\n"
    end

    # TABLE_CAPTION.
    content = content.gsub(/=TABLE_CAPTION=(.*?)=[ \t]*(?:[\r\n]+|$)/) do
      caption = Regexp.last_match(1)
      "\n\n<div class=\"table-caption\">\n\n#{caption}\n\n</div>\n\n"
    end

    # ZOOM pull-quote.
    content = content.gsub(/=ZOOM=(.*?)=[ \t]*(?:[\r\n]+|$)/) do
      caption = Regexp.last_match(1)
      "\n\n<blockquote class=\"blockquote\">\n<p class=\"mb-0\">#{caption}</p>\n</blockquote>\n\n"
    end

    # Embedded videos.
    content = content.gsub(/=VIDEO=YOUTUBE=(.*?)=/) do
      id = Regexp.last_match(1)
      "\n\n<div class=\"embed-responsive embed-responsive-16by9\">\n<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/#{id}?ecver=2\" allowfullscreen>\n</iframe></div>\n\n"
    end

    content.gsub(/=VIDEO=BLIP=(.*?)=/) do
      id = Regexp.last_match(1)
      "\n\n<div class=\"embed-responsive embed-responsive-16by9\">\n<embed class=\"embed-responsive-item\" src=\"http://blip.tv/play/#{id}\" type=\"application/x-shockwave-flash\" allowscriptaccess=\"always\" allowfullscreen />\n</div>\n\n"
    end
  end
end

Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  next unless FsmContentTransforms.article_page?(doc)
  next unless FsmContentTransforms.listed?(doc)

  raw = doc.content.to_s
  doc.data["summary"] = FsmContentTransforms.summary_for(raw)
  doc.content = FsmContentTransforms.transform(raw)
end
