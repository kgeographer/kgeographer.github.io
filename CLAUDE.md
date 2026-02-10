# CLAUDE.md — kgeographer.org

## What This Is

A Pelican static site serving as Karl Grossner's professional portfolio and research blog at **kgeographer.org**. It's hosted on GitHub Pages (gh-pages branch) with the source on the main branch.

## Project Structure

```
pelicanconf.py          # Main config (theme, paths, menus, markdown extensions)
publishconf.py          # Production overrides (feeds, site URL)
Makefile                # Build/serve/deploy commands
deploy.sh               # Shell-based deploy to gh-pages
tasks.py                # Invoke task runner (livereload, build, serve)
CNAME                   # Custom domain: kgeographer.org

content/
├── *.md                # Blog articles (categories: research, personal)
├── pages/              # Static pages (home, portfolio, cv, gallery, computingplace)
├── projects/           # Portfolio project writeups (10 items)
├── extra/custom.css    # Custom CSS (computing place tiles, overrides)
├── images/             # Site images and project screenshots
└── pubs/               # Academic publication PDFs

themes/notmyidea/       # Customized NotMyIdea theme
├── templates/          # Jinja2 templates (base.html is heavily customized)
└── static/css/         # Theme CSS (main.css, reset.css, etc.)

output/                 # Generated site (gitignored)
.github/workflows/      # GitHub Actions deploy on push to main
```

## Key Commands

```bash
make html               # Build the site
make serve              # Serve locally at http://localhost:8000
make devserver          # Auto-regenerate + serve
make publish            # Production build (uses publishconf.py)
make github             # Deploy to GitHub Pages via ghp-import
./deploy.sh             # Alternative deploy (builds, copies to gh-pages, force-pushes)
```

## Configuration Notes

- **Theme:** `themes/notmyidea` (customized base.html with logo, custom.css injection, email obfuscation)
- **Custom CSS:** `content/extra/custom.css` is copied to `static/custom.css` via EXTRA_PATH_METADATA
- **Markdown extensions:** extra, codehilite, meta, attr_list
- **URL scheme:** Pages use `{slug}/index.html` for clean URLs
- **Pagination:** 5 items per page
- **Timezone:** Europe/Rome

## Content Authoring

Articles go in `content/` root as markdown with metadata:

```markdown
Title: Article Title
Date: 2025-01-15
Category: research
Tags: tag1, tag2
Summary: Brief description

Article body here.
```

Pages go in `content/pages/` and projects in `content/projects/`.

## Deployment

Three deployment paths exist; the GitHub Actions workflow (`.github/workflows/deploy.yml`) is the primary one — it triggers on push to main, builds with Pelican, and deploys to gh-pages. The CNAME file is copied into output during the action.

## Conventions

- Navigation is defined in `MENUITEMS` in pelicanconf.py (not auto-generated from pages)
- Project pages use `page` content type with screenshots in `content/images/`
- The site logo is `content/images/roundabout.png`
- Publications are served as static files from `/pubs/`
