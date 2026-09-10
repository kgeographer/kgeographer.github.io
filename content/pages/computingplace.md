Title: Computing Place
Date: 2026-09-09
Slug: computing-place
Summary: Environmental and cultural profiling infrastructure for historical gazetteers

<p><strong><em>Computing Place</em></strong> is a research initiative building rich, computable descriptions of places by linking environmental and cultural data. Every terrestrial Earth surface location has an environmental signature&mdash;shaped by drainage basins, elevation, climate, and ecoregion characteristics&mdash;but cultural practices and historical developments in places follow their own logic. By computing statistical and thematic signatures for environment and culture systematically and comparing how they align or diverge, I hope to enable new forms of spatial and &lsquo;placial&rsquo; analysis for gazetteers and digital humanities research in multiple fields.</p>

A Computing Place web platform is being developed modularly. **EDOP** (Environmental Dimensions of Place) is the first component; its first principal product, **EDOPS** &mdash; the Environmental Dimensions of Place Service &mdash; is now at a **v0.4** preview. EDOPS computes structured environmental "signatures" for any terrestrial location from HydroATLAS basin data, digital elevation models, and ecoregion classifications, extended with historical land-use (HYDE) and paleoclimate (LMR) reconstructions, and returns them for settlements, historical polities, and regions over their underlying watersheds at multiple scales.

The EDOPS pilot comprises a web application (Sandbox, Data Explorer, and Workbench pages), a public API, and a documentation site. **CDOP** (Cultural Dimensions of Place) will add semantic and anthropological dimensions through text embeddings and ethnographic datasets; it is in early design. The platform will in time link these complementary signals, offering APIs and interactive tools that existing spatial humanities infrastructures can consume to enrich their place records.

<p><a href="/pubs/EDOP_summary_20260909.pdf" target="_blank" rel="noopener noreferrer">Project summary and status, Sep 2026 <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" aria-hidden="true" style="vertical-align:-0.125em;margin-left:0.25em;"><path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5"/><path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0z"/></svg></a></p>

<div class="cp-tiles">
  <a href="https://edops.computingplace.org/" target="_blank" class="cp-tile cp-tile-active">
    <img src="/images/cp03_edop01.jpg" alt="Environmental Dimensions of Place Service">
    <div class="cp-tile-info">
      <span class="cp-tile-label">Environmental Dimensions<br/>of Place Service (v0.4)</span>
    </div>
  </a>
  <div class="cp-tile cp-tile-disabled">
    <img src="/images/cp03_cdop01.jpg" alt="Cultural Dimensions of Place (soon)">
    <div class="cp-tile-info">
      <span class="cp-tile-label">Cultural Dimensions<br/>of Place</span>
    </div>
  </div>
</div>
