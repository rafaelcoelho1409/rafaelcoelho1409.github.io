---
layout: page
title: Formula 1 Analytics
description: November 2023
img: assets/img/f1_home.jpg
date: 2023-11-01
category: work
#giscus_comments: true
slides_count: 19
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/FormulaOneAnalytics) / [Streamlit](https://f1analytics.streamlit.app/) / [Presentation](../../assets/pdf/F1Analytics.pdf)) 
<br><br>
Discover the exhilarating world of Formula One racing like never before with Formula One Analytics, your ultimate destination for everything F1. From the rich history and iconic circuits to in-depth analyses of each season, our Overview section immerses you in the sport's storied legacy.
<br><br>
Dive deeper into detailed statistics and patterns in the Insights section, perfect for enthusiasts ager to understand the nuances of track performances and driver strategies. Stay up-to-date with comprehensive reviews of each season in our Seasons section, offering exclusive insights into key race strategies and driver skills.
<br><br>
And don't miss the revolutionary AI Space, where cutting-edge Machine Learning technology meets the thrill of F1, promising to reshape how we experience this fascinating sport. Join us at Formula One Analytics for a unique journey into the heart of Formula 1 racing, where data-driven excitement meets the roar of the engines! 

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/F1Analytics/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/F1Analytics/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>