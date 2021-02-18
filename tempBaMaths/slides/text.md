
# introduction

We define a $d$-dimensional affine space $V$ and consider the set of points which lie in the set
    \[V_d := \set{\sum_{i = 1}^d a_i v_i; a_i \in \Integer, \quad 1 \leq i \leq d},\]
    where $\set{v_i; 1 \leq i \leq d}$ are linear independent vectors in $V$. 
    We also call the point in $V_d$ as \emph{lattice} points.
    We now want to find out the minimum of the number $f$ \sothat given $f$ sequences in $V_d$, we can guarantee to find out a subsequence of length $n$, \sothat the centroid of this 
    subsequence is also a lattice point. We define such minimum number as $f(n,d)$.
    % The element of $G$ will be treated as a lattice point. We define the number $f(n,d)$ as the smallest number \sothat for all 
    % sequence of elements in $G$, with length greater or equal to $f(n,d)$, we can find a 

    

    Consider the additive group $G:= \IntegerP{n}^d$.
    We call a subsequence of length $n$, which 
    sums to a $0$ in $\IntegerP{n}^d$ as 
    \zeroSumSeq{n}, where $0$ denotes the zero vector
     in $G$.  
    We define a second problem, Find the 
    number $f(n,d)$, \sothat 
    for any sequences of elements in $G$, with 
    length $l \geq f(n,d)$, there exists a \zeroSumSeq{n}.

    Note that here I have abused the same notation f(n,d), because we could easily see that the problem 1.1, where we find the number s.t. the centroid is also a lattice point and problem 1.2, where we find a zero-sum sequence are equivalent. Because we just need to consider the coordinate in Vd in problem 1.1 and do modulo calculation.

    Since given a sequence of elements in $G$, it is possible that the sequence contains multiple identical elements. so in order to deal neatly with these sequences and analysis,I would first introduce some notation for the multisets which are  consistent with that used in the ususal set context. I omit here a formal definition of these operators which you could find them in my thesis because I think we all have a gut feeling of how this should look like and I just illustrate these definitions via examples, to keep it from being unnecessarily complicated. And I think you could all understand what these operators are defined via the examples.
    

