---
layout: page
title: COELHO Finance
description: September 2023
img: assets/img/coelho_finance_logo.png
date: 2023-09-01
category: work
#related_publications: true
slides_count: 15
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHOFinance) / [Streamlit](https://coelhofinance.streamlit.app/) / [Presentation](../../assets/pdf/COELHOFinance.pdf)) 
<br><br>
Get to know COELHO Finance, a new powerful tool to help you make informed investment decisions, track your investments and identify opportunities. With COELHO Finance, you can have the confidence to take control of your finances and achieve your investment goals.
<br><br>
This Financial Market platform was developed with the intention of being a personal portfolio project to test lots of Data Science, Machine Learning and Artificial Intelligence tools and frameworks applied to Financial Market. For now, the access to the platform is free.

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/COELHOFinance/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/COELHOFinance/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>
