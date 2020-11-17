---
title: "Julia Documentation 與 Literate.jl" # Title of the blog post.
date: 2020-11-16T21:44:26+08:00 # Date of post creation.
description: "Documentation Julia Literate" # Description used for search engine.
featured: false # Sets if post is a featured post, making appear on the home page side bar.
draft: false # Sets whether to render this page. Draft of true will not be rendered.
toc: true # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
featureImage: "" # Sets featured image on blog post.
thumbnail: "" # Sets thumbnail image appearing inside card on homepage.
shareImage: "" # Designate a separate image for social media sharing.
categories: ["julia programming"]
tags: ["DevOPs"]
comment: false # Disable comment if false.
---

Julia Documenter.jl 提供執行文件程式碼的功能。包括繪圖與顯示運算結果，能夠更加豐富的呈現套件使用的方式與檢查範例程式碼的錯誤

<!--more-->

> Examples 是讓使用者能夠直接了解套件如何使用的最佳方法。在 demo 時，除了展現 pipline 外，[Literate.jl](https://fredrikekre.github.io/Literate.jl/v2/) 可以將內文的程式碼運行，來顯示運算結果，甚至是繪圖。這篇 tutorial, 將會快速帶過使用 Literate.jl 支持的語法輔助你的範例程式碼


## 什麼是 Literate.jl?


## 如何使用 Literate.jl 支持的 Syntax

### Julia REPL 模式

```@repl
    using package
```

```sh
    julia> using package
```

### Example 區塊 - 展現 pipline 與運算結果

```
    ```@example name
        # your code
    ```
```

### Setting 區塊 - 為 Example 架設環境


### 如何使用 PyPlot.jl 呈現結果並顯示於網頁上

### Indexing - 自動產生 docstring 與  function 的索引

```md
    ```@index
    ```
```

> **<center>⚠️</center>**
> Submodule 無法被 indexing 偵測到, 必須要分別 `using foo.submodule` 來建立 index




\\(\delta \frac{\Phi}{\phi}\\)