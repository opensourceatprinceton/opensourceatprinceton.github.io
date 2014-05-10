---
layout: default
title: Open Source At Princeton
---

# Welcome to Open Source At Princeton

Open Source at Princeton's mission is to encourage people of all skill levels to contribute to open source in a sustainable way. (Open source refers to large software projects with freely accessible codebases and communities of people that work on the project. Many things we use run on open source, including Firefox, Linux, Raspberry Pi, Eclipse, Chrome, Python, and OpenSSL.)

We've partnered with ThoughtWorks to start a mentoring program for students to contribute to OpenMRS, an open-source electronic medical records platform. We also run workshops with OpenHatch to introduce beginners to open source.

# Want to get involved?

Visit our [Calendar](calendar) to see upcoming meetings and events, and hit up the [Wiki](http://opensourceprinceton.wikidot.com/) for resources and information. Or, if you just want to catch up on what we've been up to, check out our blog:

# Blog

<ul class='blog-list'>
{% for post in site.posts  %}
<li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>