---
layout: post
title: Building a local Kubernetes cluster and provisioning DevOps services using Terraform
date: 2025-11-10 00:00:00
description: How to build a local K3D cluster that hosts GitLab, Rancher, ArgoCD and LocalStack
tags: kubernetes k3d terraform helm argocd gitlab rancher localstack devops infrastructure-as-code gitops cicd mlops docker
categories: published-articles
#chart:
#  plotly: true
slides_count: 4
images:
  slider: true
---

Links: ([GitHub](https://github.com/rafaelcoelho1409/K3D))

## Motivation
In the last months, I've worked in some projects involving **Machine Learning** and **DevOps** in the current company I'm working at. In two projects, one involving a recommendation system for job positions and another called **Speech-To-Speech** (**Speech-To-Text** (**STT**) / **Automatic Speech Recognition** (**ASR**) + **Text-To-Speech** (**TTS**)), along with a personal **Real-Time Machine Learning** project that I'm developing and refining in the last months, in my free time.

But while I was working in all these projects, I felt the necessity of replicating a local **Kubernetes** cluster with real-time updates before pushing repos to production stage, so I started using **K3D** and **Skaffold** (which will be present in this future **Real-Time Machine Learning** project).

Along with these tools, I also had the curiosity to simulate a complete local **Kubernetes** cluster with some important **DevOps** tools, like **Rancher**, **ArgoCD**, **GitLab** and **LocalStack**.
So, initially, I started studying **Helm** to install **GitLab** into my local cluster, which I called "master". After this, to improve my **DevOps** skills in order to go towards **MLOps**, I dove deeper and also studied **ArgoCD**, and I could successfully replicate my **Real-Time ML** project in a local **DevOps** environment combining tools like **GitLab CI**, **K3D Registry** and **ArgoCD** all together to have a complete **CI/CD** flow (I'll be describing how I did it later on this article).

As I'm currently using **Arch Linux** as my operational system, I saved all these installation files into .sh files (into "bash" folder), that is good, but brings some problems like "it works on **Linux** but it doesn't work on **Windows**". So I dove a little deeper and studied **Terraform** too. After understand important **Terraform** structures like providers, resources, variables, outputs etc. and commands like "terraform init/plan/apply/destroy", I could get more power to build an "agnostic" solution to set up all these tools in an abstraction layer that can be carried out on OSs like **Linux**, **Windows** or **Mac**. So by using **Terraform**, I could build this structure in a way that it's not necessary to "translate" .sh files (**Linux**) to .bat files (**Windows**), because one of the purposes of **Terraform** is exactly this abstraction layer that can guarantee reproducibility in different operational systems, avoiding manual installation steps that can crash when there could be some errors in the process of scripts development, for example (files available into "terraform" folder).

**Terraform** is a **Infrastructure-as-Code** (**IaC**) tool that allows you to set up cloud services and infrastructure by using code (.tf files) instead of setting up manually via terminal, for example, making this process much simpler.

One important observation is: you should have a machine with at least 16GB to avoid system crashes. In my local test, my local **K3D** cluster with all these tools installed together (**GitLab** + **Rancher** + **ArgoCD** + **LocalStack**) was spending aroung 10GB RAM memory size, a big portion of these 10GB was being used by **GitLab** tools. Obviously, you can optimize this setup and disable some **GitLab** tools that you won't use editing the values.yaml file (**Helm** values), but in my case, I wanted to reproduce a complete local **CI/CD** environment.  

## DevOps
### Features
- **K3D Cluster**: 1 server + 3 agents with local **Docker** registry
- **ArgoCD**: **GitOps** continuous delivery tool
- **ArgoCD Image Updater**: Automatically updates image tags in **Git**
- **GitLab**: Complete **DevOps** platform with **CI/CD**
- **Rancher**: **Kubernetes** management platform
- **LocalStack**: **AWS** service emulator for local development
  
### Project Architecture
<img src="../../../assets/img/articles/k3d-local-cluster/terraform_k3d_diagram.png" alt="Architecture" style="max-width: 800px; width: 100%; height: auto;" class="img-fluid rounded z-depth-1">

## My Personal Setup
> WARNING: It's highly recommended to have at least 32GB RAM to reproduce this setup, or 16GB if you consider disable some **GitLab** unused features on terraform/modules/gitlab/values.yaml
- Operational System: **Arch Linux**
- RAM size: 64GB
- Processor: **Intel Core i7** 11th Generation
- CPU cores: 8
- Disk size: 2TB (**SSD Nvme**)

## Installation requirements
- [**K3D**](https://k3d.io/stable/#installation)
- [**Docker**](https://docs.docker.com/engine/install/)
- [**Kubernetes**](https://kubernetes.io/docs/tasks/tools/) (OBS: **kubectl** is enough for this case)
- [**Helm**](https://helm.sh/docs/intro/install/)
- [**Terraform**](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Installation steps

### 1. Clone the repo
```bash
git clone https://github.com/rafaelcoelho1409/K3D
```

### 2. Enter the Terraform folder
```bash
cd K3D/terraform
```

### 3. Initialize Terraform
```bash
terraform init
```

### 4. Create the K3D cluster
Instantiate local **K3D** (**Kubernetes**) cluster first to avoid connectivity issues:
```bash
terraform apply -target=module.k3d_cluster
```

### 5. Deploy all services
Instantiate all other services into **K3D** cluster (**GitLab**, **Rancher**, **ArgoCD** and **LocalStack**):
```bash
terraform apply
```

> **WARNING**: This step takes several minutes. Make sure you have enough RAM to avoid crashes.

### 6. Access the services
After deployment completes, you can access all services at the following addresses:

- **Rancher**: http://localhost:7443
- **GitLab**: http://localhost:8090
- **ArgoCD**: http://localhost:9080
- **LocalStack**: http://localhost:4566
- **K3D Registry**: http://localhost:5000

### 7. Retrieve credentials

#### Rancher
- **Username**: `root`
- **Password**:
  ```bash
  kubectl get secret gitlab-gitlab-initial-root-password -n ${NAMESPACE} -o jsonpath='{.data.password}' 2>/dev/null | base64 -d || echo "(not ready yet, check in a few minutes)"
  ```

#### ArgoCD
- **Username**: `admin`
- **Password**:
  ```bash
  kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
  ```

## Results
Some months ago, I started working in a personal **Real-Time Machine Learning** project, which simulates real-time data generators and use this data flow to train **Machine Learning** models in real time (classification, regression and clustering models).

I can't reveal more details about the project yet, but I could connect this project to this complete local **DevOps** structure provisioned by **Terraform**. For example, what I did:  
1) Push the repo to my local **GitLab**  
2) Create a **GitLab CI** Pipeline that builds all my **Docker** images into microservices architecture, and send the built images to **K3D Registry**  
3) Once **ArgoCD Image Updater** detects new versions of **Docker** images, it triggers **ArgoCD** to build all **Kubernetes** resources into this **K3D** cluster and monitor the health of these resources in real-time  
  
Finally, the main purpose was to build a complete CI/CD flow connecting GitLab CI with ArgoCD, and monitoring Kubernetes resources live on Rancher.


<swiper-container keyboard="true" navigation="true" pagination="true" pagination-clickable="true" pagination-dynamic-bullets="true" rewind="true">
  {% for i in (1..page.slides_count) %}
    {% if i < 10 %}
      {% capture slide_path %}assets/img/articles/k3d-local-cluster/slide-0{{ i }}.jpg{% endcapture %}
    {% else %}
      {% capture slide_path %}assets/img/articles/k3d-local-cluster/slide-{{ i }}.jpg{% endcapture %}
    {% endif %}
    <swiper-slide><img src="{{ slide_path | relative_url }}" class="img-fluid rounded z-depth-1" alt="Slide {{ i }}"></swiper-slide>
  {% endfor %}
</swiper-container>

---