Title: Authorial London
Date: 2016-01-01
Category: Projects
Status: published
Template: page
Slug: authorial-london

## Screenshots
<div class="project-screens">
  <a href="/images/projects/authorial-2.png" class="modal-image">
    <img src="/images/projects/authorial-2.png"
         alt="Authorial London place detail page" width="240">
  </a>
  <a href="/images/projects/authorial-3.png" class="modal-image">
    <img src="/images/projects/authorial-3.png"
         alt="Authorial London author detail page" width="240">
  </a>
  <a href="/images/projects/authorial-4.png" class="modal-image">
    <img src="/images/projects/authorial-4.png"
         alt="Authorial London work detail page" width="240" height="180">
  </a>
</div>

---

## Organization  
Stanford University Libraries (CIDR) & Office of the Vice Provost for Teaching and Learning (VPTL)

## Roles  
Co-investigator (with Kenneth Ligda); Lead Developer; Data Modeling & Mapping Design

## Technologies  
Ruby on Rails; PostgreSQL; Elasticsearch; Apache Solr; Backbone/Marionette; Leaflet/Mapbox; jQuery; D3.js; geocoding services (Google Maps, Nominatim)

---

## Description

**Authorial London** is a digital literary geography project that compiles and maps references to places within London found in works by writers who lived there. The site currently includes roughly 1,600 passages from 193 works written between the 14th and 20th centuries by 47 authors from 12 literary communities. Users can explore the corpus from literary, geographical, and biographical perspectives across dimensions such as genre, form, period, social standing, and neighborhood.

The project extended the earlier *Guide to Authorial London* (2011) led by Stanford's Martin Evans and was reimplemented at Stanford University Libraries as the first instance of a proposed reusable platform called **Authorial {X}**. The intent was that researchers and instructors might instantiate similar sites for any place of interest, engaging students or research communities in gathering data: authors, texts, place-referencing passages, and the geometries needed to map them. Authorial {X} was never realized.

Building the corpus involved a combination of close reading and machine-assisted search. An initial list of London place references was constructed by reading a diverse set of texts and collecting every place within today’s Greater London. These strings were then used to search hundreds of text files from Project Gutenberg, generating paragraph-length candidates that were manually reviewed, cleaned, and curated. Human reading remained essential for catching premodern spellings, poetic periphrases (“the silver thread” for the Thames), obsolete place names, and pseudonyms linked to real locations. The result is a geotagged corpus in which 1,013 distinct name strings resolve to 823 distinct mapped locations.

The web application uses a Rails/PostgreSQL backend with Elasticsearch indexing of full texts and passages, combined with a JavaScript front end built on Backbone/Marionette, Leaflet/Mapbox, jQuery, and D3.js. Historical geo-rectified base maps scans allow users to view literary place references against changing cartographic depictions of London in the 18th and 19th centuries. Authorial London thus serves both as a research and teaching tool in literary geography and as a demonstration of a prospective Authorial {X} architecture for exploring the interplay of literature and place in other cities. 