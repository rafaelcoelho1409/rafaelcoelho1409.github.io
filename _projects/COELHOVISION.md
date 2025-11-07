---
layout: page
title: COELHO VISION
description: April 2024
img: assets/img/coelho_vision_logo.jpg
#redirect: https://unsplash.com
date: 2024-04-01
category: work
slides_count: 23
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHOVISION) / [Streamlit](https://coelhovision.streamlit.app/) / [Presentation](../../assets/pdf/COELHOVISION.pdf)) 
<br><br>
COELHO VISION: Revolutionizing Computer Vision
<br><br>
Explore COELHO VISION, a cutting-edge platform utilizing OpenCV, Ultralytics, and MediaPipe for advanced Computer Vision applications. Key offerings include:
<br><br>
1) Object Detection: For object, image classification, and face detection.
2) Image Segmentation: Precise segmentation for detailed image analysis.
3) Pose Estimation: Tools for gesture recognition and motion analysis.
4) Live Camera Integration: Apply these technologies in real-time using your device's camera.
<br><br>
Ideal for developers and tech enthusiasts, COELHO VISION is at the forefront of integrating AI with Computer Vision, providing practical, innovative solutions for digital imagery.
<br><br>
Discover more with COELHO VISION – where technology meets vision.

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/COELHOVISION/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/COELHOVISION/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>