---
title: "Publish a package with Julia" # Title of the blog post.
date: 2020-11-13T16:09:14+08:00 # Date of post creation.
description: "Article description." # Description used for search engine.
featured: false # Sets if post is a featured post, making appear on the home page side bar.
draft: false # Sets whether to render this page. Draft of true will not be rendered.
toc: true # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
featureImage: "https://avatars.githubusercontent.com/u/743164?s=400&v=4" # Sets featured image on blog post.
thumbnail: "https://avatars.githubusercontent.com/u/743164?s=400&v=4" # Sets thumbnail image appearing inside card on homepage.
shareImage: "https://avatars.githubusercontent.com/u/743164?s=400&v=4" # Designate a separate image for social media sharing.
categories: ["Julia-Programming"]
tags: ["DevOps", "Github"]
comment: false # Disable comment if false.
---



> DevOp is a process to organize and publish a workflow. This article summarize the way to publish a Julia package with [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl)

<!--more-->

# Packages you need to publish a package

|Packages|Description|
|:---:|:---:|
|[PkgTemplate.jl](https://github.com/invenia/PkgTemplates.jl)|  Generate a skeleton package with CI/CD |
|[DocumenterTools.jl](https://github.com/JuliaDocs/DocumenterTools.jl)|Generate RSA key to provide documentation deployment with [Github action](https://github.com/features/actions)|

# Procedure

## Deploy a null repository at github

- The repo name should be in the form of `ProjectName.jl` 
- Set `public` for publication.

# Use PkgTemplates.jl to create Pkg Folder

- The following command can intall [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) via [Julia-REPL](https://docs.julialang.org/en/v1/stdlib/REPL/).

```julia
] add PkgTemplates
```

- To compile the package. Simply type

```julia
using PkgTemplates
```

- Later on, use [`Template`](https://invenia.github.io/PkgTemplates.jl/stable/user/#Template-1) to sequenctially manual setting.

```julia
t = Template(;interactive=false:) 
```

In following pattern,

1. Set `github user name`
2. Set `local directory`
3. Set [`codecov`](https://about.codecov.io/)
4. Set `github action (ci.yml)`
5. docs
6. Julia version
7. Test environment: `MacOS, Windows, Linux`

Finally, deploy the package with your `PackageName`.

```julia
t("PackageName")
```

This command can generate the following stucture:

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

## Git Push to upload the package skeleton

Upload the remote server by

```git 
git add.
git commit -a -m "Create Pkg"
git push
```

# Continuous Deployment with DocumenterTools.jl

The documentation can be auto generated from the docstring and the markdown tutorials. To deploy a documentation with github action, [DocumenterTools.jl](https://juliadocs.github.io/Documenter.jl/stable/lib/public/#DocumenterTools.genkeys) is a useful toolkit.

```julia
add DocumenterTools
using DocumenterTools
```

Generate RSA key for Github Action:

```
DocumenterTools.genkeys()
```

The output will looks like

```sh
julia> DocumenterTools.genkeys()
[ Info: add the public key below to https://github.com/$USER/$REPO/settings/keys with read/write access:

ssh-rsa AAAAB3NzaC2yc2EAAAaDAQABAAABAQDrNsUZYBWJtXYUk21wxZbX3KxcH8EqzR3ZdTna0Wgk...jNmUiGEMKrr0aqQMZEL2BG7 username@hostname

[ Info: add a secure environment variable named 'DOCUMENTER_KEY' to https://travis-ci.com/$USER/$REPO/settings (if you deploy using Travis CI) or https://github.com/$USER/$REPO/settings/secrets (if you deploy using GitHub Actions) with value:

LS0tLS1CJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb3dJQkFBS0NBUUVBNnpiRkdXQVZpYlIy...QkVBRWFjY3W9uNjFLaVdOcDU5T2YrUkdmCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==


julia> DocumenterTools.genkeys(user="JuliaDocs", repo="DocumenterTools.jl")
[Info: add the public key below to https://github.com/JuliaDocs/DocumenterTools.jl/settings/keys with read/write access:

ssh-rsa AAAAB3Nza2rNsUZYBWJtX3KxcH8EqzR3ZdTna0Wgk...jNmUiGEMKrr0aMZEL2BG7 username@hostname

[ Info: add a secure environment variable named 'DOCUMENTER_KEY' to https://travis-ci.com/JuliaDocs/DocumenterTools.jl/settings (if you deploy using Travis CI) or https://github.com/JuliaDocs/DocumenterTools.jl/settings/secrets (if you deploy using GitHub Actions) with value:

LSdJTiBSU0FtLS0tLQpNSUlFb3dJQkFBS0NBUUVBNnpiRkdXQVZpYlIy...QkVBRWFBxaW9uNaVdOcDU5T2YrUkdmCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==
```

Github Reposritory Setting
|![Github Reposritory Setting](https://user-images.githubusercontent.com/29009898/99076987-01116880-25f7-11eb-8d03-f8273cc7068b.png)|
|---|


- `SSA` should be put at `Deploy keys` 
    - Select `write/read` 
- `DOCUMENTER_KEY` should be put at `Secrets`



## Github action: Unit-testing and deploy documentation

The file `.github/workflow/ci.yml` generated by `PkgTemplate.jl` can work on Github server

I recomment to generate the documentation at the branch of `gh-pages`. This feature can be modified with `docs/make.jl`.

## Results

You'll see your website at

`username.github.io/PackageName/dev`

You'll see Docuementation 🎉.  Congrats!
