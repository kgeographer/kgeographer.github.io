Title: Geographic Lens on Stories (GLOS)
Date: 2024-01-01
Category: Projects
Status: published
Template: page
Slug: glos

## Screenshots
<div class="project-screens">
<img src="/images/projects/glos-1.jpg" alt="GLOS screenshot 1" width="320">
<img src="/images/projects/glos-2.jpg" alt="GLOS screenshot 2" width="320">
<img src="/images/projects/glos-3.jpg" alt="GLOS screenshot 3" width="320">
</div>

---

## Organization  
KGEO Research

## Roles  
Creator; Principal Developer; Research Lead

## Technologies  
Python; PostgreSQL + pgvector; semantic embeddings; sentence-transformer pipelines; ontology design; conceptual modeling; JSON + JSON-LD data structures; Pelican; HTML/JavaScript; LLM-assisted text analysis

---

## Description

The **Geographic Lens on Stories (GLOS)** project explores how computational methods can illuminate cultural narratives across geography and time. The project brings together digital humanities, cultural geography, and modern NLP to investigate folktales, creation myths, and other story traditions from around the world. Its overarching goal is to offer new forms of comparative inquiry into how narratives vary across regions, and how they reflect both shared human themes and distinct cultural values.

GLOS has developed in two major phases so far. **Phase A** focused on transforming two foundational folkloristic reference works—the Aarne-Thompson-Uther (ATU) Tale Type Index and the Thompson Motif Index (TMI)—into machine-readable computational resources. I digitized, normalized, and structured more than 40,000 motifs and several thousand tale types, enabling new tools such as the ATU–TMI Cross-Reference Tool and the Concept Matcher, which ranks the closest motifs or tale types to any user-supplied text using semantic embeddings.

**Phase B** shifted the GLOS project from tools development to an exploratory evaluation of whether large language models could reliably support structured analysis of creation myths across cultures. After designing schema prototypes, cleaning a large corpus, and building initial extraction pipelines, I encountered a fundamental epistemological barrier: LLMs interpret metaphor-rich narrative material through their own internal distributions, not through the conceptual structures of the myths themselves. As a result, similarity measurements reflected the model’s interpretive biases, not genuine cross-cultural correspondences between myths.
This phase effectively became a study of what LLMs can and cannot do with symbolic narrative material. The preliminary results aligned with long-standing anthropological insights (e.g., Lévi-Strauss) that creation myths are often organized around binary oppositions. LLMs reproduced these broad oppositions but were unable to reliably infer finer-grained conceptual distinctions or culturally grounded structures without imposing their own interpretive tendencies.
Given these limitations, the analytic pipeline was paused, and Phase B was concluded as a negative but clarifying result: current LLMs cannot yet serve as interpreters of creation myths in a way that satisfies scholarly standards for cultural specificity, semantic nuance, or reliable cross-cultural comparison. The work nevertheless helped define the boundaries of computational myth analysis and contributed to a clearer understanding of where machine learning may—and may not—be appropriate in humanities research.
GLOS aims to become an open, extensible platform for cross-cultural narrative analysis—supporting folklorists, geographers, and digital humanists who wish to explore cultural patterning, variation, and diffusion at scale. Its early tools are publicly available in alpha release, with ongoing development under KGEO Research.