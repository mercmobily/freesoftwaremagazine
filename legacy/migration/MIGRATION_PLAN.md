# Jekyll Migration Plan

Last updated: 2026-02-15

## Objective
Port the Free Software Magazine repository from Ryver to Jekyll in testable phases, while keeping the existing Ryver source/build flow intact until parity is reached.

## Phase Status

- [x] Phase 1: Jekyll bootstrap/config + baseline build verification
- [x] Phase 2: Port FSM content transforms (`=IMAGE=`, `=ZOOM=`, `=CODE_START=`, etc.)
- [x] Phase 3: Replace EJS templates with Liquid templates/includes
- [x] Phase 4: Recreate taxonomy/list generation + pagination
- [x] Phase 5: Migration parity and validation hardening
- [x] Phase 6: GitHub Actions CI + Pages deployment + production runbook

## Post-Phase Input Cleanup (In Progress)

Goal: remove dependence on compatibility shims by fixing source content manually, file-by-file.

Completed in this pass:

- Manually fixed malformed/ambiguous inline patterns in article sources (no mass regexp replacements):
  - intraword underscore patterns (`I_thought_`-style) cleaned up
  - spaced-link syntax (`[label] (url)`) cleaned up
  - spaced numeric-parenthetical forms (`[n] (description)`) rewritten into normal prose
  - heading-id markdown artifact (`# Heading {#id}`) removed from source
- Manually cleaned selected raw angle-bracket literals in prose by converting to code spans where appropriate.
- Corrected malformed table-row content in:
  - `articles/free_software_tools_for_designing_productive_community_sites/index.md`
- Tightened the compatibility transform to avoid matching valid numeric links:
  - `_plugins/fsm_content_transforms.rb`
  - changed numeric-ref flattening from `\s*` to `\s+` so only legacy spaced form is handled.
- Converted all legacy bibliography input lines of the form `[n] [label](url)` to standard ordered-list entries (`n. [label](url)`) manually across all affected articles.
- Removed now-obsolete compatibility shims from `_plugins/fsm_content_transforms.rb` for:
  - bibliography URL-label quirk
  - intraword underscore rewrite
  - numeric-ref flattening
  - spaced-link normalization
  - heading-id stripping
- Additional manual source fixes in this pass:
  - `articles/spam_prevention_exim_and_greylistd_part_2_managing_greylistd/index.md`
    - converted `*[ACL]: ...`/`*[SMTP]: ...`/`*[MRTG]: ...`/`*[DNSBL]: ...` abbreviation syntax into explicit glossary text so it renders visibly under Jekyll.
  - `articles/checking_website_incorrect_links/index.md`
    - converted literal HTML snippets in prose to code spans so examples render as text, not live links/tags.
  - `articles/save_time_awk_print/index.md`
    - wrapped additional XML/KML literal snippets and output examples in code formatting.
  - `articles/from_java_to_mozilla/index.md`
    - fixed malformed bold markup (`**jsshell **[12]` -> `**jsshell** [12]`).
  - `articles/my_opendiameter_experience_part_i_build_and_installation/index.md`
    - escaped include examples (`<sys/time.h>`, `<time.h>`) to prevent tag parsing loss.

Current parity snapshot (Ryver `_site_orig` vs Jekyll `_site_jekyll`):

- `article_text_equal_alnum=1871/1971 (94.93%)`
- `article_text_diff_even_alnum=100`
- `effective_mismatch_excluding_legacy_marker_fixes=63`

Note on parity shift:

- The drop is expected after removing Ryver-specific bibliography rendering quirks.
- Source content is now cleaner and standards-compliant; the comparator currently treats these intentional bibliography improvements as text mismatches against historical Ryver output.

Remaining major cleanup bucket:

- Additional legacy article-level formatting quirks outside the removed shim set (tracked via side-by-side comparison samples).

## Phase 6 Completed

### 1) CI on every PR

Added `.github/workflows/ci.yml`:

- triggers on pull requests to `master` and `main`
- runs:
  - `bundle exec jekyll build`
  - `bundle exec ruby scripts/validate_fsm_transforms.rb`
  - `bundle exec ruby legacy/migration/scripts/validate_site_integrity.rb`

### 2) Deploy built artifact to GitHub Pages

Added `.github/workflows/deploy-pages.yml`:

- triggers on pushes to `master` and `main` (and manual dispatch)
- runs same build + validation steps
- uploads `_site` with `actions/upload-pages-artifact`
- deploys with `actions/deploy-pages`

### 3) Domain/CNAME/DNS/HTTPS runbook

- Added root `CNAME` file:
  - `CNAME` -> `freesoftwaremagazine.com`
- Added `docs/GITHUB_PAGES_SETUP.md` with:
  - GitHub Pages source configuration
  - custom domain and HTTPS steps
  - apex + `www` DNS records
  - HTTPS/redirect verification commands
  - domain ownership verification steps

### 4) Branch protection + PR-only workflow guidance

Documented in `docs/GITHUB_PAGES_SETUP.md`:

- enable branch protection on default branch
- require PR before merge
- require CI checks to pass before merge
- PR-only article additions and edits

### 5) Docs tidy and author-guide alignment

- Updated `README.md` with current Jekyll/CI validation commands and links to ops docs.
- Updated `ADD_ARTICLE_GUIDE.md`:
  - explicitly marks preferred syntax as required for new content
  - adds PR workflow section with required CI checks.

## Phase 1 Completed

### 1) Added Jekyll scaffolding

- Added `Gemfile` with:
  - `jekyll ~> 4.4.1`
  - `webrick ~> 1.9`
- Added `_config.yml` for Jekyll bootstrap:
  - basic site metadata
  - `markdown: kramdown`
  - `permalink: pretty`
  - `defaults` to set `render_with_liquid: false` for:
    - `articles/**`
    - `pages/**`

Reason: many article/page bodies contain legacy or non-Liquid syntax, so Liquid rendering must be disabled during early migration to keep builds stable.

### 2) Installed dependencies locally

Installed gems into repo-local path (not system Ruby):

```bash
bundle config set --local path vendor/bundle
bundle install
```

Also updated `.gitignore` to exclude local bundler artifacts:

- `vendor`
- `.bundle`

### 3) Verified baseline Jekyll build

Command used:

```bash
bundle exec jekyll build
```

Result:

- Build succeeds (`exit code 0`)
- No front matter parse failures
- Output directory generated at `_site/`

### 4) Verified content counts in generated output

Checks run:

```bash
find articles -name index.md | wc -l
find pages -name index.md | wc -l
find _site/articles -mindepth 2 -maxdepth 2 -name index.html | wc -l
find _site/pages -mindepth 2 -maxdepth 2 -name index.html | wc -l
```

Observed counts:

- Source articles: `1971`
- Source pages: `25`
- Generated article pages: `1971`
- Generated pages: `25`

Key output files confirmed:

- `_site/index.html`
- `_site/rss.xml`
- `_site/sitemap.xml`
- `_site/sitemap_news.xml`

## Known Phase 1 Warnings (Non-blocking)

Jekyll warns that layouts `home.html` and `book.html` are missing. In this repository those are symlinks in `_layouts/` used by the Ryver setup. This is expected at bootstrap stage and will be addressed during template migration (Phase 3).

## Phase 2 Completed

### 1) Added Stage 2 plugin

Implemented `_plugins/fsm_content_transforms.rb` using Jekyll `pre_render` hooks for `:pages` and `:documents`.

Scope:

- only `articles/*/index.md`
- only when front matter has `listed: true`

Behavior ported from Ryver:

- summary generation
- legacy content markers:
  - `=CODE_START= ... =CODE_END=`
  - `=TEXTBOX_START= ... =TEXTBOX_END=`
  - `=IMAGE=/=IMG=/=IMG_CLEAR=/=IMAGE_BIG=/=IMG_PRIVATE=/=IMAGE_PRIVATE=`
  - `=TABLE_CAPTION=`
  - `=ZOOM=`
  - `=VIDEO=YOUTUBE=` and `=VIDEO=BLIP=`

### 2) Summary parity checks

Validation script run:

```bash
bundle exec ruby -e "..." # full-site process + summary count
```

Observed:

- `articles=1971`
- `summaries=1971`

Sample summary (article `microsoft_the_copyright_infringer`) is populated in `page.data["summary"]`.

### 3) Marker conversion checks

Validation run:

```bash
rg -n "=CODE_START=|=TEXTBOX_START=|=IMAGE=|=IMG=|=IMG_CLEAR=|=IMAGE_BIG=|=IMG_PRIVATE=|=IMAGE_PRIVATE=|=TABLE_CAPTION=|=ZOOM=|=VIDEO=" _site/articles
```

Observed:

- residual raw markers in generated articles: `0`

Spot checks confirm converted HTML output appears as expected:

- `<figure class="figure">...`
- `<blockquote class="blockquote">...`
- `<div class="table-caption">...`
- `<div class="TEXTBOX">...`

### 4) Stage 2 build status

`bundle exec jekyll build` succeeds (`exit code 0`) with the same known layout warnings from Phase 1 (`home.html` and `book.html` aliases), which are deferred to Phase 3 template migration.

## Phase 3 Completed

### 1) Converted layout/include stack from EJS to Liquid

Added Liquid includes:

- `_includes/layout_head.html`
- `_includes/layout_foot.html`
- `_includes/navbar.html`
- `_includes/navbar_logo.html`
- `_includes/article_card.html`
- `_includes/book_card.html`
- `_includes/issue_card.html`
- `_includes/license_text.html`
- `_includes/article_section.html`

Updated layouts:

- `_layouts/article.html` converted from EJS to Liquid
- `_layouts/generic.html` converted from EJS to Liquid
- `_layouts/home.html` now concrete layout wrapper (`layout: generic`)
- `_layouts/book.html` now concrete layout wrapper (`layout: article`)

### 2) Converted top-level pages/templates

- `index.html` converted from EJS list rendering to Liquid loops/includes
- `books/index.html` converted to Liquid include usage
- `issues/index.html` converted to Liquid include usage
- `sections/index.html` converted to Liquid page
- `rss.xml` converted to Liquid feed template
- `sitemap.xml` converted to Liquid
- `sitemap_news.xml` converted to Liquid

### 3) Front matter/layout compatibility updates

- Replaced `layout: book.html` with `layout: book` in article files that explicitly use the book layout
- Replaced root `layout: home.html` with `layout: home`
- Updated `_config.yml` defaults:
  - `articles/**`: `layout: article`, `render_with_liquid: false`
  - `pages/**`: `layout: generic`, `render_with_liquid: false`

### 4) Stage 3 verification

Commands run:

```bash
bundle exec jekyll build
find _site/articles -mindepth 2 -maxdepth 2 -name index.html | wc -l
find _site/pages -mindepth 2 -maxdepth 2 -name index.html | wc -l
rg -n "<%|%>" _site/index.html _site/books/index.html _site/issues/index.html _site/sections/index.html _site/rss.xml _site/sitemap.xml _site/sitemap_news.xml
```

Observed:

- Build succeeds (`exit code 0`) with no layout missing warnings
- Generated article pages: `1971`
- Generated pages under `/pages/`: `25`
- No raw EJS tags in checked generated outputs

Spot checks:

- Article metadata links/tags render correctly in `_site/articles/microsoft_the_copyright_infringer/index.html`
- Homepage card sections render with readable labels (e.g. `end users`) and correct section URLs
- RSS feed now renders `<pubDate>` tags correctly

## Phase 4 Completed

### 1) Added Stage 4 generator plugin

Implemented `_plugins/fsm_taxonomy_lists.rb` to generate paginated list pages during Jekyll build for:

- all articles:
  - `/all_articles/`
  - `/all_articles/page_N/`
- taxonomy list pages:
  - `/tags/<term>/[page_N/]`
  - `/sections/<term>/[page_N/]`
  - `/authors/<term>/[page_N/]`
  - `/licenses/<term>/[page_N/]`
  - `/issues/<term>/[page_N/]`
  - `/books/<term>/[page_N/]`

Rules ported from Ryver config (`_config.yaml`):

- `perPage: 20`
- generated page naming style: `index` + `page_N`
- list sorting:
  - `published`-based lists sorted newest-first
  - `book` lists sorted by `book_weight` ascending (matching `sortReversed: true` behavior in original Ryver config)

Scope filter:

- only `articles/*/index.md`
- only `listed: true`

### 2) Added shared Liquid list renderer

Added `_includes/paginated_article_list.html`:

- renders article cards via existing `article_card.html`
- renders optional list heading/description/photo (author pages use `authors/<name>/_info.yaml` and optional `photo.*`)
- renders full pagination controls (`prev`, page numbers, `next`)

Generated list pages use:

- `layout: generic`
- include-based content rendering for consistency with Stage 3 templates

### 3) Stage 4 verification

Build:

```bash
bundle exec jekyll build
```

Build status:

- succeeds (`exit code 0`)

List/pagination spot checks:

- `_site/all_articles/index.html` and `_site/all_articles/page_2/index.html`
- `_site/tags/gnu/linux/index.html`
- `_site/authors/Tony Mobily/index.html`
- `_site/issues/issue_21/index.html` and `/page_2/`
- `_site/books/making_free_movies_with_free_software/index.html` and `/page_2/`
- `_site/sections/end_users/index.html`

Pagination URL checks:

- validated percent-encoding for author names in pager URLs (e.g. `Tony%20Mobily`)
- validated nested tag paths (e.g. `/tags/gnu/linux/`)

Generated page count checks (taxonomy pages + pagination):

- `all_articles`: `99`
- `tags`: `1964`
- `authors`: `243`
- `licenses`: `105`
- taxonomy-generated `sections`: `99` (`100` in `_site/sections` including manual `sections/index.html`)
- taxonomy-generated `issues`: `25` (`26` in `_site/issues` including manual `issues/index.html`)
- taxonomy-generated `books`: `7` (`8` in `_site/books` including manual `books/index.html`)

## Phase 5 Completed

### 1) Added legacy NID redirect parity

Implemented `_plugins/fsm_legacy_nid_redirects.rb` to recreate Ryver-style legacy redirects:

- generates `/<nid>/index.html` for article sources with `nid`
- target URL format matches Ryver behavior:
  - `http://freesoftwaremagazine.com/articles/<article-slug>`
- redirect page body includes:
  - HTML meta refresh
  - fallback clickable link

Notes:

- Redirects are generated from article pages only (same scope as Ryver plugin)
- Source has one duplicate `nid` (`2771`), so output has `1970` redirect pages for `1971` article files

### 2) Completed RSS/sitemap parity checks

Confirmed generated XML artifacts match expected list semantics:

- `_site/rss.xml`
  - 50 items (latest listed articles)
  - `<pubDate>` present for each item
  - no legacy `<putDate>` tags
- `_site/sitemap.xml`
  - contains root + all listed articles
- `_site/sitemap_news.xml`
  - contains latest 50 listed articles

### 3) Added repeatable output-diff validation script

Added `legacy/migration/scripts/validate_site_integrity.rb` to run metadata-to-output integrity checks.

Validation covers:

- article/page output counts
- redirect count parity (`nid`-based)
- RSS and sitemap expected counts and first-item recency check
- taxonomy/pagination page counts against source metadata
- pagination link integrity (checks generated links resolve to generated files)
- residual FSM marker checks in rendered article output (legacy and preferred syntax)

Edge compatibility:

- Added `_config.yml` include entry for hidden tag path:
  - `tags/.net`
  - ensures the `.net` tag page is published and parity counts stay accurate

### 4) Phase 5 verification commands

```bash
bundle exec jekyll build
bundle exec ruby legacy/migration/scripts/validate_fsm_transforms.rb
bundle exec ruby legacy/migration/scripts/validate_site_integrity.rb
```

### 5) Added repeatable Ryver-vs-Jekyll article comparator

Added `scripts/compare_ryver_jekyll_articles.rb` for side-by-side article comparison against a Ryver baseline build.

Usage:

```bash
bundle exec jekyll build -d _site_jekyll
bundle exec ruby scripts/compare_ryver_jekyll_articles.rb --orig-root _site_orig --new-root _site_jekyll
```

Current comparison snapshot with `_site_orig` baseline:

- article sets: identical (`1971`/`1971`; no missing/extra)
- article text parity (alnum-normalized): `1871 / 1971` (`94.93%`)
- effective mismatch excluding legacy marker bug-fix pages: `63`
- intentional legacy marker fixes detected in Ryver baseline: `37`
- note: the residual mismatch set is now dominated by intentional source cleanup differences (especially bibliography/citation rendering and literal-markup examples that Ryver historically rendered differently).

Observed:

- Build succeeds (`exit code 0`)
- Validation script passes all checks

## Legacy Cleanup Completed

Moved Ryver-only implementation/config files into `legacy/ryver/` so they do not pollute the active Jekyll repo:

- `_assets/`
- `_config.yaml`
- `_templates/`
- `_plugins/ryver-fsm/`
- legacy EJS includes from `_includes/*.ejs`
- `examplePlugin.js`
- `gulpfile.js`
- `package.json`
- Ryver control metadata files:
  - `all_articles/_info.yaml`
  - `articles/_info.yaml`
  - `authors/_info.yaml`
  - `books/_info.yaml`
  - `issues/_info.yaml`
  - `sections/_info.yaml`
  - `tags/_info.yaml`

Also updated `_config.yml` to exclude `legacy/` from Jekyll output.
