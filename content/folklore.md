Title: Another Dimension of Place: Exploring the Geography of Folkloric Motifs
Date: 2024-09-02 13:10
Category: research
Tags: folklore, place, culture
Slug: folklore-vectors
Authors: Karl Grossner
Summary: A prospective project: Geography of Folkloric Motifs

In this new "semi-retirement" phase of my life as a professional geographer and Digital Humanities Research Developer&trade;, I have begun planning an ambitious new project that continues my passion for "computing place." [1] The project will leverage my expertise in geospatial, geo-semantic and textual methods to further develop and explore formalizations of another dimension of place: the folkloric motifs that emerge from and are associated with different regions and societies.

The core of this project involves creating a vector database of embeddings [2] for the approximately 2,500 folklore motifs outlined in the Aarne-Thompson-Uther (ATU) Folkloric Index [3]. With these embeddings, the system can generate a 2,500-dimensional motif "signature" for any given piece of folkloric text. By combining these motif signatures with spatial and temporal metadata, I hope to characterize and compare the conceptual content of folklore as it relates to specific places. The system would be made freely available and its development open to collaboration.

This approach treats the narratives and motifs emerging from a place as essential components of its identity, offering a novel way to describe, compare, and contrast regions based on their folkloric output. The scope would be global. Notwithstanding the extraordinary work in this vein done by Timothy Tangherlini and colleagues over the past two decades [4], I believe that considering the conceptual content of literature and vernacular narrative as a dimension of place is a relatively under-explored notion — certainly at a global scope. I believe it holds great potential for deepening our understanding of how cultural narratives shape and reflect the character of places.

The embeddings for each narrative motif will be generated using a Large Language Model (LLM), prompted with terms from the ATU index to create detailed synopses [5]. An essential early step in this process will be expert evaluation of the material generated by the LLM, leading to refinement of the prompts or, if necessary, reconsideration of the method. My goal is to ensure that the embeddings accurately capture the conceptual content of the ATU motifs they represent.

While my academic background is in Geographic Information Science, my professional journey as a research developer has consistently involved developing models to better represent the dynamic nature of place, in the context of collaborative projects from other fields, including History, Archaeology, Political Science, Literary Studies, and Environmental Science. The recent and ongoing explosion of capabilities in machine learning and generative language models is presenting opportunities for novel approaches to place-based cultural analytics.

I’m reaching out to scholars and practitioners in folklore studies, literary analysis, and related fields to gather preliminary feedback on this initiative. I am certainly not expert in these areas, but rather a methods-focused researcher keen on applying new tools to the study of place. I believe this project has the potential to offer valuable insights into how the stories we tell are tied to the places we inhabit, and I would greatly appreciate your thoughts and advice as I move forward.

---------

[1] my favorite Rumi quote is "Start a huge, foolish project. Like Noah."

[2] Embeddings are a way to represent complex data, like the words and sentences representing concepts, as multi-dimensional vectors (essentially, lists of numbers) in such a way that similar items are closer together in that vector "space." These relative positions capture semantic relationships between concepts in a format that computers can process. A vector database stores these embeddings, allowing for efficient searching and comparison based on their semantics.

[3] See [Library Research Guide for Folklore and Mythology: Tale-Types & Motifs](https://guides.library.harvard.edu/folk_and_myth/indices)

[4] Timothy Tangherlini: [Bio](https://vcresearch.berkeley.edu/faculty/timothy-tangherlini); [academia.edu](https://berkeley.academia.edu/TimothyTangherlini) [Folklore Macroscope Tools](https://scando.ist.berkeley.edu/macroscope.html)

[5] Prompts could take two forms, requesting either 1) a structural description of the motif outlining the essential components and patterns that define it, such as character roles, key events, conflicts, resolutions, and themes, or 2) ann example narrative representative of it. The first is likely to be the most effective.
