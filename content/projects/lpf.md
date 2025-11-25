Title: Linked Places Format (LPF)
Date: 2017-01-01
Category: Projects
Status: published
Template: page
Slug: linked-places-format

## Screenshots
<div class="project-screens">
<img src="/images/projects/lpf-1.jpg" alt="LPF screenshot 1" width="320">
<img src="/images/projects/lpf-2.jpg" alt="LPF screenshot 2" width="320">
<img src="/images/projects/lpf-3.jpg" alt="LPF screenshot 3" width="320">
</div>

---

## Organization  
Pelagios Network (with contributions to WHG, Recogito, PeriodO)

## Roles  
Principal Author; Developer; Data Modeling Lead

## Technologies  
JSON-LD; GeoJSON; GeoJSON-T; RDF; Linked Data; Python; data modeling; temporal GIS concepts; gazetteer interoperability frameworks

---

## Description

**Linked Places Format (LPF)** is a lightweight, extensible data format for representing historical place information with temporal depth and semantic clarity. It offers a pragmatic solution to a longstanding challenge in geographic information science: how to incorporate **time**—often complex, uncertain, or culturally variable—into spatial data models.  

LPF grew out of two earlier efforts. The first was **TopoTime**, developed at Stanford Libraries, which provided a formal scheme for expressing uncertain or complex historical timespans. The second was **GeoJSON-T**, an experimental extension to GeoJSON that introduced standardized `"when"` elements for temporal scoping. GeoJSON-T attracted early interest but remained a prototype. When the World Historical Gazetteer (WHG) launched, GeoJSON-T became the conceptual foundation for LPF, which extended the format further by supporting **multiple temporally scoped names, geometries, types, relations, and citations** in a single place record. LPF is thus the culmination of a multiyear line of research into bringing temporal structures into web-native geographic data models.

LPF is designed around **JSON-LD**, making every instance valid RDF and enabling interoperability with Linked Data ecosystems. At the same time, it remains **valid GeoJSON**, ensuring immediate compatibility with web mapping tools. This dual nature supports a key goal: enabling researchers to integrate place attestations from many sources without imposing a single “canonical” model. As emphasized in the chapter <a href="/pubs/Place_Period_Setting.pdf" target="_blank">*Place, Period, and Setting for Linked Data Gazetteers*</a> historical gazetteers must represent an interplay of spatial and temporal characteristics—what the authors describe as *settings*. LPF provides an applied, implementation-friendly mechanism for representing those settings in practical workflows.

Originally developed for contributions to partner projects in the **Pelagios Network**—including the World Historical Gazetteer, Recogito, and PeriodO—LPF has since become a general-purpose format for publishing spatio-temporal place data. Its aim is not to define a single universal gazetteer schema but to offer a minimal, flexible structure that enables **linking between diverse gazetteers**, helping users search across them, disambiguate places, and annotate data with stable URIs.

LPF represents one of my most sustained contributions to digital humanities and geographic information science: a workable, community-adopted approach for representing **place + time** together in a machine-readable, web-native format suitable for historical research at scale.