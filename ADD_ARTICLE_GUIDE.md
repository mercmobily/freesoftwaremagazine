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
main_image: hero.jpg
# Optional (defaults apply if omitted):
# published: '2026-02-15 10:00:00'
# listed: 'true'
# license: verbatim_only
# section: opinions
---

Opening paragraph that summarizes the article. Something punchy!
<!--break-->

Rest of the article...
```

Allowed `license` values: `verbatim_only`, `cc-by`, `cc-by-nc`, `cc-by-nc-nd`, `cc-by-nc-sa`, `cc-by-nd`, `cc-by-sa`, `gfdl`, `gpl`, `other`

Allowed `section` values:  `announcements`, `end_users`, `games`, `hacking`, `humour`, `interviews`, `opinions`, `reviews`

### 2) Add images/files

Put article assets in the same folder as the article file, for example:

- `articles/my_new_article_slug/hero.jpg`
- `articles/my_new_article_slug/figure1.png`

`main_image` is required for new articles and must point to a file included in the PR.

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
[[image:figure1.png|Figure 1: Caption]]
```

- Table (with caption + table body):

```text
[[table_caption:Table 1: Package comparison]]

| Package | License | Notes |
|---|---|---|
| `gcc` | GPL | Compiler toolchain |
| `nginx` | BSD-2-Clause | Web server |
| `git` | GPLv2 | Version control |
```

- Zoom quote:

```text
[[zoom:A highlighted sentence]]
```

- Video:

```text
[[video:youtube:VIDEO_ID]]
```

### 4) Validate locally

Run:

```bash
# Fast check for one article while writing:
npm run check:article -- my_new_article_slug

# Full project check before opening PR:
npm run check
```

### 5) Preview in browser

Run:

```bash
# Open one article directly (starts Jekyll + opens browser):
npm run preview:article -- my_new_article_slug
```

Note: `preview:article` runs in fast author mode: Incremental rebuild is enabled, and  taxonomy/list pages (`/tags`, `/authors`, `/sections`, `/all_articles`, etc.) are skipped during this preview session. However, your article page preview is unaffected.

```bash
bundle exec jekyll serve --livereload
```

With this command, your article should appear on your local site.

### 6) Submit PR

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
| `main_image` | Yes (new articles) | - | Image file in same article folder and included in PR. |
| `issue` | No | - | Example: `issue_21`. |
| `book` | No | - | Book slug if article is in a book. |
| `book_weight` | No | - | Numeric ordering value for book lists. |
| `nid` | No (legacy) | - | Old numeric ID for legacy redirects/shortlinks. Leave unset for new articles. |

`published` auto-fill order when omitted:

1. `date` front matter (if present)
2. file timestamp of `articles/<slug>/index.md`


### B) Syntax reference

Preferred syntax is recommended for new writing. Classic FSM syntax is still fully supported.

Preferred directives:

- `[[code]] ... [[/code]]`
- `[[textbox:Title]] ... [[/textbox]]`
- `[[image:src|caption]]`
- `[[table_caption:Caption]]`
- `[[zoom:Quote]]`
- `[[video:youtube:VIDEO_ID]]`
