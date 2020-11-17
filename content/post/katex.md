---
author: "Wen-Wei Tseng"
title: "KaTeX support"
date: "2020-11-10"
description: ""
tags: ["Latex", "mhchem", "Hugo usage"]
thumbnail: ""
---

This article showed examples for KaTeX math typesetting.

Examples are taken from [TiddlyWiki5](https://tiddlywiki.com/plugins/tiddlywiki/katex/).

<!--more-->

## Math type setting

See \\( \KaTeX \\) [supported functions](https://katex.org/docs/supported.html) for more details.

```
Inline \\( \KaTeX \\) typesetting.
```

Inline \\( \KaTeX \\) typesetting.

```
$$
f(x) = \int_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
$$
```
$$
f(x) = \int_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
$$

```
$$
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} = 1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}} {1+\frac{e^{-8\pi}} {1+\cdots} } } }
$$
```
$$
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} = 1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}} {1+\frac{e^{-8\pi}} {1+\cdots} } } }
$$


```
$$
1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots = \prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})}, \quad\quad \text{for }\lvert q\rvert<1.
$$
```

$$
1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots = \prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})}, \quad\quad \text{for }\lvert q\rvert<1.
$$

## chemical typesetting

Supported by [mhchem extension](https://mhchem.github.io/MathJax-mhchem/).

```
$$\ce{CO2 + C -> 2 CO}$$
```

$$\ce{CO2 + C -> 2 CO}$$

```
$$
\ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-}
$$
```

$$
\ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-}
$$

```
$$
\ce{x Na(NH4)HPO4 ->[\Delta] (NaPO3)_x + x NH3 ^ + x H2O}
$$
```

$$
\ce{x Na(NH4)HPO4 ->[\Delta] (NaPO3)_x + x NH3 ^ + x H2O}
$$

```
$$
\ce{A\bond{~--}B\bond{~=}C\bond{-~-}D}
$$
```

$$
\ce{A\bond{~--}B\bond{~=}C\bond{-~-}D}
$$

```
$$
\ce{Li^x_{Li,1-2x}Mg^._{Li,x}$V$'_{Li,x}Cl^x_{Cl}}
$$
```

$$
\ce{Li^x_{Li,1-2x}Mg^._{Li,x}$V$'_{Li,x}Cl^x_{Cl}}
$$

```
$$
\ce{Zn^2+  <=>[+ 2OH-][+ 2H+]  $\underset{\text{amphoteres Hydroxid}}{\ce{Zn(OH)2 v}}$  <=>[+ 2OH-][+ 2H+]  $\underset{\text{Hydroxozikat}}{\ce{[Zn(OH)4]^2-}}$}
$$
```

$$
\ce{Zn^2+  <=>[+ 2OH-][+ 2H+]  $\underset{\text{amphoteres Hydroxid}}{\ce{Zn(OH)2 v}}$  <=>[+ 2OH-][+ 2H+]  $\underset{\text{Hydroxozikat}}{\ce{[Zn(OH)4]^2-}}$}
$$

