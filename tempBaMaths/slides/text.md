
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
    

# kemnitz proof


There are in all three cases:
\item $p$ of them are $1$: 
        This corresponds to $p$ of the $x_i$ are non-zero. We enumerate them as $x_{i_1},\ldots,x_{i_p}$.
        In order for this particular assignment to be the common zero, it needs to satisfy
        \[\sum_{j = 1}^{p} a_{i_j} \equiv 0, \quad \sum_{j = 1}^{p} b_{i_j} \equiv 0.\]
        The total number the set $\{i_1,\ldots, i_p \}$ is exactly $\numSumSubset{p}{J}$.
        Combining the fact that there are $p-1$ possible value for each $x_i$ s.t $x_i^{p-1} \equiv 1$,
        the total number of common zeros with $p$ non-zero entries is $(p-1)^p \numSumSubset{p}{J}$.
        \item $2p$ of them are $1$:\\
        Arguing similarly as in the second case, we obtain the total number of common zeros with $2p$ non-zero entries 
        is given by $(p-1)^{2p}\numSumSubset{2p}{J}$.
        



        This corresponds to the case where there needs to be a $p-1$ elements in $J$ which form a zero-sum.
        There are in all 


    
  \frametitle{Proof of Corollary 3.6}
    \begin{proofs}
        Assume that $\numSumSubset{p}{J} = 0$, this means that there are no subsets in $J$, of cardinality $p$ which 
        builds a zero-sum sequence. In particular, if we randomly pick an $x \in J$ and consider the multiset $J-x$, it follows that
        $\numSumSubset{p}{J-x} = 0$. Now, since $\abs{J-x} = 3p-1$, we can apply Corollary~\ref{cor:3pM13pM2_pJE0Imply2P} to obtain that 
        $\numSumSubset{2p}{J-x} \equiv -1$, in particular, this implies that $\numSumSubset{2p}{J-x} > 0$. \\
        We observe that $\forall A \subset J$, \sothat $\sum_{a \in A} a \equiv 0$,
        \begin{align*}
            \sum_{a\in A} a + \sum_{b\in J-A} b = \sum_{j \in J} j &\equiv 0\\
            \Rightarrow \sum_{b \in J-A} b &\equiv 0
        \end{align*}
       
  