---
layout: page
title: COELHO Agents
description: February 2025
img: assets/img/coelho_agents_logo.png
date: 2025-02-17
category: work
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHOAgents))

COELHO Agents is my project involving AI Autonomous Agents with three functionalities:

**1) Simple Assistant:** A simple chatbot with memory and real-time response
**2) Software Developer:** Tool formed by AI Agents to generate software code and to run this generated code, with cycles of code fixing autonomously.
**3) YouTube Content Search:** A distinguished tool that extracts YouTube videos transcriptions and use Knowledge Graph to get important informations and to store it into a graph database (Neo4J). The main advantage of this tool is that you can extract specific informations coming from personal points of views, which are not available on Google search, that doesn't index YouTube videos transcriptions.

This project was built using Streamlit to get the interface, LangChain to build each AI Agent, and LangGraph to build each Multi-Agent approaches. In addition, it's used Neo4J to store entities and relationships among them in order to build a GraphRAG with Knowledge Graph.

<div style="width: 100%; margin-bottom: 20px;">
    <div style="position: relative; width: 100%; padding-bottom: 56.25%; height: 0; overflow: hidden;">
        <iframe
            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
            src="https://www.youtube.com/embed/lxXcUA0jmcM"
            title="COELHO Agents - Project Presentation"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen>
        </iframe>
    </div>
</div>