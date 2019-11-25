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
### display math environment should end with $$
it's possible that there is a extra new line at the end of the block. Deleting the extraneous line would clear the issue

### drawing the icosahedron
here is a link [to draw a icosahedron](https://tex.stackexchange.com/questions/88760/how-to-draw-an-icosahedron) or [to draw a polyhedra](https://tex.stackexchange.com/questions/17204/drawing-polyhedra-using-tikz-with-semi-transparent-and-shading-effect)
### labeling the icosahedron
the `tikzpicture` alone cannot be numbered, so capsulate it into a figure and number it. To follow the numbering of theorems, using the same technique as in equation. `\numberwithin`
### positioning the icosahedron
use the `\begin{center}` command, here is [a similar question](https://tex.stackexchange.com/questions/8625/force-figure-placement-in-text)
### matrix 
to print different parentheses, using `\left [` for example

### align and equation
cannot embed `align` in an `equation` command

### multiple lines in the summation index
use `\substack` command, e.g
```
G_k(\tau) \; = \sum_{\substack{(m,n) \in \Integer^2\\				 (m,n) \neq (0,0)}} \frac{1}{(m\tau + n)^k}
```

### fontsize
dont use `mbox` since it will not consider the font size in the context, use `\text` instead

### numerating with different symbols
use for example `\begin{enumerate}[i)]`

### Too many math alphabet
I guess it's because too many fontstyle in an environment. Be thrifty. Here is a link to [a similar question](https://tex.stackexchange.com/questions/3676/too-many-math-alphabets-error)
### Problems
*
```
\newcommand{\steinerSystem}[3]{\ensuremath{{S(#1,#2,#3)}}}
```  
won't print like t+1 just print t 1
* the figure and the label not aligned

* 
One solution for typing non-equivalent sign
```
\usepackage{unicode-math}
```  
error:
```
/usr/local/texlive/2018/texmf-dist/tex/latex/unicode-math/unicode-math.sty:35: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! [  }]

*
```
LaTeX Font Warning: Size substitutions with differences(Font) up to 0.43996pt have occurred.
```
```

### omitting the date 
use `\date{}`

###  customize contents setting
here is a link to [content customization](https://tex.stackexchange.com/questions/157396/formatting-of-the-table-of-contents)  
In the code , I use
```
\usepackage{titletoc}
....

\dottedcontents{section}[0em]{\bfseries}{2.9em}{1pc}
\dottedcontents{subsection}[0em]{}{3.3em}{1pc}
```

### draw horizontal line
```
\begin{center}
\line(1,0){500}
\end{center}
```

### page layout
* to reduce top margin
```
\setlength{\topmargin}{0pt}
```  
* to reduce the space to the top edge
```
\setlength{\voffset}{-0.75in}
```  
here is a [link](https://tex.stackexchange.com/questions/62448/remove-vertical-space-at-start-of-latex-document)  
here is another link [setting margin](https://tex.stackexchange.com/questions/46175/setting-exact-margins)  
I have used
```
\usepackage[left=2cm, right=2cm, top=2cm]{geometry}
```