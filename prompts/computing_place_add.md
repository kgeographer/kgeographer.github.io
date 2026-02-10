# Computing Place Splash Page - Development Brief

## Context
I'm Karl Grossner, running a one-person DH consultancy (kgeographer.org). I need to add a new splash page for "Computing Place" - a research infrastructure project that's now publicly launching after initial demo with collaborators at University of Pittsburgh.

## Site Structure
- Existing consultancy site is live at kgeographer.com
- Nav menu already includes "Computing Place" item (currently points to stub)
- Site uses [Pelican and deploys as a github-pages site]
- Existing pages: KGEO Research (home), Portfolio, Blog, Personal, CV

## New Page Requirements

### URL/Location
- `/computing-place/`
- Should match styling/layout of existing pages (e.g., KGEO Research page)

### Content Structure

**Hero Section:**
- Page title: "Computing Place"
- 2 paragraph explanation covering:
  - Core concept: Environmental profiling/analytics infrastructure for historical gazetteers
  - Technical approach: Basin-scale environmental signatures using HydroATLAS, DEMs, ecoregions
  - Modular development: EDOP (environmental) first, then CDOP (cultural/semantic), ultimately integrated platform
  - Positioning: Complementary infrastructure that existing gazetteers/historical databases can consume via APIs

**Three-Tile Button Section:**
- Large clickable tiles arranged horizontally (or stacked on mobile)
- Tiles use the logo variants I've created cp03_800w.jpg, cp03_edop01.jpg, cp03_cdop01.jpg

Tile 1 - EDOP (active/live):
- Image: cp03_edop01.jpg (full color, green circuit + pin)
- Links to: https://edop.kgeographer.org
- Active/clickable state

Tile 2 - CDOP (coming soon):
- Image: cp03_cdop01.jpg ("soon" label)
- Non-clickable or links to anchor explaining roadmap
- Muted/disabled state

Tile 3 - Computing Place (future integration):
- Image: cp03_800w.jpg (greyed out, "soon" label)  
- Non-clickable or links to anchor explaining vision
- Muted/disabled state

### Technical Notes
- Images are 800x800px jpeg files
- Tiles should be ~200-250px wide on desktop, stack vertically on mobile
- Match existing site's responsive breakpoints
- Maintain accessibility (alt text, keyboard navigation)

## Assets I'll Provide
- Three tile button images are in logos/
- Draft copy for the explanatory paragraphs (or you can draft based on context above)

## Existing Site Reference
- See `/` page for layout/styling patterns to match
- Black nav bar, clean typography, mobile-responsive

## Questions for You (Claude Code)
1. What's the site's structure? Pelican
3. What's the CSS framework/approach? (Bootstrap?)
4. draft some explanatory paragraph copy; Karl will refine

## Success Criteria
- Page matches existing site styling
- EDOP tile is clearly clickable/active
- CDOP and Computing Place tiles indicate future development
- Content explains the framework clearly for spatial humanities audience
- Mobile responsive
- Ready to deploy today

## Constraints
- Keep it simple - this is a splash/overview page, not comprehensive documentation
- Text should be concise (academics can read more in linked blog post)
- Visual hierarchy: explanation → tile buttons → [optional] brief roadmap section