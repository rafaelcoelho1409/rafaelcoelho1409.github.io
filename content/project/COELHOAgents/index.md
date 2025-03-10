---
title: COELHO Agents
date: 2025-02-17
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHOAgents) / [Presentation](https://www.youtube.com/watch?v=lxXcUA0jmcM)) 
<br><br>
COELHO Agents is my project involving AI Autonomous Agents with three functionalities:<br>
**1) Simple Assistant:** A simple chatbot with memory and real-time response  
**2) Software Developer:** Tool formed by AI Agents to generate software code and to run this generated code, with cycles of code fixing autonomously.  
**3) YouTube Content Search:** A distinguished tool that extracts YouTube videos transcriptions and use Knowledge Graph to get important informations and to store it into a graph database (Neo4J). The main advantage of this tool is that you can extract specific informations coming from personal points of views, which are not available on Google search, that doesn't index YouTube videos transcriptions.  
<br><br>
This project was built using Streamlit to get the interface, LangChain to build each AI Agent, and LangGraph to build each Multi-Agent approaches. In addition, it's used Neo4J to store entities and relationships among them in order to build a GraphRAG with Knowledge Graph.


<!--more-->
