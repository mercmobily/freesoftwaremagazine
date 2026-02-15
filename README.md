# Free Software Magazine

This repository is the full, large archive of Free Software Magazine articles and site content.

- Articles live in `articles/<slug>/index.md`
- Content is written in Markdown with FSM directives (for example image/textbox/table caption/zoom/video helpers)
- The site is rendered as a static website with Jekyll

## Local setup

Prerequisites:

- Ruby + Bundler
- Node.js + npm

Install dependencies:

```bash
bundle install
```

## Author workflow

```bash
# Fast, single-article check
npm run check:article -- my_new_article_slug

# Preview one article in browser (fast mode; skips taxonomy/list generation)
npm run preview:article -- my_new_article_slug

# Full repository check before PR
npm run check
```

## Output

- Generated site output goes to `_site/`

## Writing guide

- See `ADD_ARTICLE_GUIDE.md` for article format, metadata rules, preferred syntax, validation, and PR steps.
