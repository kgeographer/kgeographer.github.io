Title: GLOS: A Geographer’s Computational Journey into Story
Date: 2025-06-11
Category: research
Tags: folklore, place, AI
Slug: glos_june2025
Authors: Karl Grossner
Summary: Status update on the Geographic Lens on Stories (GLOS) project, co-authored with ChatGPT. It explores the digitization of folklore indexes and the analysis of creation myths, using computational methods to reveal cultural patterns.

_This post is co-authored with ChatGPT, as promised._

---

## Introduction

In a recent post, I described how large language models (LLMs) and chatbots like ChatGPT have begun playing a role in my work. This is the follow-up I promised—a deeper look into that work itself. It’s called **GLOS**, short for **Geographic Lens on Stories**. What began as vaguely formed ideas about applying computational methods to cultural narrative has taken on shape, tools, and even a kind of mission.

As a retired geographer with a lifelong interest in folklore and myth, and not a trained folklorist, I approach this as a professional interloper—albeit a respectful one. GLOS isn’t a grant-funded lab project; it’s a post-career intellectual venture shaped by curiosity, technical skills, and the freedom to explore.

---

## What Is GLOS?

At its core, GLOS asks a set of simple but ambitious questions:

> Can computational methods help reveal cultural, geographic, and conceptual patterns in traditional stories? And, are stories dimensions of place?

To explore this, GLOS is unfolding in and across **two interrelated phases**:

- **Phase A**: Digitizing and computationally modeling existing reference systems in folkloristics (ATU and TMI)
- **Phase B**: Building a structured, analyzable corpus of global **creation myths**

The two phases are not strictly sequential—they proceed in parallel, informing and shaping each other as they go.

---

## Phase A: Indexing the Indexes

The starting point was to bring structure and semantic accessibility to two foundational resources in folk narrative studies:

- **The Aarne–Thompson–Uther (ATU) Index**: classifying folktales by tale type
- **The Thompson Motif Index (TMI)**: a massive catalog of narrative elements, or motifs

Harvard's [Library Research Guide for Folklore and Mythology](Library Research Guide for Folklore and Mythology) outlines the structure of both of these canonical indexes.

These were digitized into a normalized relational database and enriched using machine learning techniques. Specifically, I generated **embeddings** for:

- **46,245 motifs**
- **2,232 tale types**

This set the stage for two early tools. The first was the [**Concept Matcher**](http://glos.kgeographer.org/explore), which allows users to input a snippet of text and retrieve the nearest motifs or tale types in semantic space. While intriguing, it quickly became clear that:

- Motif descriptions are often too short to yield meaningful embeddings
- Precision and recall were mediocre—good enough for a demo, but not for serious inference

This led to a pivot. In response to feedback from academic folklorists, I developed a second tool:

- [**The ATU–TMI Cross-Reference Tool**](http://glos.kgeographer.org/atu_tmi_v2): lets users view tale types alongside the motifs they contain in a structured, explorable interface

This tool will soon be presented informally to folklorists for feedback and further refinement. Phase A, in that sense, is very much ongoing.

---

## Phase B: Creation Myths and Conceptual Modeling

While Phase A engaged with existing reference systems, Phase B turns to narrative itself—specifically, the genre of **creation myths**.

Using Barbara Sproul’s [_Primal Myths: Creation Myths Around the World_](https://www.goodreads.com/book/show/1295530.Primal_Myths) as a source, I've built a curated test corpus of myths from numerous societal traditions. Each was scanned, OCR-processed, cleaned, and structured into JSON-LD files with key metadata. Then came the conceptual modeling.

Using LLMs, I extracted recurring elements from these myths to begin assembling a **draft structured schema and vocabulary**. While not a formal ontology, this preliminary schema has been used to guide an LLM in distinguishing several elements of creation myths:

- Key **events in sequence**
- **Entities** as participants in events, including classes of actors in roles (creator, transformer, rebel, etc.), and various artifacts and natural objects
- **Cosmic structure** (sky, sea, underworld)
- **Thematic dualities** (order/chaos, male/female, light/dark)

It’s a speculative schema, and clearly only applicable at this stage to **creation myths**. But it lays groundwork for a kind of computational comparative mythology.

Much depends on future expert validation from experts in comparative mythology to determine whether these structures resonate or miss the mark.

---

## Looking Ahead: Retrieval, Visualization, and Place

Three significant methodological tracks apart from refinement of the schema-induction experiments are in GLOS’s future.

### Refining the Schema Induction method
Early results from **Phase B** are promising, yet underscore the need for deeper experimentation. Upcoming work will explore tools like BERTopic, Stanford’s LLOOM package for concept induction, and other unsupervised methods to identify, cluster, and validate conceptual components across myth texts. The goal is to move toward a reusable, structured schema capable of supporting large-scale cross-cultural comparisons.
	
### Retrieval-Augmented Generation (RAG)

RAG allows language models to incorporate external knowledge in real-time, and it’s a promising way to improve LLM reasoning across the GLOS corpus. Instead of relying purely on embedding similarity, RAG workflows can support question answering, summarization, or inference grounded in structured data.

### Geography and Visualization

The **geographic** component of GLOS—its namesake lens—is both central and complex. Cultural metadata for tales and myths varies widely: sometimes it's a country, sometimes a language family, a religion, or a historical polity.

While this diversity resists clean mapping, it doesn’t preclude it. There **will be** geographic maps—but they will be embedded in a **dashboard of visualizations**, including:

- Thematic clustering
- Narrative structure maps
- Motif density distributions
- Cross-cultural timelines

Together, these will offer multiple ways to “see” how stories are structured and shared across cultures and regions.

---

## Why Do This?

Because it’s deeply interesting.

Because the stories people tell—about the beginning of the world and of particular societies, the meaning of life and death, the sources of knowledge—are variously universal and profoundly local.

Because stories may themselves be considered and analyzed as **dimensions of place**.

And because the tools now available to us—LLMs, embeddings, RAG, semantic visualization—create a new frontier for exploring these stories at scale.

GLOS is also becoming a **meta-project**, one that will evaluate the performance of AI models in aspects of the humanities. Can LLMs meaningfully support cultural analysis? Where do they falter? This evaluative angle may become one of the project’s most significant contributions.

---

## Co-Authoring with ChatGPT

This blog post—like much of GLOS—is co-authored with a chatbot. That’s not a gimmick, and it’s not outsourcing. It’s a method.

ChatGPT acts as an idea bouncer, a paragraph generator, a software design and coding assistant, and sometimes a devil’s advocate. It doesn’t know what myths _mean_, but it can help me sort them, structure them, and propose ways to think about them.

This post was written through dialogue—my prompts, my revisions, my judgment—but its speed and shape were made possible by AI.

---

## What’s Next?

- Expand the myth corpus, especially with better cultural metadata
- Refine the conceptual schema with feedback from scholars and new methods
- Build out RAG-based tools for interacting with the data
- Develop the visualization dashboard, including geographic maps
- Continue probing the limits and affordances of AI in folklore research
- Invite collaborators from digital humanities, folklore, and geography

---

## Closing

GLOS is an evolving experimental project, but has already shown (me) that traditional stories, approached computationally, yield surprising structures and fascinating patterns.

For more, visit:

- 🌐 [glos.kgeographer.org](https://glos.kgeographer.org)  
- 🧾 [GLOS on GitHub](https://github.com/kgeographer/glos)

Inquiries of all kinds always welcome: karl[at]kgeographer[dot]org

