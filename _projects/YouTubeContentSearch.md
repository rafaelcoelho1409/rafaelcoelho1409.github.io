---
layout: page
title: YouTube Content Search
description: March 2025
img: assets/img/YouTubeContentSearch_logo.png
date: 2025-03-28
category: work
slides_count: 20
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/YouTubeContentSearch) / [Presentation](../../assets/pdf/YouTubeContentSearch.pdf))
  
YouTube Content Search is a platform that leverages the power of AI Agents using LangChain and LangGraph to get important informations from YouTube videos, by extracting relationships between entities (Knowledge Graph) identified from video transcriptions and by storing these informations into a Graph Database called Neo4J.

Knowledge Graphs enable more precise information retrieval than traditional RAGs with vector databases by explicitly modeling relationships between entities. Unlike vector-based RAG, which relies on semantic similarity, KGs structurally capture connections (e.g., ‘X works_for Y → Y located_in Z’), allowing for accurate, multi-hop reasoning and logically consistent answers. This makes KGs superior for complex queries requiring relational understanding.


YouTube Content Search is a platform that connects the user to open source Large Language Models like Llama 3.1 (Meta), Gemma 2 (Google), and others through services like Groq and OpenAI. By using this platform, you can search for informations through 4 options:  
**1) Search:** The Search option calls AI Agents to search for videos autonomously, based on the context and filters the user provides.  
**2) Video:** The Video option extract the informations from a specific video requested by user.  
**3) Channel:** The Channel option calls AI Agents to retrieve informations from video transcriptions of a YouTube channel that the user has interest to know more about.  
**4) Playlist:** The Playlist option works in a similar way that Channel options does, but retrieving transcription informations coming from YouTube playlists instead.  

And all these options allows the user to ask anything it wants about the videos transcriptions obtained and processed by AI Agents, and one of these AI Agents will answer accurately the questions by consulting and retrieving its own Knowledge Graph.

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/YouTubeContentSearch/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/YouTubeContentSearch/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>

---