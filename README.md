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

# Full-site preview in browser
npm run preview

# Article-only fast preview (slug passed)
npm run preview -- my_new_article_slug

# Full-site preview without LiveReload
npm run preview:no-live

# Article-only fast preview without LiveReload
npm run preview:no-live -- my_new_article_slug

# Full repository check before PR
npm run check
```

## Output

- Generated site output goes to `_site/`

## Writing guide

- See `ADD_ARTICLE_GUIDE.md` for article format, metadata rules, preferred syntax, validation, and PR steps.
