---
title: "第一次寫 Julia 套件就上手" # Title of the blog post.
date: 2020-11-13T16:09:14+08:00 # Date of post creation.
description: "Article description." # Description used for search engine.
featured: false # Sets if post is a featured post, making appear on the home page side bar.
draft: false # Sets whether to render this page. Draft of true will not be rendered.
toc: true # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
featureImage: "" # Sets featured image on blog post.
thumbnail: "" # Sets thumbnail image appearing inside card on homepage.
shareImage: "" # Designate a separate image for social media sharing.
categories: [Julia]
tags: [DevOps, Github]
comment: false # Disable comment if false.
---

> [套件開發 (DevOps)](https://en.wikipedia.org/wiki/DevOps) 是一個將 program 整理與公開使用的一步驟. 這篇文章將講述如何使用 PkgTemplates.jl 和 Github 來公開一個 Julia 套件

<!--more-->

# 名詞解釋

|套件|說明|
|:---:|:---:|
|[PkgTemplate.jl](https://github.com/invenia/PkgTemplates.jl)|  用來產生 Package 架構的套件 |
|[DocumenterTools.jl](https://github.com/JuliaDocs/DocumenterTools.jl)|能夠產生 RSA key 來提供在 Github action 架設文件網頁所需的金鑰|

# 流程

## 在 github 創造 空的 Repository

1. Julia 習慣用: `*.jl` 當 repository 名稱, 並設成 `public`

## 使用 PkgTemplates.jl 產生 Pkg folder 

用以下指令在 `Julia-REPL` 安裝 [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl)

```sh
] add PkgTemplates
```

接下來要輸入兩種方式. 用 [Template](https://invenia.github.io/PkgTemplates.jl/stable/user/#Template-1) 產生執行物件，接著

```julia
using PkgTemplates
t = Template(;interactive=false:) # 問答式輸入
```

1. 輸入 github user name
2. 輸入 local directory
3. 用 codev
4. github action (ci.yml)
5. `docs`
6. Julia 版本
7. 測試系統: `MacOS`, `Windows`, `Linux`

接著

```
t("PackageName")
```

這時會在 `local directory` 產生名為 `PackageName` 的 folder. 這時候會有以下結構

```

- PackageName/
    - src/
        - PackageName.jl
    - test/
        - runtests.jl
    - .github/
        - ci.yml
    - doc/
        - src/
            - index.md
        - make.jl
        - Package.toml
        - Manifest.toml
    - Package.toml
    - Manifest.toml

```

##  git push

送上 remote site

```sh
git add.
git commit -a -m "Create Pkg"
git push
```

## 用 DocumenterTools.jl 產生 RSA 碼

在 `base` 環境安裝 DocumenterTools.jl

[官方文件參考](https://juliadocs.github.io/Documenter.jl/stable/lib/public/#DocumenterTools.genkeys)

```Julia-REPL
] add DocumenterTools
```

```julia
using DocumenterTools
DocumenterTools.genkeys()
```

```sh
julia> DocumenterTools.genkeys()
[ Info: add the public key below to https://github.com/$USER/$REPO/settings/keys with read/write access:

ssh-rsa AAAAB3NzaC2yc2EAAAaDAQABAAABAQDrNsUZYBWJtXYUk21wxZbX3KxcH8EqzR3ZdTna0Wgk...jNmUiGEMKrr0aqQMZEL2BG7 username@hostname

[ Info: add a secure environment variable named 'DOCUMENTER_KEY' to https://travis-ci.com/$USER/$REPO/settings (if you deploy using Travis CI) or https://github.com/$USER/$REPO/settings/secrets (if you deploy using GitHub Actions) with value:

LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb3dJQkFBS0NBUUVBNnpiRkdXQVZpYlIy...QkVBRWFjY3BxaW9uNjFLaVdOcDU5T2YrUkdmCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==


julia> DocumenterTools.genkeys(user="JuliaDocs", repo="DocumenterTools.jl")
[Info: add the public key below to https://github.com/JuliaDocs/DocumenterTools.jl/settings/keys with read/write access:

ssh-rsa AAAAB3NzaC2yc2rNsUZYBWJtX3KxcH8EqzR3ZdTna0Wgk...jNmUiGEMKrr0aqQMZEL2BG7 username@hostname

[ Info: add a secure environment variable named 'DOCUMENTER_KEY' to https://travis-ci.com/JuliaDocs/DocumenterTools.jl/settings (if you deploy using Travis CI) or https://github.com/JuliaDocs/DocumenterTools.jl/settings/secrets (if you deploy using GitHub Actions) with value:

LSdJTiBSU0EgUFtLS0tLQpNSUlFb3dJQkFBS0NBUUVBNnpiRkdXQVZpYlIy...QkVBRWFjY3BxaW9uNaVdOcDU5T2YrUkdmCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==
```

Github Reposritory Setting
|![Github Reposritory Setting](https://user-images.githubusercontent.com/29009898/99076987-01116880-25f7-11eb-8d03-f8273cc7068b.png)|
|---|


- `SSA` 放在 `Deploy keys` 
    - 要將 `write/read` 打勾
- `DOCUMENTER_KEY` 放在 `Secrets`



## Github action: 測試專案 和 deploy documentation

這時候 PkgTemplate 產生 的 `.github/workflow/ci.yml` 會開始在 Github 伺服器運作

建議在 `gh-pages` 產生 Documentation, 這可以在 `make.jl` 確認

## 完成
可以在

`username.github.io/PackageName/dev`

看到 Docuementation. 

---

## Reference