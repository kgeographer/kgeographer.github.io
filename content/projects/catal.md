Title: Çatalhöyük Living Archive
Date: 2015-01-01
Category: Projects
Status: published
Template: page
Slug: catalhoyuk-living-archive

## Screenshots
<div class="project-screens">
  <a href="/images/projects/catal-1.png" class="modal-image">
    <img src="/images/projects/catal-1.png"
         alt="Catalhöyük Living Archive pilot home page" height="160">
  </a>
  <a href="/images/projects/catal-2.png" class="modal-image">
    <img src="/images/projects/catal-2.png"
         alt="Catalhöyük Living Archive browse interface" width="240">
  </a>
  <a href="/images/projects/catal-3.png" class="modal-image">
    <img src="/images/projects/catal-3.png"
         alt="Catalhöyük Living Archive building detail page" height="160">
  </a>
</div>
---

## Organization  
Stanford Archaeology Center; Stanford University Libraries; Çatalhöyük Research Project

## Roles  
System designer; data modeler; database engineer; application developer; linked-data specialist, in collaboration with Ian Hodder (PI), Claudia Engel, and Elijah Meeks

## Technologies  
PostgreSQL/PostGIS; Python ETL pipelines; RDF/RDFS/OWL; SPARQL (Sesame/OpenRDF); GeoJSON + REST services; custom JavaScript spatial-temporal UI; timeline visualizations; GIS integration; multimedia asset linking

---

## Description

The **Çatalhöyük Living Archive** was an ambitious, year-and-a-half effort to design and implement a proof-of-concept digital archive for one of the world’s most important archaeological sites. Led by Ian Hodder, the Çatalhöyük excavations had spanned more than twenty-one years and produced a vast, heterogeneous, and intellectually rich digital corpus: finds data, units and features, GIS plans, stratigraphic relationships, specialist analyses, diaries, reports, photographs, videos, and drawings. The Living Archive was conceived as a response to the longstanding challenge of not merely preserving this record, but enabling new, reflexive, multivocal interpretations of it across time.  

This now-suspended project lived at the intersection of linked open data, archaeological method, spatial analysis, and digital preservation. It remains one of the most complex and significant digital humanities systems I have designed and built.

---

## Project Context

By the time I joined the project, the Çatalhöyük digital record had accumulated across multiple generations of excavation teams and technological environments. Much of the data was stored in a sprawling series of Access and SQL Server databases, with hundreds of tables of varying provenance and schema. Additional datasets lived in GIS files, text documents, multimedia folders, spreadsheets, and specialist databases, many of which used inconsistent lookup tables, idiosyncratic classifications, or team-specific conventions.  

As Engel and Grossner describe in <a href="/pubs/Engel-Grossner_ch-2.pdf" target="_blank" rel="noopener noreferrer">*Assembling Çatalhöyük*</a>, the system worked reasonably well for “data in” during active excavation seasons. But “data out,” i.e. the ability to browse, query, and synthesize across teams, seasons, and data types, was extraordinarily difficult. Reconstructing archaeological context often required the digital equivalent of detective work.

Claudia Engel recognized that linked open data offered a promising way to harmonize and expose this complex material nd introduced me to Ian Hodder. Together we discussed how LOD, spatial technologies, and a restructured database environment could support Hodder’s long-standing aspiration: a persistent, annotatable, reinterpretable **living archive**.

---

## My Contributions

### **1. Conceptual Design: The Living Archive**
The idea for a permanent, living, annotatable version of the Çatalhöyük record was Hodder’s, rooted in his reflexive archaeological framework. My contribution was to translate this vision into a **technical and conceptual architecture**: a system that would preserve the original excavation record while supporting multiple interpretations, linked evidence, spatial-temporal queries, and long-term extensibility.  

The design emphasized:

- persistent identifiers for archaeological entities  
- linkable evidence streams  
- the ability to overlay new scholarship on the original record  
- multimodal browsing across spatial, temporal, textual, and multimedia dimensions  
- compatibility with Linked Open Data principles  

It aimed not only to preserve the excavation archive but to create a platform through which new interpretations and datasets could accumulate over time.

---

### **2. Data Migration & Reconstruction**
One of the most challenging parts of the project was restructuring the existing databases into a coherent relational model suited for linked data publication and web delivery.

This involved:
- migrating data from numerous Access and SQL Server sources into PostgreSQL/PostGIS  
- reconciling inconsistent lookup tables and coding systems  
- harmonizing team- and season-specific schemas  
- producing unified views for finds, units, features, and burials  
- modeling stratigraphic and contextual relationships that had never been cleanly encoded  
- integrating specialist datasets and spatial materials at multiple scales  

This work formed the backbone of the Living Archive’s ability to browse across seasons, buildings, and evidence types.

---

### **3. Linked Data Publication**
A central goal was to expose Çatalhöyük’s data as Linked Open Data, so that archaeological entities, observations, and relationships could be referenced, reused, and cited.

I designed:

- mappings from excavation entities to RDF  
- ontological structures (RDFS/OWL) for units, features, finds, and contexts  
- SKOS-based harmonizations for domain vocabularies  
- a SPARQL endpoint (via Sesame/OpenRDF) containing millions of triples  

This made Çatalhöyük one of the earliest major archaeological projects to publish significant portions of its primary data as LOD.

---

### **4. The Web Application**
The most visible part of the project was a **custom spatial-temporal browse and search system**—a complex web interface that allowed users to explore the excavation record through time, space, and multiple data modalities.  

The interface included:

- GIS plan layers showing areas, buildings, units, features, and finds  
- spatial views integrating photographic and video records  
- dynamic timelines showing seasonal excavation phases  
- browsing tabs for buildings, units, finds, features, burials, and diary entries  
- linked textual descriptions, photographs, diagrams, and other contextual information  
- advanced search across units, finds, contexts, and stratigraphic relations  
- the ability to assemble personal “collections” of entities for research or teaching  

As Engel and Grossner detail in their summarizing chapter, the interface demonstrated the power of integrating spatial, textual, and specialist data into a single coherent, interactive environment.

---

## Field Immersion

At Hodder’s insistence, I spent time at Çatalhöyük itself—staying at the dig house, touring the excavation areas, and observing how archaeologists recorded, interpreted, and worked with material on the ground. This field experience proved invaluable for understanding the cognitive and organizational structures behind the data and informed the Living Archive’s design in fundamental ways.  

It remains one of the most memorable and intellectually energizing periods of my academic career.

---

## Fate of the System

The prototype worked well and demonstrated the viability of a linked, multidimensional archaeological archive. After my eighteen months on the project, development passed to another scholar, and momentum eventually slowed as both Hodder’s retirement and my successor’s career trajectory shifted the project’s direction.  

The original pilot was hosted on **ephemeral infrastructure**, which was later retired. Only screenshots and the published chapter survive. Yet the conceptual model and much of the design work live on, acknowledged on the Çatalhöyük website and informing ongoing thinking about archaeological linked data.

Despite its disappearance as a live system, the Çatalhöyük Living Archive stands as one of the most significant and challenging digital humanities projects I have undertaken.

---

## Outcomes

- A fully functioning pilot demonstrating integrated spatial-temporal browsing of one of archaeology’s richest digital archives  
- Migration and restructuring of decades of heterogeneous excavation data into a coherent relational and linked-data model  
- One peer-reviewed book chapter (Engel & Grossner) describing the conceptual and technical foundations  
- A conceptual and practical framework for future archaeological living archives  
- Experience and insight that informed my own later work on linked gazetteers and spatial humanities infrastructures

---

## Publication

<a href="/pubs/Engel-Grossner_ch-2.pdf" target="_blank" rel="noopener noreferrer">
“Representing the Archaeological Process at Çatalhöyük in a Living Archive,”  
in *Assembling Çatalhöyük* (European Association of Archaeologists, 2015)
</a>