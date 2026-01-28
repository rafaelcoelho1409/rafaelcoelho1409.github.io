---
layout: page
title: COELHO RealTime
description: January 2026
img: assets/img/coelho_realtime_logo.jpg
date: 2026-01-27
category: latest
slides_count: 53
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/COELHORealTime) / [PDF Presentation](../../assets/pdf/COELHORealTime.pdf))

<div style="text-align: center;">
  <img src="../../assets/img/coelho_realtime_logo.jpg" alt="COELHO RealTime" style="max-width: 800px; width: 60%; height: auto;" class="img-fluid rounded z-depth-1">
</div>
  
## Executive Summary

**COELHO RealTime** is a production-grade Real-Time MLOps platform running on Kubernetes that combines incremental machine learning with batch learning to solve three concurrent ML use cases: fraud detection, delivery time prediction, and customer segmentation.

The platform implements a dual ML paradigm where **River ML** handles real-time incremental training directly from Kafka streams, while **CatBoost** and **Scikit-Learn** handle batch training on data accumulated in a Delta Lake. All experiments are tracked with MLflow, models are cached in Redis for low-latency inference, and the entire system is monitored through Prometheus, Grafana, and Alertmanager.

---

## Technology Stack

<style>
.tech-stack-container {
  display: flex;
  flex-wrap: wrap;
  gap: 30px;
  margin: 40px 0;
  justify-content: center;
}

.tech-stack-item {
  width: calc(7.14% - 27px);
  min-width: 100px;
  text-align: center;
}

.tech-stack-item a {
  text-decoration: none;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.tech-stack-item img {
  width: 100%;
  max-width: 100px;
  height: 100px;
  object-fit: contain;
  margin-bottom: 10px;
  transition: transform 0.3s ease;
}

.tech-stack-item img:hover {
  transform: scale(1.1);
}

.tech-stack-item span {
  font-size: 0.85rem;
  font-weight: 500;
  color: var(--global-text-color);
}

@media (max-width: 1400px) {
  .tech-stack-item {
    width: calc(10% - 27px);
  }
}

@media (max-width: 1200px) {
  .tech-stack-item {
    width: calc(12.5% - 26.25px);
  }
}

@media (max-width: 992px) {
  .tech-stack-item {
    width: calc(16.66% - 25px);
  }
}

@media (max-width: 768px) {
  .tech-stack-item {
    width: calc(25% - 22.5px);
  }
}

@media (max-width: 480px) {
  .tech-stack-item {
    width: calc(33.33% - 20px);
  }
}

/* ML Use Case Cards */
.ml-cards {
  display: flex;
  gap: 20px;
  margin: 30px 0;
}

.ml-card {
  flex: 1;
  border-radius: 10px;
  overflow: hidden;
  border: 1px solid var(--global-divider-color, #dee2e6);
  background: var(--global-bg-color, #fff);
}

.ml-card-header {
  padding: 14px 18px;
  color: #fff;
  font-weight: 700;
  font-size: 1.05rem;
  letter-spacing: 0.3px;
}

.ml-card-header.tfd { background: #c0392b; }
.ml-card-header.eta { background: #2980b9; }
.ml-card-header.ecci { background: #27ae60; }

.ml-card-body {
  padding: 0;
}

.ml-card-row {
  display: flex;
  padding: 10px 18px;
  border-bottom: 1px solid var(--global-divider-color, #f0f0f0);
  font-size: 0.9rem;
}

.ml-card-row:last-child {
  border-bottom: none;
}

.ml-card-row:nth-child(even) {
  background: var(--global-code-bg-color, #f8f9fa);
}

.ml-card-label {
  font-weight: 600;
  min-width: 120px;
  color: var(--global-text-color, #333);
}

.ml-card-value {
  color: var(--global-text-color-light, #555);
  flex: 1;
}

.ml-card-value code {
  font-size: 0.82rem;
  padding: 2px 6px;
  border-radius: 4px;
  word-break: break-all;
  overflow-wrap: break-word;
}

@media (max-width: 992px) {
  .ml-cards {
    flex-direction: column;
  }
}

/* Styled Tables */
.styled-table {
  width: 100%;
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.92rem;
  border-radius: 8px;
  overflow: hidden;
  border: 1px solid var(--global-divider-color, #dee2e6);
}

.styled-table thead tr {
  background: var(--global-theme-color, #2c3e50);
  color: #fff;
  text-align: left;
  font-weight: 700;
}

.styled-table th,
.styled-table td {
  padding: 12px 18px;
}

.styled-table tbody tr {
  border-bottom: 1px solid var(--global-divider-color, #f0f0f0);
}

.styled-table tbody tr:nth-child(even) {
  background: var(--global-code-bg-color, #f8f9fa);
}

.styled-table tbody tr:last-child {
  border-bottom: none;
}
</style>

### Python Ecosystem

<div class="tech-stack-container">
  <div class="tech-stack-item">
    <a href="https://www.python.org/doc/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="Python">
      <span>Python</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://fastapi.tiangolo.com/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/fastapi/fastapi-original.svg" alt="FastAPI">
      <span>FastAPI</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://riverml.xyz/" target="_blank">
      <img src="https://avatars.githubusercontent.com/u/47002673?v=4" alt="River">
      <span>River</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://catboost.ai/docs/" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/c/cc/CatBoostLogo.png" alt="CatBoost">
      <span>CatBoost</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://scikit-learn.org/stable/" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg" alt="Scikit-Learn">
      <span>Scikit-Learn</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://duckdb.org/docs/" target="_blank">
      <img src="https://duckdb.org/images/logo-dl/DuckDB_Logo.png" alt="DuckDB">
      <span>DuckDB</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://mlflow.org/docs/latest/index.html" target="_blank">
      <img src="https://mlflow.org/img/mlflow-black.svg" alt="MLflow">
      <span>MLflow</span>
    </a>
  </div>
</div>

### Infrastructure as Code (IaC) & Microservices

<div class="tech-stack-container">
  <div class="tech-stack-item">
    <a href="https://docs.docker.com/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker">
      <span>Docker</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://kubernetes.io/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kubernetes/kubernetes-plain.svg" alt="Kubernetes">
      <span>Kubernetes</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://helm.sh/docs/" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/helm/helm-original.svg" alt="Helm">
      <span>Helm</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://developer.hashicorp.com/terraform/docs" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/terraform/terraform-original.svg" alt="Terraform">
      <span>Terraform</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://k3d.io/stable/" target="_blank">
      <img src="https://k3d.io/stable/static/img/k3d_logo_black_blue.svg" alt="K3D">
      <span>K3D</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://skaffold.dev/docs/" target="_blank">
      <img src="https://raw.githubusercontent.com/GoogleContainerTools/skaffold/main/logo/skaffold.png" alt="Skaffold">
      <span>Skaffold</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://argo-cd.readthedocs.io/en/stable/" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/argocd/argocd-original.svg" alt="ArgoCD">
      <span>ArgoCD</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://docs.gitlab.com" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/gitlab/gitlab-original.svg" alt="GitLab CI">
      <span>GitLab CI</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://kafka.apache.org/documentation/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apachekafka/apachekafka-original.svg" alt="Apache Kafka">
      <span>Apache Kafka</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://spark.apache.org/docs/latest/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apachespark/apachespark-original.svg" alt="Apache Spark">
      <span>Apache Spark</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://delta.io/docs/" target="_blank">
      <img src="https://delta.io/_astro/delta-lake-logo.Dx7tzbyv_1OsUys.svg" alt="Delta Lake">
      <span>Delta Lake</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://min.io/docs/" target="_blank">
      <img src="https://awsmp-logos.s3.amazonaws.com/c6cbc20d-0d79-4256-bbd1-dbb8d219945b/8433cadab9c1c3920e06e695055fb019.png" alt="MinIO">
      <span>MinIO</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://www.postgresql.org/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" alt="PostgreSQL">
      <span>PostgreSQL</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://redis.io/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" alt="Redis">
      <span>Redis</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://prometheus.io/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg" alt="Prometheus">
      <span>Prometheus</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://grafana.com/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg" alt="Grafana">
      <span>Grafana</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://kit.svelte.dev/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/svelte/svelte-original.svg" alt="SvelteKit">
      <span>SvelteKit</span>
    </a>
  </div>
</div>

---

## ML Use Cases

<div class="ml-cards">
  <div class="ml-card">
    <div class="ml-card-header tfd">Transaction Fraud Detection (TFD)</div>
    <div class="ml-card-body">
      <div class="ml-card-row"><span class="ml-card-label">Task</span><span class="ml-card-value">Binary Classification</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Incremental</span><span class="ml-card-value">Adaptive Random Forest Classifier (River)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Batch</span><span class="ml-card-value">CatBoostClassifier</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Metric</span><span class="ml-card-value">F-Beta Score (beta=2.0)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Features</span><span class="ml-card-value">16 (amount, merchant_id, payment_method, device_type, location, etc.)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Kafka Topic</span><span class="ml-card-value"><code>transaction_fraud_detection</code></span></div>
    </div>
  </div>
  <div class="ml-card">
    <div class="ml-card-header eta">Estimated Time of Arrival (ETA)</div>
    <div class="ml-card-body">
      <div class="ml-card-row"><span class="ml-card-label">Task</span><span class="ml-card-value">Regression</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Incremental</span><span class="ml-card-value">Adaptive Random Forest Regressor (River)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Batch</span><span class="ml-card-value">CatBoostRegressor</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Metric</span><span class="ml-card-value">MAE (Mean Absolute Error)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Features</span><span class="ml-card-value">12 (distance, weather, temperature, traffic, driver_rating, etc.)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Kafka Topic</span><span class="ml-card-value"><code>estimated_time_of_arrival</code></span></div>
    </div>
  </div>
  <div class="ml-card">
    <div class="ml-card-header ecci">E-Commerce Customer Interactions (ECCI)</div>
    <div class="ml-card-body">
      <div class="ml-card-row"><span class="ml-card-label">Task</span><span class="ml-card-value">Clustering</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Incremental</span><span class="ml-card-value">DBSTREAM (River)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Batch</span><span class="ml-card-value">KMeans (Scikit-Learn)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Metric</span><span class="ml-card-value">Silhouette Score</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Features</span><span class="ml-card-value">9 (event_type, product_category, price, device_type, browser, etc.)</span></div>
      <div class="ml-card-row"><span class="ml-card-label">Kafka Topic</span><span class="ml-card-value"><code>e_commerce_customer_interactions</code></span></div>
    </div>
  </div>
</div>

---

## Platform Architecture

<img src="../../assets/img/projects/COELHORealTime/coelho_realtime_architecture.png" alt="Platform Architecture" style="max-width: 800px; width: 100%; height: auto;" class="img-fluid rounded z-depth-1">

## Data Flow

1. **Generation** — Kafka Producers generate realistic synthetic data for 3 concurrent use cases using Faker
2. **Streaming** — Data lands in Kafka topics (KRaft mode, 3 partitions each, 1-week retention)
3. **Incremental Processing** — FastAPI consumers read Kafka streams and train River models in real time
4. **Batch Processing** — Spark Structured Streaming writes to Delta Lake on MinIO; DuckDB preprocesses data for CatBoost/Sklearn training
5. **Inference** — Trained models cached in Redis for sub-millisecond predictions
6. **Tracking** — All experiments logged to MLflow with S3 artifacts on MinIO
7. **Monitoring** — Prometheus scrapes metrics from all services; Grafana renders dashboards; Alertmanager fires alerts

## Key Components

### Unified FastAPI Backend

A single service consolidates all ML functionality into **39 endpoints** across three versioned routers:

- **`/api/v1/incremental`** — River ML real-time training, predictions, and metrics (16 endpoints)
- **`/api/v1/batch`** — CatBoost/Sklearn batch training, YellowBrick/Scikit-Plot visualizations (20 endpoints)
- **`/api/v1/sql`** — DuckDB SQL queries against Delta Lake tables (3 endpoints)

Features include MLflow model selection (best model by metric), Redis caching, Prometheus instrumentation, and YellowBrick/Scikit-Plot visualization generation.

### SvelteKit Frontend

A **SvelteKit** frontend with **Plotly.js** visualizations provides an interactive dashboard for training, predictions, and model diagnostics via **YellowBrick**. Project pages for TFD, ETA, and ECCI with nested tabs (Incremental ML / Batch ML / SQL).

### Infrastructure & Deployment

**Development Environment:**

<table class="styled-table">
  <thead>
    <tr><th>Component</th><th>Specification</th></tr>
  </thead>
  <tbody>
    <tr><td><strong>Operating System</strong></td><td>Arch Linux</td></tr>
    <tr><td><strong>RAM</strong></td><td>64 GB</td></tr>
    <tr><td><strong>Processor</strong></td><td>Intel Core i7 11th Generation</td></tr>
    <tr><td><strong>CPU Cores</strong></td><td>8</td></tr>
    <tr><td><strong>Storage</strong></td><td>2 TB SSD NVMe</td></tr>
  </tbody>
</table>

> **Minimum 32 GB RAM required.** The platform runs multiple memory-intensive services concurrently (FastAPI 8 GB, Spark Worker 5 GB, Kafka 2 GB, Prometheus 2 GB, etc.). Systems with less than 32 GB will experience OOMKills and pod restart loops. **64 GB recommended** for comfortable headroom.

The entire platform is deployed on a **k3d Kubernetes** cluster provisioned with **Terraform**, packaged as a **Helm** umbrella chart with 7 dependencies:

<table class="styled-table">
  <thead>
    <tr><th>Dependency</th><th>Version</th><th>Source</th></tr>
  </thead>
  <tbody>
    <tr><td><strong>MLflow</strong></td><td>1.8.1</td><td>community-charts</td></tr>
    <tr><td><strong>Redis</strong></td><td>24.0.8</td><td>Bitnami</td></tr>
    <tr><td><strong>MinIO</strong></td><td>5.4.0</td><td>MinIO Official</td></tr>
    <tr><td><strong>PostgreSQL</strong></td><td>18.1.14</td><td>Bitnami</td></tr>
    <tr><td><strong>kube-prometheus-stack</strong></td><td>80.6.0</td><td>prometheus-community</td></tr>
    <tr><td><strong>Kafka</strong></td><td>32.4.3</td><td>Bitnami</td></tr>
    <tr><td><strong>Spark</strong></td><td>10.0.3</td><td>Bitnami</td></tr>
  </tbody>
</table>

### CI/CD & GitOps

```
Developer Push → GitLab CI Builds Images → Push to Registry
                                                ↓
ArgoCD Auto-Sync ← Git Commit [skip ci] ← ArgoCD Image Updater Detects New Tags
       ↓
 Deploy to Cluster → Prometheus Monitors → Grafana Dashboards → Alertmanager
```

- **GitLab CI**: Automated container image builds on code commits
- **ArgoCD**: GitOps continuous delivery with automated Kubernetes sync
- **ArgoCD Image Updater**: Automatic detection and deployment of new container image versions

---

## Observability

### Prometheus Metrics

**50+ custom metrics** instrumented across all services:

- **FastAPI** — Training status, prediction count/latency/errors, cache hits/misses, model loading duration, MLflow operation duration, SQL query duration, visualization generation time
- **Kafka Producers** — Messages sent, errors, send duration, connection status, retries, fraud ratio (TFD), active sessions (ECCI)

### Grafana Dashboards (11)

All dashboards provisioned via ConfigMaps with sidecar auto-discovery:

1. **COELHORealTime Overview** — Service health, total CPU/RAM aggregate panels with sparklines
2. **ML Pipeline** — Training metrics, predictions, model performance
3. **FastAPI Detailed** — Request latency, error rates, throughput per endpoint
4. **Kafka Producers** — Message rates, send latency, errors, connections
5. **Kafka** — Consumer lag, throughput, partitions
6. **PostgreSQL** — Connections, queries, replication
7. **Redis** — Memory, connections, ops/sec
8. **MinIO** — S3 operations, storage, buckets
9. **Spark** — Performance metrics
10. **Spark Streaming** — Structured streaming metrics
11. **SvelteKit** — Frontend performance

### Alerting

- **30+ Prometheus alerting rules** across 10 rule groups (FastAPI, Kafka, Kafka Producers, MLflow, PostgreSQL, Redis, MinIO, SvelteKit, Spark, Application General)
- **Alertmanager** with routing and inhibition rules
- **Karma** UI for alert visualization
- Pre-configured receivers for Slack, Discord, Email, and PagerDuty


<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/projects/COELHORealTime/slide-0{{ i }}.png{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/projects/COELHORealTime/slide-{{ i }}.png{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>

---
