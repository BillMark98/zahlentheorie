### using bold symbol in mathmode
using bm package  
`$\bm{t\mbox{-}(v,k,\lambda)}$`
note use `mbox` to display hyphens

### using user defined command with argument
e.g
`\newcommand{\steinerSystem}[3]{\ensuremath{\bm{S(#1,#2,#3)}}}` 

### numerating equation with respect to section
add command 
```
\numberwithin{equation}{section}
```

### to make a new line after definition
use 
```
\hfill
```

### numerating theorem, equation...
e.g.
```
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{Algorithmus}{Algorithmus}
\newtheorem{example}[theorem]{Example}
\newtheorem{collary}[theorem]{Collary}
\numberwithin{equation}{theorem}
```