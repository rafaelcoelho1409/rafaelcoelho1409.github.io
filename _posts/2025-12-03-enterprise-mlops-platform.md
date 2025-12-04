---
layout: post
title: Enterprise MLOps Platform - Production Kubernetes Infrastructure with Complete CI/CD, GitOps, and Workflow Orchestration
date: 2025-12-03 00:00:00
description: Production-grade MLOps platform featuring Terraform, Kubernetes (K3D), GitLab, ArgoCD, Airflow, MinIO, and comprehensive infrastructure automation
tags: kubernetes mlops terraform helm argocd gitlab rancher airflow minio postgresql redis devops infrastructure-as-code gitops cicd production enterprise workflow-orchestration
categories: published-articles
slides_count: 9
images:
  slider: true
---

## Executive Summary

This project demonstrates the design and implementation of a production-grade MLOps platform built on Kubernetes infrastructure, showcasing enterprise-level DevOps practices and complete automation workflows. The platform integrates modern cloud-native technologies to deliver end-to-end CI/CD pipelines, GitOps-based deployments, and scalable workflow orchestration for machine learning operations.  
This project represents a significant evolution from the [initial local K3D cluster setup]({% post_url 2025-11-10-k3d-local-cluster %}) post. This time, the source code is not disclosed, as it's a personal project building for a personal use. The main purpose of this article is to show how the project was built and how the results were achieved.

## Business Context

Over the course of several months working on enterprise machine learning projects — including projects like recommendation system for job positions, Speech-To-Speech system (combining Speech-To-Text/Automatic Speech Recognition with Text-To-Speech), and a platform for Agentic AI, along with a personal Real-Time Machine Learning project in development — the need for a robust, production-ready MLOps infrastructure became evident. Additionally, development of a personal Real-Time Machine Learning project required an environment that could replicate production conditions locally while maintaining full CI/CD capabilities.

The challenge was to create a comprehensive platform that could:

- Support real-time development and testing before production deployment
- Provide complete GitOps-based continuous delivery
- Enable automated workflow orchestration for ML pipelines
- Ensure reproducibility across different environments
- Deliver enterprise-grade reliability and scalability

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
</style>

The platform leverages a comprehensive suite of enterprise-grade technologies, each selected for production reliability and scalability:

<div class="tech-stack-container">
  <div class="tech-stack-item">
    <a href="https://developer.hashicorp.com/terraform/docs" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/terraform/terraform-original.svg" alt="Terraform">
      <span>Terraform</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://docs.docker.com/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker">
      <span>Docker</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://k3d.io/stable/" target="_blank">
      <img src="https://k3d.io/stable/static/img/k3d_logo_black_blue.svg" alt="K3D">
      <span>K3D</span>
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
    <a href="https://docs.gitlab.com" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/gitlab/gitlab-original.svg" alt="GitLab">
      <span>GitLab</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://argo-cd.readthedocs.io/en/stable/" target="_blank">
      <img src="https://raw.githubusercontent.com/devicons/devicon/54cfe13ac10eaa1ef817a343ab0a9437eb3c2e08/icons/argocd/argocd-original.svg" alt="ArgoCD">
      <span>ArgoCD</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://airflow.apache.org/docs/" target="_blank">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apacheairflow/apacheairflow-original.svg" alt="Apache Airflow">
      <span>Apache Airflow</span>
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
    <a href="https://rancher.com/docs/" target="_blank">
      <img src="https://rancher.com/docs/img/logo-square.png" alt="Rancher">
      <span>Rancher</span>
    </a>
  </div>
  <div class="tech-stack-item">
    <a href="https://docs.localstack.cloud/" target="_blank">
      <img src="https://avatars.githubusercontent.com/u/28732122?s=280&v=4" alt="LocalStack">
      <span>LocalStack</span>
    </a>
  </div>
</div>

---

## Platform Architecture

### Infrastructure as Code Approach

The entire infrastructure is provisioned using **Terraform**, providing an abstraction layer that ensures reproducibility across different operating systems (Linux, Windows, macOS). This Infrastructure-as-Code approach eliminates manual installation steps and potential configuration drift, critical for enterprise environments.

**Terraform** enables declarative infrastructure management, making it possible to version control the entire platform configuration and maintain consistency across development, staging, and production-like environments.

### Core Platform Components

The platform consists of multiple integrated services, each serving a specific role in the MLOps ecosystem:

#### Container Orchestration Layer

- **K3D Cluster**: Lightweight Kubernetes distribution configured with 1 server node and 3 agent nodes, optimized for local development with production-like characteristics
- **Docker**: Container runtime providing the foundation for all services
- **Helm**: Package manager for Kubernetes, enabling consistent deployment of complex applications
- **K3D Registry**: Local Docker registry for storing and distributing custom container images

#### GitOps & CI/CD Layer

- **GitLab**: Complete DevOps platform providing source control, CI/CD pipelines, and container registry
- **ArgoCD**: GitOps continuous delivery tool that automatically syncs Kubernetes resources from Git repositories
- **ArgoCD Image Updater**: Automated detection and deployment of new container image versions, enabling continuous deployment workflows

#### Workflow Orchestration Layer

- **Apache Airflow**: Production-grade workflow orchestration platform for managing complex ML pipelines and data workflows.
- **Airflow DAG Processor**: Dedicated component for parsing and scheduling workflow definitions
- **Git-Sync**: Automated synchronization of Airflow DAGs from GitLab repositories

#### Data & Storage Layer

- **MinIO**: S3-compatible object storage for ML artifacts, models, datasets, and pipeline outputs
- **PostgreSQL**: Relational database serving as metadata store for Airflow and GitLab
- **Redis**: In-memory data store used for caching and message queuing in workflow execution

#### Management & Monitoring Layer

- **Rancher**: Kubernetes management platform providing centralized cluster monitoring, resource management, and operational insights
- **LocalStack**: AWS service emulator enabling local development and testing of cloud-native applications without external dependencies

### Platform Architecture Diagram

<img src="../../../assets/img/articles/enterprise-mlops-platform/mlops_k3d_architecture.png" alt="MLOps Platform Architecture" style="max-width: 800px; width: 100%; height: auto;" class="img-fluid rounded z-depth-1">

_The architecture demonstrates a complete MLOps ecosystem with Infrastructure-as-Code provisioning, containerized services, GitOps workflows, and automated data pipeline orchestration._

---

## Technical Implementation Highlights

### Infrastructure Specifications

The platform was developed and tested on a high-performance workstation to simulate enterprise production environments:

- **Operating System**: Arch Linux
- **RAM**: 64GB
- **Processor**: Intel Core i7 11th Generation
- **CPU Cores**: 8
- **Storage**: 2TB SSD NVMe

> **Note**: For production replication, a minimum of 16-32GB RAM is recommended depending on enabled services and workload requirements.

### Resource Optimization

The complete platform, including all services (GitLab, Rancher, ArgoCD, Airflow, MinIO, PostgreSQL, Redis, and LocalStack), operates within approximately 6-10GB of RAM. GitLab represents the largest memory footprint, but its individual components can be selectively disabled based on specific use cases, allowing for flexible resource allocation.

### CI/CD Pipeline Integration

The platform implements a complete continuous integration and continuous deployment pipeline:

1. **Source Control**: Code repositories hosted in local GitLab instance
2. **Continuous Integration**: GitLab CI pipelines automatically triggered on code commits
3. **Container Build**: Docker images built within GitLab CI and pushed to K3D Registry
4. **Automated Deployment**: ArgoCD Image Updater detects new image versions in the registry
5. **GitOps Sync**: ArgoCD automatically applies Kubernetes manifests from Git repositories
6. **Health Monitoring**: Rancher provides real-time visibility into deployment health and resource utilization

### Workflow Orchestration

Apache Airflow provides enterprise-grade workflow orchestration capabilities:

- **DAG Management**: Workflow definitions (DAGs) automatically synchronized from GitLab repositories via git-sync sidecar
- **Scalable Execution**: Distributed task execution across Kubernetes pods
- **Data Pipeline Integration**: Direct integration with MinIO for artifact storage and PostgreSQL for metadata management
- **Monitoring & Alerting**: Built-in monitoring of pipeline execution and failure handling

---

## Real-World Application: Real-Time Machine Learning Project

The platform was successfully validated through integration with a Real-Time Machine Learning project that simulates real-time data generation and uses streaming data to train machine learning models (classification, regression, and clustering) in real-time.

### End-to-End Workflow

The complete CI/CD and MLOps workflow demonstrated:

1. **Repository Integration**: ML project repository pushed to local GitLab instance
2. **Automated Build Pipeline**: GitLab CI pipeline configured to build multiple Docker images using microservices architecture
3. **Registry Management**: Built images automatically pushed to K3D Registry with semantic versioning
4. **GitOps Deployment**: ArgoCD Image Updater detects new image versions and triggers automated deployment
5. **Kubernetes Orchestration**: Helm charts define all Kubernetes resources, deployed and managed by ArgoCD
6. **Real-Time Monitoring**: Rancher provides live monitoring of all Kubernetes resources, pod health, and resource consumption
7. **Workflow Execution**: Airflow DAGs orchestrate ML training pipelines, data preprocessing, and model deployment workflows

### Platform Results

<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/articles/enterprise-mlops-platform/slide-0{{ i }}.jpg{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/articles/enterprise-mlops-platform/slide-{{ i }}.jpg{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>

_Screenshots demonstrating the operational platform:<br>
(1) Example of Terraform code excerpt<br>
(2) Example of Helm chart for Airflow API Server<br>
(3) A GitLab repo called DAGs, which will be serving DAGs to Airflow using Git-sync<br>
(4) Example of Airflow DAG<br>
(5) MinIO service<br>
(6) PostgreSQL session via terminal<br>
(7) Redis session via terminal<br>
(8) Rancher UI showing all Helm packages installed into K3D cluster<br>
(9) Project example deployed on ArgoCD<br>_

---

## Key Achievements

### Technical Excellence

- **Complete Automation**: Full infrastructure provisioning automated through Terraform
- **GitOps Implementation**: True GitOps workflow with declarative configuration and automated synchronization
- **Microservices Architecture**: Production-ready microservices deployment patterns
- **Scalable Workflows**: Enterprise-grade workflow orchestration with Apache Airflow

### DevOps Best Practices

- **Infrastructure as Code**: Version-controlled infrastructure ensuring reproducibility
- **Immutable Infrastructure**: Container-based deployments with automated rollbacks
- **Continuous Deployment**: Fully automated deployment pipeline from code commit to production
- **Observability**: Comprehensive monitoring and resource management through Rancher

### MLOps Capabilities

- **End-to-End ML Pipelines**: Complete workflow from data ingestion to model deployment
- **Artifact Management**: S3-compatible object storage for models and datasets
- **Pipeline Orchestration**: Sophisticated DAG-based workflow scheduling and execution
- **Real-Time Processing**: Infrastructure supporting real-time ML model training and inference

## Service Access Points

The platform exposes multiple services through well-defined endpoints:

- **Rancher**: Kubernetes cluster management and monitoring
- **GitLab**: Source control and CI/CD pipelines
- **ArgoCD**: GitOps deployment management
- **Airflow**: Workflow orchestration interface
- **MinIO**: Object storage management console
- **LocalStack**: AWS service emulation endpoints
- **K3D Registry**: Container image registry

## Conclusion

This enterprise MLOps platform demonstrates the successful integration of modern DevOps and MLOps practices, creating a production-grade environment for machine learning operations. By combining Infrastructure-as-Code, GitOps, containerization, and workflow orchestration, the platform delivers:

- **Operational Excellence**: Automated, repeatable, and reliable infrastructure management
- **Development Velocity**: Rapid iteration through complete CI/CD automation
- **Production Readiness**: Enterprise-grade reliability and scalability patterns
- **MLOps Maturity**: End-to-end ML lifecycle management with proper versioning, monitoring, and orchestration

The platform successfully bridges the gap between development and production, enabling data science teams to focus on model development while maintaining enterprise-level operational standards.

---
