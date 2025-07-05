Title: Toward a Schema for Creation Myths: Structuring Conceptual Content with Large Language Models
Date: 2025-07-04
Slug: glos_creation_schema
Summary: Using large language models to induce and evaluate a schema for conceptual content in creation myths.
Category: GLOS Project
Tags: creation myths, schema, LLMs, folklore, ontology, concept modeling
Author: Karl Grossner
Status: published


The GLOS Project ([Github repo](https://github.com/kgeographer/glos){:target="_blank"}) is an inquiry into the geography of stories—developing experimental computational methods to analyze the conceptual content of folklore, beginning with creation myths. At the core of this effort are two premises:

1. that narrative texts encode cultural knowledge in ways that are neither purely linguistic nor purely thematic, but discoverable as conceptual structures, albeit ones that vary across traditions, locales, and genres.
2. that the narrative themes and motifs associated with a place are themselves dimensions of that place—offering a lens into its cultural and experiential character

The project’s current focus, [the "Phase B" referenced in an earlier post](/glos_june2025){:target="_blank"}, is on using large language models (LLMs) to help induce a schema—a structured, reusable framework—for describing and comparing the conceptual content of creation myths across cultures. This effort complements traditional folkloristic indexing systems—such as [the Aarne-Thompson-Uther (ATU) tale type index and the Thompson Motif Index (TMI)](https://guides.library.harvard.edu/folk_and_myth){:target="_blank"}—which classify stories by recurring plot patterns and narrative motifs. While those systems remain foundational, they were not designed with cross-cultural conceptual analysis in mind, and they are limited in the kinds of inferences they enable computationally. Phase A developed pilot tools for exploring those indexes and connections between them (see the [GLOS tools site](http://glos.kgeographer.org)).

### From Motif Lists to Conceptual Structures
A schema in this context is a structured set of conceptual categories—like _primordial state_, _cosmic structure_, _creation sequence_, and _dualities and oppositions_—each of which can be represented with values drawn from narrative evidence or left null when absent. Such a schema would allow myths from very different traditions to be compared not only by plot similarity but by conceptual architecture: what roles are enacted, what principles govern creation, what kinds of boundaries are drawn between divine and mortal, chaos and order, known and unknown.

To approach this, GLOS uses LLMs as instruments for conceptual induction. Specifically, I intially prompted the Claude Sonnet 3.7 model to read a sampling of 20 entire myth texts and extract provisional conceptual structures—clusters or categories that represent the “conceptual skeleton” of each story. These outputs were not accepted uncritically, but served as raw material for further refinement. They were drafted directly from the machine-reading of the corpus, then refined manually—rather than derived from a top-down taxonomy designed in advance.

The resulting initial **CreationSchema v1** ([view on Github](https://github.com/kgeographer/glos/blob/main/docs/CreationSchema_v1.json){:target="_blank"}) was used to generate JSON representations of the 20 sample myths. The sample myths were presented to the LLM with an elaborate prompt, requesting that values for each of the schema’s conceptual elements be extracted. These were then manually reviewed and normalized, and normalized terms will inform development of a standard vocabulary of allowed values for several of the fields. A number of other fields allow free text. ([An example result](https://github.com/kgeographer/glos/blob/main/docs/pm003_god_retreats_to_sky_analysis.json){:target="_blank"})

Following that step embeddings were generated using OpenAI's _text-embedding-ada-002_ model: first for entire myths, then for four of the principal attribute categories: _primordial\_state_, _creation\_sequence_, _cosmic\_structure_, and _distinctive\_elements_. These were used in preliminary similarity comparisons, with promising early results.

### Competency Questions
**CreationSchema v1** is a first draft. Designing a useful schema or ontology requires identifying a set of questions we wish to ask of the data—known in ontology engineering as *competency questions*. Work towards a **CreationSchema v2** will begin by establishing a set of question that can be used to evaluate schema effectiveness. Given the current corpus, schema, and metadata, GLOS already supports queries like:

- *Is creation portrayed as intentional, accidental, or emergent?*
- *Are humans created deliberately, incidentally, or not at all—and from what materials?*
- *Do acts of disobedience or conflict play a creative, destructive, or transformative role in the myth?*

With further enrichment of cultural metadata—such as standardizing language families, geographic regions, or religious traditions—more comparative questions may be posed, such as:

- *Do hierarchical pantheons appear more frequently in Indo-European cultures?*
- *Is divine collaboration more prominent in island or coastal societies?*
- *Are transgressive creation acts less common in oral-tradition cultures than in literate ones?*

These questions point to the promise of combining conceptual modeling with lightweight cultural classification not to “solve” mythologies, but to create new instruments for their comparison and exploration.

### Improving the Schema
The method described above is exploratory and iterative, and is only the first phase. The next phase involves using clustering and topic modeling tools—specifically BERTopic and [Stanford’s LLOOM library](https://stanfordhci.github.io/lloom/){:target="_blank"} to potentially refine and enrich the **CreationSchema v1** organization. These tools allow for the grouping of semantically similar elements and may reveal latent structures that aren’t obvious at the level of a single myth. The aim is to generate a plausible formal **CreationSchema v2** that can support support nuanced comparative queries.

### Working in Parallel: Building the Corpus
In parallel with these modeling experiments, I’m expanding the working corpus. The first source is [Barbara Sproul’s _Primal Myths: Creation Myths Around the World_](https://www.goodreads.com/book/show/1295530.Primal_Myths){:target="_blank"}, a mid-20th century anthology that assembles over 140 creation narratives from cultures around the world. These are being digitized, cleaned, and lightly annotated to support both human and machine-readable analysis. Each myth is treated as a case study for schema testing—both a source of conceptual content and a challenge to the universality of any proposed schema.

### Evaluation and Reflexivity
A key concern—especially in a field like folklore—is the epistemological validity of any structure generated by a model trained on vast, culturally uneven corpora. LLMs may reflect dominant narrative tropes or Western scholarly assumptions, and can sometimes hallucinate, interpolate, or over-regularize conceptual structures that are in fact deeply culture-bound.

For that reason, a core component of the GLOS project moving forward is the evaluation of LLM-assisted conceptual induction. This is not simply about whether the models “get it right,” but whether they support the identification of meaningful cultural differences, point to interesting structural convergences, or enable new questions. It is also about testing how different models behave: GPT-3.5 versus GPT-4, Claude versus Gemini, with and without agentive prompt scaffolding.

This reflexive approach—using LLMs not just to generate structure but to interrogate the limits of that structure—is a point of intersection with colleagues in Vienna, where I am planning an extended research residency. That collaboration will focus explicitly on evaluating LLMs as instruments in cross-cultural semantic modeling.

### Grounding in Canonical Resources
Although this project diverges from traditional motif indexing, it also draws strength from it. A major early task in GLOS was digitizing the ATU and TMI indexes and developing tools for exploring their conceptual terrain. In response to a request from folklorists at Indiana University's Folklore Institute, I recently developed [an expanded interface for browsing and querying those indexes](http://glos.kgeographer.org/atu_tmi_v2){:target="_blank"}. This work will continue, and these canonical systems remain a vital reference point for validating or challenging what emerges from LLM-based methods.

### Looking Ahead
The immediate next steps in GLOS include:

- Completing the Primal Myths corpus digitization
- Creating a preliminary list of competency questions
- Refining CreationSchema V1 into CreationSchema V2, potentially informed by BERTopic and LLOOM results
- Testing schema coherence across multiple myths
- Evaluating consistency across different LLMs and prompts
- Integrating geographic and cultural metadata referents into analyses, where available
- Building a lightweight interface for navigating schema-encoded myths

GLOS is a toolmaking project, grounded in a geographical view of stories and a computational view of cultural concepts. It is not folklore theory, and it is not anthropology. But it may hopefully become a meaningful contribution to how we might structure and compare the conceptual content of narratives at scale. NB. The use of the generic term "stories" is deliberate - there are many other kinds to consider!

## Postscript
I am aware that this work raises questions—about the role of AI in interpretive scholarship, about cultural specificity and universality, and about the appropriateness of schema models for complex cultural forms. These are not afterthoughts but part of the project’s evolving architecture. I welcome critical perspectives, and I am grateful for those already offered.
