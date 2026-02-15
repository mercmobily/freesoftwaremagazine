# Add A New Article

This repository stores each article as:

- `articles/<slug>/index.md`

Use lowercase, hyphen/underscore-friendly slugs (no spaces).

## 1) Create the article file

Create a new folder and file:

```bash
mkdir -p articles/my_new_article_slug
```

Create `articles/my_new_article_slug/index.md` with this template:

```markdown
---
nid: '999999'
title: 'My Article Title'
authors: 'Author Name'
published: '2026-02-14 10:00:00'
tags: 'tag1,tag2,tag3'
license: verbatim_only
section: opinions
listed: 'true'
layout: article
---

Your intro/summary paragraph goes here.
<!--break-->

Rest of the article body...
```

## 2) Front matter rules

- `nid`: must be unique across all articles.
- `title`: article title.
- `authors`: comma-separated if multiple.
- `published`: `YYYY-MM-DD HH:MM:SS`.
- `tags`: comma-separated.
- `license`: one of existing licenses used in repo (for example `verbatim_only`, `cc-by`, `cc-by-sa`, etc.).
- `section`: one of:
  - `announcements`
  - `end_users`
  - `games`
  - `hacking`
  - `humour`
  - `interviews`
  - `opinions`
  - `reviews`
- `listed`: set to `'true'` to include in lists/rss/sitemaps.
- `layout`: normally `article` (use `book` only for book-chapter style pages).

Optional fields commonly used:

- `main_image`: image filename inside the same article folder.
- `issue`: like `issue_21`.
- `book`: book slug if part of a book.
- `book_weight`: numeric ordering value for book lists.

## 3) FSM tags and preferred syntax

Transformation is done by `_plugins/fsm_content_transforms.rb` before Markdown
rendering. Both syntaxes below are supported forever:

- **Preferred syntax** (new; easier for authors)
- **Classic FSM syntax** (existing/canonical compatibility syntax)

For all new articles, use the **preferred syntax**.

### 3.1 Preferred syntax (recommended for new articles)

#### Code blocks

```text
[[code]]
your code here
[[/code]]
```

#### Textboxes

```text
[[textbox:My Textbox Title]]
Textbox body here.
Can include normal Markdown.
[[/textbox]]
```

#### Images / figures (all variants covered)

The following preferred directives map to the corresponding existing FSM image tags:

- `[[image:src|caption]]` -> `IMAGE`
- `[[img:src|caption]]` -> `IMG`
- `[[img_clear:src|caption]]` -> `IMG_CLEAR`
- `[[image_big:src|caption]]` -> `IMAGE_BIG`
- `[[img_private:src|caption]]` -> `IMG_PRIVATE`
- `[[image_private:src|caption]]` -> `IMAGE_PRIVATE` (legacy alias accepted)

Example:

```text
[[img:figure1.jpg|Figure 1: Example caption]]
```

#### Table caption

```text
[[table_caption:Table 1: My caption]]
```

#### Zoom quote

```text
[[zoom:An important highlighted sentence]]
```

#### Videos

Short forms:

```text
[[youtube:VIDEO_ID]]
[[blip:BLIP_ID]]
```

Explicit provider forms:

```text
[[video:youtube:VIDEO_ID]]
[[video:blip:BLIP_ID]]
```

### 3.2 Classic FSM syntax (still fully supported)

#### Code blocks

```text
=CODE_START=
your code here
=CODE_END=
```

#### Textboxes

```text
=TEXTBOX_START=My Textbox Title=
Textbox body here.
=TEXTBOX_END=
```

#### Images / figures

All of these are valid and still supported:

- `=IMAGE=src=caption=`
- `=IMG=src=caption=`
- `=IMG_CLEAR=src=caption=`
- `=IMAGE_BIG=src=caption=`
- `=IMG_PRIVATE=src=caption=`
- `=IMAGE_PRIVATE=...=` (legacy source alias; several historical forms are accepted)

#### Table caption

```text
=TABLE_CAPTION=Table 1: My caption=
```

#### Zoom quote

```text
=ZOOM=An important highlighted sentence=
```

#### Videos

```text
=VIDEO=YOUTUBE=VIDEO_ID=
=VIDEO=BLIP=BLIP_ID=
```

### 3.3 Rendering notes (applies to both syntaxes)

- `IMAGE`, `IMG`, `IMG_CLEAR`, and `IMAGE_BIG` render as `<figure>` with `<figcaption>`.
- `IMG_PRIVATE` and `IMAGE_PRIVATE` support historical forms:
  - `=...=src=caption=` -> figure with caption
  - `=...=src=width=height==` -> `<img ... width="..." height="...">`
  - `=...=src====` -> plain `<img ...>`
- For images, `src` should usually be a file in the same article folder (for example `figure1.jpg`).
- Captions are trimmed.
- Use line breaks exactly for block forms (`code`, `textbox`) as shown above.
- Custom blocks are inserted as HTML and then continue through normal Markdown processing.

## 4) Validate locally

Run:

```bash
bundle exec jekyll build
bundle exec ruby legacy/migration/scripts/validate_fsm_transforms.rb
bundle exec ruby legacy/migration/scripts/validate_site_integrity.rb
```

Optional Ryver-vs-Jekyll article comparison (when `_site_orig/` exists):

```bash
bundle exec jekyll build -d legacy/_site_jekyll
bundle exec ruby legacy/migration/scripts/compare_ryver_jekyll_articles.rb --orig-root legacy/_site_orig --new-root legacy/_site_jekyll
```

Optional duplicate `nid` check:

```bash
bundle exec ruby -ryaml -e '
by_nid=Hash.new{|h,k|h[k]=[]}
Dir.glob("articles/*/index.md").sort.each do |path|
  txt=File.read(path)
  next unless txt =~ /\A---\s*\n(.*?)\n---\s*\n/m
  d=YAML.safe_load($1, aliases:true) || {}
  nid=d["nid"].to_s.strip
  by_nid[nid] << path unless nid.empty?
end
by_nid.select{|_,v| v.size>1}.each{|nid,paths| puts "nid=#{nid}\n  #{paths.join("\n  ")}"}
'
```

## 5) Preview locally

```bash
bundle exec jekyll serve --livereload
```

Then open:

- `http://127.0.0.1:4000/articles/my_new_article_slug/`

## 6) PR workflow (required)

- Create/update articles via Pull Request (no direct pushes to protected branch).
- CI must pass before merge:
  - `bundle exec jekyll build`
  - `bundle exec ruby legacy/migration/scripts/validate_fsm_transforms.rb`
  - `bundle exec ruby legacy/migration/scripts/validate_site_integrity.rb`
