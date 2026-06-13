Title: Computing Place at six months
Date: 2026-06-13
Slug: computing-place-june2026
Summary: An update on the Computing Place research initiative — current state as of June 2026.
Category: Research
Tags: place, landscape, culture, environment, geohumanities, EDOP, CDOP
Author: Karl Grossner
Status: published

Computing Place is a personal research program I launched in early 2026 following my theoretical "retirement" in 2025. It has two project tracks: **Environmental Dimensions of Place (EDOP)** is in active development; its companion **Cultural Dimensions of Place (CDOP)** is largely deferred, awaiting products of EDOP, which is going well (<a href="/pubs/EDOP_summary_20260608.pdf" target="_blank">EDOP Project Summary</a>). A version 0.3 of an EDOPS environmental signature service is now public in <a href="https://computingplace.org/sandbox/lookup" target="_blank">a sandbox web site</a>, <a href="https://computingplace.org/docs" target="_blank">an operational API</a>, and <a href="https://github.com/kgeographer/edops/" target="_blank">a Github repository</a> hosting code additional documentation.

### _Computing_&nbsp;&nbsp;Place?

Place is a wonderfully vague concept with no single canonical meaning. I view _named places_ principally as Earth locations as experienced by people. Santa Fe, New Mexico (where I am writing this) is a concept held in the minds of everyone who has spent time here, but the form and content of that concept is different for each of us. So from this experiential viewpoint how can place be computed?

As an inveterate traveler I have always been driven to experience places first-hand, trying to improve my understanding of the variety of human experience across the globe. So I fell into academic geography naturally, and my research goals became centered on improving digital models of place to facilitate the exploration, pattern-seeking, and analyses I wanted to undertake. Digital models are expressions of conceptual models, and over time my own conceptual model of the dimensions of place has grown to be very broad. 

Another common conceptualization of place is to me equally valid, holding that Santa Fe is not only a location experienced by people, but also a "thing in the world," albeit a complex one: an ever-changing physical Earth setting with an untold number of physical parts and things lying within its fuzzy borders: physical geography, buildings, trails and roads, people, animals, commodities in transit.

Furthermore, peoples’ experience of place can be, and is routinely, a subject of computational analysis. It has been recorded in tangible creative works including travel writing, novels, descriptive gazetteers, visual arts, and music. Digital tools like natural language processing (NLP), computer vision, and feature extraction can summarize the content of these works formally such that they can be compared and become dimensions of the places they describe or evoke. 

But my conceptual model of computational place does not end there. Events and activity occur in places, and there are empirically grounded formal records of them. Historians catalog events in the course of their work, and anthropologists have cataloged many kinds of cultural practice at places in their fieldwork.

### Environment v. culture

For the Computing Place initiative I have made a division between environmental and cultural dimensions, driven by the need to contain scope and the software engineering principle, “separation of concerns.” The two broad aspects of place are thoroughly entwined, so the division is not strict in practice. Agricultural fields where there were once open grasslands are products of human activity (cultural), and they are also an environmental characteristic of for example a named region – i.e. place – at some time.

This is not a novel observation! Scholars in history, anthropology, archaeology, environmental history, historical ecology, and geography have long studied the relations between environment and culture from distinctive perspectives. Computing Place aims at novel methodology – to make many of those relations formally computable and develop tools and features for an accessible and open web platform.

So EDOPS is being developed as a service delivering computable descriptors of place that are _largely environmental_. CDOP will introduce computable descriptors of place that are _largely cultural_. The hope is they will meet in an analytical space that proves useful for many kinds of investigations.

### Of research goals and EDOPS use cases

EDOPS is intended to support investigations of the relationships between environment and culture-writ-large over time. Like any software project its design will be informed by use cases, and there are many.

The primary initial product of EDOPS is a signature delivered programmatically by an API: request one for a given place – optionally for a given year or time period – and receive an ordered JSON representation of those dimensions of its environmental setting you requested. Given good API documentation, that will suffice for the relatively technologically adept researcher who can design their query, send it in a script, parse the results for their own purposes, and integrate the result in analyses that answer their questions. <a href="https://computingplace.org/api/signature?lat=34.7972&lon=114.3069&bands=ABCDET&level=6&from_year=1000&to_year=1010" target="_blank">An example raw signature: Kaifeng, Northern Song Dynasty in the period 1000-1010 CE</a>. To see how the EDOPS sandbox currently renders one, select an example on the <a href="https://computingplace.org/sandbox/lookup" target="_blank">pilot Lookup page</a>.

There are however many other use cases, including but not limited to:

- Researchers from any discipline who need guidance in designing their API request based on their question(s) and/or assistance generating maps and charts
- Educators and students wishing to explore data and generate maps, charts, or tables on the fly
- Developers of software projects and platforms wishing to consume environmental signatures for their own purposes, for example digital gazetteers
- Any user wishing to generate an interpretation of signature results delivered by a Large Language Model (LLM) API service

### A sandbox and a dashboard and then...

In the early stages of project design, a <a href="https://computingplace.org/sandbox/lookup" target="_blank">public EDOPS sandbox **Lookup** page</a> was developed to test the API's delivery of signatures and experiment with ways to render the data comprehensible in maps and charts. A <a href="https://computingplace.org/sandbox/explorer" target="_blank">new **Explorer** page</a> has been added recently following completion of the Data Characterization phase of work. All work to date and plans for phases to follow are described in the <a href="/pubs/EDOP_summary_20260608.pdf" target="_blank">EDOP Project Summary</a>.

The sandbox will continue to evolve as things progress, but the kinds of features suggested by the uses cases above mean a more polished and elaborate web interface – a platform really -- is necessary. Broadly, a dashboard has to

- guide users in fitting API requests to research questions, with rubrics and worked examples informing their choices of variables and scale
- generate several kinds of outputs for display and download, including JSON signatures, tables, charts and maps

Design and implementation of the dashboard feature is now a key phase in the EDOPS workplan.

### Sustainability

The EDOPS project was initially conceived as a personal one, intended to support only my own research into associations of cultural practices with environmental settings. It is now being supported in part by the Institute for Spatial History Innovation at the University of Pittsburgh (Pitt), with the prospect of the service being hosted for the long term on university infrastructure.

Given that possibility and the elevated importance of the dashboard, development requirements have expanded and become more rigorous. Input from environmental and geographic information scientists is now essential, as is that from spatial humanities practitioners. Towards that end, specialist meetings are planned at intervals during the coming year.

### Postscript: EDOP and Claude

Yes, Claude is involved in Computing Place development, and EDOPS especially. _NB: It did not contribute to this blog post._ I acknowledge there are differences of opinion about the use of AI tools in education and research. To me the appearance of generative AI is reminiscent of the allegory about several blind people experiencing an elephant very differently. Briefly, I think it presents very difficult challenges for educators and many other fields but the capabilities for enhancing software development workflows are undeniable. Even there, there are strong divisions of opinion. For the kind of work I do – research software development – there are few downsides that I can see, _for people (like myself) who already have considerable expertise in all facets of that practice_. That is, nothing that Claude contributes – code, methodological suggestions, conceptual feedback – is swallowed whole. Every response I get from Claude gets my appraisal and discussion or rejection where warranted. The products of EDOPS, and Computing Place generally, are my responsibility to defend, to alter in response to future (human) peer review, and to take primary credit for if and when they are found to be useful. I view this as being PI, and first author.

The positive impact of Claude on my work, particularly following release of Opus 4.7, is difficult to overstate. I believe a project with the scope of EDOPS – let alone Computing Place – would be impossible to take on as a solo researcher without it. It is far from complete, and I hope for human collaborators in time, but taking this to a proof-of-concept potential collaborators can evaluate is a realistic goal thanks to the new agentive AI tools.
