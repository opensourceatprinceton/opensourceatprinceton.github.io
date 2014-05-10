---
layout: default
title: Open Source At Princeton - Blog
---

# Blog

<ul class='blog-list'>
{% for post in site.posts  %}
<li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>