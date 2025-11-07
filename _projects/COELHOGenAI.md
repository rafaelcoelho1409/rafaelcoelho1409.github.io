---
layout: page
title: COELHO GenAI
description: September 2024
img: assets/img/coelho_genai_logo.png
date: 2024-09-01
category: work
slides_count: 13
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHOGenAI) / [Presentation](../../assets/pdf/COELHOGenAI.pdf))

**COELHO GenAI** is a platform that connects the user to open source Large Language Models like Llama 3.1 (Meta), Gemma 2 (Google), and others through services like Ollama and Groq, allowing user to have his own Language Model interface with privacy using the following tools:

**1) Assistant:** Assistant is a simple chatbot that can answer the questions you have in order to solve problems, have new thoughts and ideas, build new ideas and so on.

**2) Information Retrieval:** Information Retrieval connects user local LLM to online tools, such as DuckDuckGo, Wikipedia, PubMed etc.

**3) Data Science:** Data Science tool allows user to use autonomous AI agents to explore and to make data analysis and data science over data the user supplies to LLM

**4) Document Assistant:** Document Assistant is a powerful tool that gives you the power to analyze documents using Docling and lots of LangChain document loaders, like Wikipedia and dozens of other useful and famous services.

**5) Plan & Solve:** Plan & Solve tool user AI agents to transform the user request into a detailed strategy planner to solve problems given by the user.

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/COELHOGenAI/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/COELHOGenAI/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>

---
