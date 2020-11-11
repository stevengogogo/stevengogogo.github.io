---
title: "{{ replace .Name "-" " " | title }}" # Title of the blog post.
date: {{ .Date }} # Date of post creation.
description: "Article description." # Description used for search engine.
featured: false # Sets if post is a featured post, making appear on the home page side bar.
draft: false # Sets whether to render this page. Draft of true will not be rendered.
toc: true # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
featureImage: "" # Sets featured image on blog post.
thumbnail: "" # Sets thumbnail image appearing inside card on homepage.
shareImage: "" # Designate a separate image for social media sharing.
categories: []
tags: []
comment: false # Disable comment if false.
---

**Insert Lead paragraph here.**

<!--more-->