# To do

1. Plunnecke Rusza inequality, [here](http://www.math.cmu.edu/users/af1p/Teaching/AdditiveCombinatorics/Additive-Combinatorics.pdf)
2. 

## command
1. note that the command `\wlog` is predefined in latex, but not the meanign of without loss of generality, but 
> Write string to the log file
see e.g. [here](https://latexref.xyz/_005cwlog.html).

## resources
* [cayley graph](https://math.osu.edu/sites/math.osu.edu/files/Cayley.pdf)
* [characters](https://people.eecs.berkeley.edu/~luca/expanders2016/lecture15.pdf)
* [graph theory intro](https://kevintshoemaker.github.io/NRES-746/graph.theory.html)
* [chevalley-warning theorem](http://math.uga.edu/~pete/4400ChevalleyWarning.pdf)
* [graph theory eigenvalues](http://www.math.caltech.edu/~2014-15/2term/ma006b/23%20spectral%203.pdf)
* [plünnecke-type estimates](https://arxiv.org/pdf/1101.3507.pdf)
* [which graphs are cayley](https://mathoverflow.net/questions/14830/which-graphs-are-cayley-graphs)
* [cayley graph for abelian group](https://people.eecs.berkeley.edu/~luca/expanders2016/lecture15.pdf)
* [graph partitioning](https://people.eecs.berkeley.edu/~luca/expanders2016/)
* [cheeger inequality](https://people.eecs.berkeley.edu/~luca/expanders2016/lecture03.pdf), [intro](https://people.eecs.berkeley.edu/~luca/expanders2016/lecture01.pdf)

# tex

1. [stack multilines under sum symbol](https://tex.stackexchange.com/questions/80460/expression-under-summation-on-multiple-lines), use `\sum_{\substack{some things}}`
2. [vertical bar for set condition and abs](https://tex.stackexchange.com/questions/187162/vertical-bar-for-absolute-value-and-conditional-expectation)
I have used the code 

```latex
\usepackage{mathtools,nccmath}%
\usepackage{ etoolbox, xparse} 

\DeclarePairedDelimiterX{\abs}[1]\lvert\rvert{\ifblank{#1}{\,\cdot\,}{#1}}

\let\oldabs\abs
\def\abs{\futurelet\testchar\MaybeOptArgAbs}
\def\MaybeOptArgAbs{\ifx[\testchar\let\next\OptArgAbs
\else \let\next\NoOptArgAbs\fi \next}
\def\OptArgAbs[#1]#2{\oldabs[#1]{#2}}
\def\NoOptArgAbs#1{\ifblank{#1}{\oldabs{}}{\oldabs[\big]{#1}}}

\def\Abs{\oldabs*}

\DeclarePairedDelimiterX{\set}[1]\{\}{\setargs{#1}}
\NewDocumentCommand{\setargs}{>{\SplitArgument{1}{;}}m}
{\setargsaux#1}
\NewDocumentCommand{\setargsaux}{mm}
{\IfNoValueTF{#2}{#1}{\nonscript\,#1\nonscript\;\delimsize\vert\nonscript\:\allowbreak #2\nonscript\,}}
%%% Syntaxe : \set{x ; P(x)})
\let\oldset\set
\def\set{\futurelet\testchar\MaybeOptArgSet}
\def\MaybeOptArgSet{\ifx[\testchar \let\next\OptArgSet
\else \let\next\NoOptArgSet \fi \next}
\def\OptArgSet[#1]#2{\oldset[#1]{#2}}
\def\NoOptArgSet#1{\OptArgSet[\big]{#1}}

\def\Set{\oldset*}%
```

see also [here](https://tex.stackexchange.com/questions/43008/absolute-value-symbols) for more info, the `\mid` can be used as a simple set condition command.

3. [fancy chapter](https://texblog.org/2012/07/03/fancy-latex-chapter-styles/) also [here](https://tex.stackexchange.com/questions/408382/memoir-how-to-make-makechapterstyle-aware-if-chapter-title-is-in-frontmatter)
4. [multiple default parameters](http://www.texfaq.org/FAQ-twooptarg#:~:text=LaTeX%20allows%20commands%20with%20a,have%20an%20argument%20of%20Default%20.)
5. [enumerate label](https://tex.stackexchange.com/questions/2291/how-do-i-change-the-enumerate-list-format-to-use-letters-instead-of-the-defaul)

**Need to use `\usepackage{enumitem}`**

```tex
\newenvironment{case}
    {\begin{enumerate}[label = \textbf{Case }{\arabic* }:]}
        {\end{enumerate}}
``` 

Note that from the book `\begin{enumerate}[\upshape (i)]` is useless.  

after first compiling

the enumeration will leads to sth like `i ... i... i..` the reason lies in the code :

```latex
\usepackage{enumitem}
\newenvironment{enumeratei}{\begin{enumerate}[label = (\roman{enumii})]}
            {\end{enumerate}}
```

simply use `label = (i)` will not increase the label `i, ii, iii` but will always use `i`, so need to change that to `\roman{enumi}`. 

After modification, the enumeration still shows `i ... i ... i` 

The final correct version:

```latex
\newenvironment{enumeratei}{\begin{enumerate}[label = (\roman{enumii})]}
            {\end{enumerate}}
```

The reason might be the place where I used the `enumeratei` is encapsuluated in a enumerate item, so it is a second order enumeration, thus need to use `enumii` instead of `enumi` to customize the labeling.

6. If want the subscript directly below the union symbol should use `\bigcup` instead of `\cup`, see [here](https://tex.stackexchange.com/questions/205125/formatting-the-union-of-sets)

7. [round to ceil](https://tex.stackexchange.com/questions/433101/rounding-to-nearest-integer-symbol-in-latex), use 

```latex
\usepackage{mathtools}

\DeclarePairedDelimiter{\roundCeil}\lceil\rceil
```

8. [contradiction symbol](https://tex.stackexchange.com/questions/148757/why-is-blitza-displayed-as-a-psi-in-beamer)

use 

```latex
\usepackage{wasysym}
\lightning 
```

or 

```latex
\usepackage{stmaryrd}
$\lightning$ 
```

9. [align* show one tag at the end](https://tex.stackexchange.com/questions/42726/align-but-show-one-equation-number-at-the-end) and [the correct solution here](https://tex.stackexchange.com/questions/66759/make-align-number-the-last-equation/66766)

```latex
        \begin{equation}\label{somelabel}
            \begin{aligned}[b]
                ... some usual equations here...
            \end{aligned}
        \end{equation}
```

10. [equation with apostrophe](https://tex.stackexchange.com/questions/132401/equation-number-with-an-apostrophe)

```latex
        \begin{align}
            \fnd{pq}{d} \leq \fnd{q}{d} + q(\fnd{p}{d} - 1)\tag{\ref{eqn:fndProp2}'}\label{eqn:fndProp2_prime}
        \end{align}
```

It seems that use `\tag{\ref{eqn:fndProp2}\prime}` does not work. 
Correct version : `\tag{$\ref{eqn:fndProp2}^\prime$`, so need to use the maths mode. 
We could also move the label to the beginning of the environment, so

Alternative:

```latex
        \begin{align}\label{eqn:fndProp2_prime}
            \fnd{pq}{d} \leq \fnd{q}{d} + q(\fnd{p}{d} - 1)\tag{$\ref{eqn:fndProp2}^\prime$}
        \end{align}
```

Note that use `equation` would also work:

```latex
        \begin{equation}\label{eqn:fndProp2_prime}
            \fnd{pq}{d} \leq \fnd{p}{d} + p(\fnd{q}{d} - 1)\tag{\ref{eqn:fndProp2}'}
        \end{equation}

```

11. [really wide hat](https://tex.stackexchange.com/questions/100574/really-wide-hat-symbol/101136)

12. [bibtex url](https://tex.stackexchange.com/questions/3587/how-can-i-use-bibtex-to-cite-a-web-page) and [here](https://engineering.purdue.edu/~mark/puthesis/faq/cite-url/)

Do not forget to use `\usepackage{url}`

```latex
@misc{ruszaPDF,
  title={Sumsets and structure},
  author={Imre Z. Ruzsa},
  howpublished = {\url{http://www.math.cmu.edu/users/af1p/Teaching/AdditiveCombinatorics/Additive-Combinatorics.pdf}},
  note={Accessed: 2021-1-4}
}
```


# Presentation

* [beamer theorem numbering](https://sites.google.com/site/descriptorkyp/interests/latex/beamerwiththeoremnumbers)

Note that default will include the beamer self defined theorem environment, so it's better to use `\documentclass[notheorems, envcountsect]{beamer}` at the beginning and then define the theorem environment on one's own.

See also [here](https://tex.stackexchange.com/questions/188379/theorem-numbering-in-beamer) and [here](https://latex.org/forum/viewtopic.php?t=6276) 

* [theorem without numbering](https://tex.stackexchange.com/questions/30033/theorem-without-numbering/30040) so use `\newcommand*{goal}{Goal}` for example. [extra, custom numbering](https://tex.stackexchange.com/questions/53978/custom-theorem-numbering)