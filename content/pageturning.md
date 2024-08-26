Title: Turning the page
Date: 2024-08-26 10:00
Category: personal
Tags: personal, research
Slug: page-turning
Authors: Karl Grossner
Summary: Moving on...next phase.

Having moved on from [World Historical Gazetteer](https://whgazetteer.org), I am now experimenting with graphs, discrete global grids (S2 specifically), and various AI techniques, aimed at new approaches to "computing place." Still in "digital nomad" mode, I am writing this from Vienna, Austria where I'll be through October 2024.

## Graphs
I've developed a script to serialize WHG data as turtle RDF, for import into a GraphDB database. Works fine for an initial export of 20k sample records; now to run it for all 2.2 million WHG places. After that I'd like to add all of Getty Thesaurus of Geographic Names (TGN), Wikidata places, and GeoNames. Records for the same place in different datasets will be linked, passively so to speak, by virtue of shared URIs. WHG currently does quite a bit of linking in this way, but a graph database should allow for more sophisticated recursive queries and analytics. If this proves useful, I'll propose it as a new feature for WHG.

## Discrete Global Grids
I've been experimenting with Google's S2 geometry library, which provides a way to index the surface of a sphere. I've begun computing a set of one or more S2 grid IDs for each WHG place, which may prove useful for visualizing the rough extents of historical regions. Early stages, but I'm curious about the possibilities.

## AI
I've begun investigating Retrieval Augmented Generation (RAG) as a method for augmenting prompts made to Large Language models (LLMs), with high quality contextual information. I'm interested in the potential for using this to enhance descriptions of historical places--possibly with with WHG data, but also with other sources.

### Cultural Heritage, NLP and AI
One dataset I've nearly finished developing comprises textual descriptions of UNESCO's 730 Intangible Cultural Heritage (ICH) elements, drawn from short synopses and much longer published nomination documents. Each element is associated with some places or named geographic areas at varying scales. This is a baby step towards a long-held goal of mine: to represent and geographically index cultural practices and traditions, for use in historical research and education. 

There have been advances in topic modeling since I last did several projects using Latent Dirichlet Allocation (LDA). I'm looking forward to trying out some of the newer techniques, and to integrating them with the graph database and S2 grid experiments.

