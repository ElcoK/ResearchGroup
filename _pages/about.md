---
layout: about
title: Home
permalink: /
nav_rank: 1
# sitetitle: true
description: Welcome to the Infrastructure Risk & Resilience Group at the Vrije Universiteit Amsterdam.

news: true # includes a list of news items
projects: true # includes a tile list of projects
supports: true # includes a tile list of supports
selected_papers: false # includes a list of papers marked as "selected={true}"
social: false  # includes social icons at the bottom of the page
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/infra1.jpg" title="Denis Onyodi / IFRC/DRK" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/infra2.jpg" title="USEPA Environmental-Protection-Agency (USA Government Work) / DP" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/infra3.jpg" title="Curt Carnemark / World Bank Photo Collection" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

# Infrastructure Risk & Resilience Lab

Welcome to the Infrastructure Risk & Resilience Group!
We are part of the [Institute for Environmental Studies (IVM)](https://www.ivm.vu.nl/){: target="_blank"} at the [Vrije Universiteit Amsterdam (VUA)](https://www.vu.nl/){: target="_blank"} and have close collaborations with [Deltares](https://www.deltares.nl/){: target="_blank"}, the [Weather & Climate Risk Group](https://wcr.ethz.ch/){: target="_blank"} at ETH Zurich and the [Oxford Programma for Sustainabable Infrastructure Systems (OPSIS)](https://opsis.eci.ox.ac.uk/){: target="_blank"} at the University of Oxford. 

Together we enjoy working on **Infrastructure Risk Modelling**, ranging from improving exposure information through **object-based detection on satellite imagery**, to **network interdependency modelling** and **large-scale risk assessments**.

[Talk to us](mailto:elco.koks@vu.nl) when you are interested in these topics or our work.

{% assign members = site.members | where: "team_frontpage", true | sort: "lastname" %}
<div class="d-flex flex-wrap align-content-stretch justify-content-center m-n2 pt-5 no-gutters">
    {% for member in members %}
        {% assign colsMod6 = forloop.length | modulo: 6 %}
        {% assign colIdMod4 = forloop.index | modulo: 4 %}
        {% if colsMod6 == 1 and colIdMod4 == 1 %}<div class="col-md-2 w-100"></div>{% endif %}
        <div class="col-6 col-sm-3 col-md-2 mb-3">
            <a href="{{ member.url | relative_url }}" class="no-decoration">
                <div class="card hoverable h-100 m-2">
                    <img src="{{ '/assets/img/' | append: member.profile.image | relative_url }}" class="card-img-top" alt="{{ member.profile.name }}" />
                    <div class="card-body p-2">
                        <div class="card-title m-0">{{ member.title }}</div>
                    </div>
                </div>
            </a>
        </div>
    {% endfor %}
</div>
