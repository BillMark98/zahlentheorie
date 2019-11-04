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


### size of matrix
at beginning error
```
! Extra alignment tab has been changed to \cr
```
but when deleting one column ok.  
So need to reset the maxcolumn of matrix 
```
\setcounter{MaxMatrixCols}{20}
```  
here is a link [alignment](https://texfaq.org/FAQ-altabcr)

### align problem
I have the error
```
Package amsmath Error: Erroneous nesting of equation structures;
```
it's because I use like
```
\[
	\begin{align*}

	\end{align*}
\]
```  
Since `\begin` already in math mode, dont need to encapsulate it in a equation environment any more.

### horizontal and vertical lines in matrix

here is a link for [draw lines in matrix](https://tex.stackexchange.com/questions/253739/vertical-and-horizontal-line-in-a-matrix)
### Problems
```
\newcommand{\steinerSystem}[3]{\ensuremath{{S(#1,#2,#3)}}}
```  
won't print like t+1 just print t 1