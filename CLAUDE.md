# CLAUDE.md — kgeographer.org

## Project Overview

Personal portfolio and research site for **Karl Grossner, PhD** — geographer, digital humanities researcher, and software developer. Live at **kgeographer.org**, deployed via GitHub Pages.

## Stack

- **Generator:** [Pelican](https://getpelican.com/) (Python static site generator)
- **Theme:** `themes/notmyidea` — customized Pelican default theme
- **Content:** Markdown files in `content/`
- **Hosting:** GitHub Pages, `gh-pages` branch
- **Deployment:** GitHub Actions (auto on push to `main`) or `./deploy.sh` (manual)

## Directory Layout

```
content/
  pages/          # Static pages: home, portfolio, cv, gallery, computingplace
  projects/       # One .md per project (whg, glos, orbis, authorial, ...)
  images/         # Site images and project screenshots
  extra/          # Custom CSS (custom.css), extra static assets
  pubs/           # PDF publications
  *.md            # Blog posts (Research or Personal category)
themes/
  notmyidea/      # Customized theme — templates in templates/, css in static/css/
output/           # Generated site (gitignored, do not edit directly)
pelicanconf.py    # Dev config
publishconf.py    # Prod config (sets SITEURL, enables feeds, deletes output before build)
deploy.sh         # Manual deploy: builds, checks out gh-pages, cleans, pushes
Makefile          # Standard Pelican make targets
tasks.py          # Invoke task runner (alternative to make)
```

## Content Conventions

- **Blog posts:** Markdown files at `content/*.md` with Pelican metadata headers:
  ```
  Title: My Post
  Date: 2025-01-15
  Category: Research   # or: Personal
  Tags: gis, digital humanities
  Slug: my-post
  ```
- **Pages:** `content/pages/*.md` — rendered as `/slug/index.html`
- **Projects:** `content/projects/*.md` — also rendered as pages
- **Custom CSS:** `content/extra/custom.css` → copied to `static/custom.css` on build

## Key Configuration (pelicanconf.py)

- Blog index lives at `/blog/` (not site root)
- Menu: Home, Portfolio, Computing Place, Blog, Personal, CV
- Pages/projects both in `PAGE_PATHS = ['projects', 'pages']`
- `DISPLAY_PAGES_ON_MENU = False` — menu is manually controlled via `MENUITEMS`

## Build & Dev

```bash
# Development server with live reload
make devserver          # or: invoke livereload

# Build only
make html               # dev build
make publish            # prod build (uses publishconf.py)

# Manual deploy to gh-pages
./deploy.sh
```

## Deployment

When asked to deploy, CC should handle all steps without prompting:

1. `git add -A` — stage everything
2. `git commit -m "<message>"` — commit with a descriptive message
3. `./deploy.sh "<message>"` — builds site, switches to gh-pages, cleans, copies output, commits, force-pushes, returns to main

The script accepts an optional commit message: `./deploy.sh "Add Computing Place prospectus"`. If omitted it defaults to "Update site content". The script auto-commits any pending changes on main before deploying, so there is no need to commit separately first.

**Do not use GitHub Actions** — deployment is handled entirely by `deploy.sh`.

## Active / Recent Work

- **Computing Place** — new featured project section; tab in nav, page at `/computing-place/`, blog posts in `content/`, tile grid layout in `custom.css`
- Recent CSS work: `.cp-tiles` grid, `.cp-tile` hover effects (transform + box-shadow), active/disabled tile states

## Notable Files

| File | Purpose |
|------|---------|
| `content/pages/cv.md` | Full academic CV (~16KB) |
| `content/pages/portfolio.md` | Project showcase with thumbnails |
| `content/pages/computingplace.md` | Computing Place project page |
| `content/extra/custom.css` | Custom CSS (Computing Place tile grid) |
| `content/computing_place_blog.md` | CP blog post |
| `content/computing_place_prospectus.md` | CP prospectus (~20KB, not yet published) |
| `.github/workflows/deploy.yml` | CI/CD pipeline |
