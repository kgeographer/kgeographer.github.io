Title: Kindred Britain
Date: 2012-07-01
Category: Projects
Status: published
Template: page
Slug: kindred-britain

## Screenshots
<div class="project-screens">
  <a href="/images/projects/kindred-1.png" class="modal-image">
    <img src="/images/projects/kindred-1.png"
         alt="Kindred Britain home page" height="160">
  </a>
  <a href="/images/projects/kindred-2.png" class="modal-image">
    <img src="/images/projects/kindred-2.png"
         alt="Kindred Britain individual connections page" width="240">
  </a>
</div>

---

## Organization  
Stanford University (Stanford University Libraries; Department of English)

## Roles  
Early contributor as data modeler and data conversion engineer

## Technologies  
PostgreSQL; event-based data modeling; Python parsing and ETL; GEDCOM/PHPGedView data structures; relational database design; normalization and schema development

---

## Description

**Kindred Britain** was an ambitious digital humanities project that visualizes connections among nearly 30,000 individuals in British cultural history, reconstructing family relationships stretching across centuries. Conceived and led by English professor Nicholas Jenkins, and later developed extensively by Elijah Meeks and collaborators, the final project combines a richly curated biographical dataset with sophisticated network visualizations, interactive timelines, and narrative essays that explore patterns of kinship in British society.

My involvement occurred during the early development phase, when the dataset existed primarily as a single genealogical file exported in PHPGedView/GEDCOM format. Although structurally complete for genealogical purposes, this format was not suitable for the kinds of analytical, temporal, or relational operations the project envisioned. Drawing on my prior research in event-based modeling, including work from my dissertation on the centrality of events in representing human activity, I advocated for and implemented an **event-based data model** as the foundation of the project’s relational database.

This work included parsing the GEDCOM file, identifying modeling limitations, and designing a PostgreSQL schema that represented births, deaths, marriages, occupations, residences, and other biographical occurrences as discrete, typed events with participants and temporal attributes. This structure provided a flexible and extensible basis for later development, facilitating the complex relationship queries, network analyses, and additional event types incorporated by the project team as Kindred Britain grew in scope and sophistication.

My contribution concluded after this initial data-modeling period. The later interface design, visualization work, interpretive essays, and final shaping of the project as a public scholarly resource were led by Elijah Meeks and Nicholas Jenkins. My role is best understood as helping establish the project’s early technical underpinnings: converting the source genealogical data into a normalized event-based structure that enabled subsequent developments.