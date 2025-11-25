Title: TeachSpatial – Spatial Thinking, Educational Standards, and NSDL Integration
Date: 2011-01-01
Category: Projects
Status: published
Template: page
Slug: teach-spatial

## Screenshots
<div class="project-screens">
<img src="/images/projects/teachspatial-1.jpg" alt="TeachSpatial screenshot 1" width="320">
<img src="/images/projects/teachspatial-2.jpg" alt="TeachSpatial screenshot 2" width="320">
<img src="/images/projects/teachspatial-3.jpg" alt="TeachSpatial screenshot 3" width="320">
</div>

---

## Organization  
Center for Spatial Studies at the University of California Santa Barbara 

## Roles  
- Platform design; Principal Developer; Research Lead  

## Technologies  
OAI-PMH; NSDL Search API; Python; conceptual modeling; controlled vocabularies; metadata harvesting; Drupal (portal implementation)

---

## Description

TeachSpatial was an NSF-funded initiative at UCSB aimed at strengthening spatial thinking and reasoning across STEM and the social sciences. My primary contribution was designing the conceptual and technical foundation of the project during its original development phase. Working with Don Janelle and a small working group, I led the extraction of spatial concepts embedded implicitly within the **AAAS *Benchmarks for Science Literacy***. This analysis produced a controlled vocabulary of spatial constructs—ranging from geometric and topological ideas to spatial cognition, representation, and reasoning processes.

Building on this vocabulary, I designed and implemented a harvesting pipeline for the **National Science Digital Library (NSDL)**. At the time, NSDL exposed a machine-readable metadata infrastructure through the **OAI-PMH protocol** along with its REST-based **NSDL Search API**. Using these interfaces, I developed a system that automatically retrieved, classified, and indexed NSDL learning resources associated with any spatial concept identified in our Benchmarks analysis. The system supported both harvesting and contribution of metadata records to the NSDL Metadata Repository, effectively creating an enriched subset of spatial-thinking educational resources and demonstrating the pervasive role of spatial reasoning in existing STEM curricula.

The resulting TeachSpatial portal combined conceptual modeling, metadata integration, and web application development into a single platform. It served as an early demonstration of how structured vocabularies and harvesting pipelines can support spatial thinking research and instruction—anticipating later work in digital humanities infrastructure, semantic modeling, and spatial knowledge organization.