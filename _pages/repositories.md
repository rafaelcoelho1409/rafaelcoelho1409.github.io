---
layout: page
permalink: /repositories/
title: Repositories
#description: Edit the `_data/repositories.yml` and change the `github_users` and `github_repos` lists to include your own GitHub profile and repositories.
nav: true
nav_order: 4
---

{% if site.data.repositories.github_users %}

## GitHub users

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>

---

{% comment %}
{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% include repository/repo_trophies.liquid username=user %}
  </div>

---

{% endfor %}
{% endif %}
{% endcomment %}
{% endif %}

{% if site.data.repositories.github_repos %}

## GitHub Repositories

{% assign repos_by_year = site.data.repositories.github_repos | group_by: "year" | sort: "name" | reverse %}

{% for year_group in repos_by_year %}
  <h3><strong>{{ year_group.name }}</strong></h3>
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% for repo in year_group.items %}
      {% include repository/repo.liquid repository=repo.repo project_name=repo.project_name release_date=repo.release_date key_tools=repo.key_tools %}
    {% endfor %}
  </div>

  ---

{% endfor %}

{% endif %}
