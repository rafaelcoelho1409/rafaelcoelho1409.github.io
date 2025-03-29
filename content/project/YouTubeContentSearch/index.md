---
title: YouTube Content Search
date: 2025-03-28
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/YouTubeContentSearch) / [Presentation](../../uploads/YouTubeContentSearch.pdf)) 
<br><br>
<b>YouTube Content Search</b> is a platform that leverages the power of AI Agents using LangChain and LangGraph to get important informations from YouTube videos, by extracting relationships between entities (Knowledge Graph) identified from video transcriptions and by storing these informations into a Graph Database called Neo4J.<br><br>
<b>Knowledge Graphs</b> enable more precise information retrieval than traditional RAGs with vector databases by explicitly modeling relationships between entities. Unlike vector-based RAG, which relies on semantic similarity, KGs structurally capture connections (e.g., 'X works_for Y → Y located_in Z'), allowing for accurate, multi-hop reasoning and logically consistent answers. This makes KGs superior for complex queries requiring relational understanding.<br><br>
<hr>
YouTube Content Search is a platform that connects the user to open source Large Language Models like Llama 3.1 (Meta), Gemma 2 (Google), and others through services like Groq and OpenAI. By using this platform, you can search for informations through 4 options:<br>
<b>1) Search</b>: The Search option calls AI Agents to search for videos autonomously, based on the context and filters the user provides.<br>
<b>2) Video</b>: The Video option extract the informations from a specific video requested by user.<br>
<b>3) Channel</b>: The Channel option calls AI Agents to retrieve informations from video transcriptions of a YouTube channel that the user has interest to know more about.<br>
<b>4) Playlist</b>: The Playlist option works in a similar way that Channel options does, but retrieving transcription informations coming from YouTube playlists instead.<br><br>
And all these options allows the user to ask anything it wants about the videos transcriptions obtained and processed by AI Agents, and one of these AI Agents will answer accurately the questions by consulting and retrieving its own Knowledge Graph.



<!--more-->
