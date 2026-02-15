# Add An Article

This guide is for authors submitting an article via Pull Request.

## Quick Start (Do This)

### 1) Create your article file

Pick a slug and create:

- `articles/<slug>/index.md`

Example:

```bash
mkdir -p articles/my_new_article_slug
```

Put this in `articles/my_new_article_slug/index.md`:

```markdown
---
title: 'My Article Title'
authors: 'Author Name'
tags: 'tag1,tag2,tag3'
layout: article
# Optional (defaults apply if omitted):
# published: '2026-02-15 10:00:00'
# listed: 'true'
# license: verbatim_only
# section: opinions
# main_image: hero.jpg
---

Opening paragraph that summarizes the article.
<!--break-->

Rest of the article...
```

### 2) Add images/files (if any)

Put article assets in the same folder as the article file, for example:

- `articles/my_new_article_slug/hero.jpg`
- `articles/my_new_article_slug/figure1.png`

### 3) Write content using preferred FSM syntax

Use these forms in article body:

- Code block:

```text
[[code]]
your code here
[[/code]]
```

- Textbox:

```text
[[textbox:My Textbox Title]]
Textbox content.
[[/textbox]]
```

- Image:

```text
[[img:figure1.png|Figure 1: Caption]]
```

- Table caption:

```text
[[table_caption:Table 1: Caption]]
```

- Zoom quote:

```text
[[zoom:A highlighted sentence]]
```

- Video:

```text
[[youtube:VIDEO_ID]]
[[video:youtube:VIDEO_ID]]
```

### 4) Validate locally

Run:

```bash
bundle exec jekyll build
bundle exec ruby scripts/validate_fsm_transforms.rb
bundle exec ruby scripts/validate_site_integrity.rb
```

### 5) Submit PR

- Commit your changes on your branch.
- Open a Pull Request.
- Wait for CI to pass.

## Reference

### A) Front matter fields

| Field | Required | Default | Notes |
|---|---|---|---|
| `title` | Yes | - | Article title. |
| `authors` | Yes | - | Comma-separated if multiple authors. |
| `published` | No | auto | If omitted, it is auto-filled. Set manually only when you need a specific publication date/time. |
| `tags` | Yes | - | Comma-separated tags. |
| `layout` | No | `article` | Use `book` only for book-chapter style pages. |
| `listed` | No | `'true'` | Set `'false'` to keep out of lists/RSS/sitemaps. |
| `license` | No | `verbatim_only` | Must be one of allowed license values below. |
| `section` | No | `opinions` | Must be one of allowed section values below. |
| `main_image` | No | - | Image file in same article folder. |
| `issue` | No | - | Example: `issue_21`. |
| `book` | No | - | Book slug if article is in a book. |
| `book_weight` | No | - | Numeric ordering value for book lists. |
| `nid` | No (legacy) | - | Old numeric ID for legacy redirects/shortlinks. Leave unset for new articles. |

`published` auto-fill order when omitted:

1. `date` front matter (if present)
2. file timestamp of `articles/<slug>/index.md`

Allowed `license` values:

- `verbatim_only`
- `cc-by`
- `cc-by-nc`
- `cc-by-nc-nd`
- `cc-by-nc-sa`
- `cc-by-nd`
- `cc-by-sa`
- `gfdl`
- `gpl`
- `other`

Allowed `section` values:

- `announcements`
- `end_users`
- `games`
- `hacking`
- `humour`
- `interviews`
- `opinions`
- `reviews`

### B) FSM syntax reference

Preferred syntax is recommended for new writing. Classic FSM syntax is still fully supported.

Preferred directives:

- `[[code]] ... [[/code]]`
- `[[textbox:Title]] ... [[/textbox]]`
- `[[image:src|caption]]`
- `[[img:src|caption]]`
- `[[img_clear:src|caption]]`
- `[[image_big:src|caption]]`
- `[[img_private:src|caption]]`
- `[[image_private:src|caption]]`
- `[[table_caption:Caption]]`
- `[[zoom:Quote]]`
- `[[youtube:VIDEO_ID]]`
- `[[blip:BLIP_ID]]`
- `[[video:youtube:VIDEO_ID]]`
- `[[video:blip:BLIP_ID]]`

Classic FSM forms:

- `=CODE_START= ... =CODE_END=`
- `=TEXTBOX_START=Title= ... =TEXTBOX_END=`
- `=IMAGE=src=caption=`
- `=IMG=src=caption=`
- `=IMG_CLEAR=src=caption=`
- `=IMAGE_BIG=src=caption=`
- `=IMG_PRIVATE=src=caption=`
- `=IMAGE_PRIVATE=...=`
- `=TABLE_CAPTION=Caption=`
- `=ZOOM=Quote=`
- `=VIDEO=YOUTUBE=VIDEO_ID=`
- `=VIDEO=BLIP=BLIP_ID=`

Notes:

- `IMAGE`, `IMG`, `IMG_CLEAR`, `IMAGE_BIG` render as `<figure>` with caption.
- `IMG_PRIVATE` and `IMAGE_PRIVATE` support historical forms:
  - `=...=src=caption=` -> figure with caption
  - `=...=src=width=height==` -> `<img ... width="..." height="...">`
  - `=...=src====` -> plain `<img ...>`

### C) Utility commands

Optional duplicate legacy `nid` check (only if editing/adding `nid`):

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

Optional Ryver-vs-Jekyll article comparison (migration/debug only):

```bash
bundle exec jekyll build -d legacy/_site_jekyll
bundle exec ruby legacy/migration/scripts/compare_ryver_jekyll_articles.rb --orig-root legacy/_site_orig --new-root legacy/_site_jekyll
```
