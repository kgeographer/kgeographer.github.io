Title: World Historical Gazetteer (WHG)
Date: 2024-01-01
Category: Projects
Status: published
Template: page
Slug: whg

## Screenshots
<div class="project-screens">
  <a href="/images/projects/whg-2.png" class="modal-image">
    <img src="/images/projects/whg-2.png"
         alt="WHG place detail page" width="240">
  </a>
  <a href="/images/projects/whg-3.png" class="modal-image">
    <img src="/images/projects/whg-3.png"
         alt="WHG dataset collections gallery" width="240">
  </a>
  <a href="/images/projects/whg-4.png" class="modal-image">
    <img src="/images/projects/whg-4.png"
         alt="WHG reconciliation review screen" width="240" height="180">
  </a>
</div>

---

## Organization  
World Historical Gazetteer Project (University of Pittsburgh / Multiple Partners)

## Roles  
Co-Investigator with PI Ruth Mostern; Technical Director; Lead Developer

## Technologies  
Python; Django; PostgreSQL; Elasticsearch; Celery; HTML/JavaScript; Bootstrap; Linux; Nginx; GitHub; RESTful API design; data modeling; linked data workflows

---

## Description

The **World Historical Gazetteer (WHG)** is a large-scale digital humanities platform for linking, reconciling, and publishing historical place data contributed by researchers across numerous disciplines. Its mission is to build an open, durable index of historical places, capable of capturing the many names, temporal spans, and spatial attestations that places acquire over time, and to make that data accessible for research, teaching, and public communication.  

Originally launched in 2020, WHG has grown into a major infrastructure project supporting global digital history. At present the system holds over two million attestation records for over 1.6 million distinct places, a growing subset of which includes explicit temporal scoping. The platform aggregates contributed datasets, reconciles variant attestations of the same place, and provides cleaned, linked place records that can be searched, browsed, organized in published collections, and accessed via download and an API.

WHG’s web interface allows registered users to upload place datasets, augment them through reconciliation services, and publish them either as stand-alone datasets or as part of curated **Collections**. Collections enable rich, narrative-driven groupings of places with supporting images, links, and documents, and have emerging pedagogical value for world-historical inquiry.

The system is also designed for interoperability: all place data and reconciliation services are exposed via a public API, enabling integration with other gazetteers, spatial databases, and digital humanities applications. As Technical Director and Lead Developer, I designed and built the underlying data model, Django application architecture, ingestion pipelines, search infrastructure, and user-facing tools that support the WHG’s role as a permanent component of global DH infrastructure.