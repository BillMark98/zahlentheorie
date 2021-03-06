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
* [which graphs are cayley](https://mathoverflow.net/questions/14830/which-graphs-are-cayley-graphs
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

3. 
4. 