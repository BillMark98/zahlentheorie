
# Urgent question

usage of f(n,d)

# introduction

To warm up, let us consider $d$-dimensional affine space $V$ and consider the set of points which lie in the set which is spanned by d independent vectors in V_d, with coefficients in integers.
    We also call the point in $V_d$ as \emph{lattice} points.
    
We now want to find out the minimum of the number $f$ so that given $f$ sequences in $V_d$, we can guarantee to find out a subsequence of length $n$, \sothat the centroid of this 
    subsequence is also a lattice point. In other words, if we sum up these n vectors and divide the coefficients by n (so exactly as we do when we calculate centroid), the coefficients are still in integers. We define such minimum number as $f(n,d)$.
    
    So our goal is to study this function and if possible to find out the exact value. As we will see later in the examples, some number is already known for low dimensional case. If not possible, what is upper bound or lower bound of the f(n,d).

    Now I would like to introduce an equivalent formulation of the problem which would ease the later analysis.
    Let us consider the additive group $G:= \IntegerP{n}^d$.
    We call a subsequence of length $n$, which 
    sums to a $0$ in $\IntegerP{n}^d$ as 
    \zeroSumSeq{n}, where $0$ denotes the zero vector
     in $G$.  

    We define a second problem, Find the 
    number $f(n,d)$, (note that I have used the same notation, because it is the same number), such that 
    for any sequences of elements in $G$, with 
    length $l \geq f(n,d)$, there exists a \zeroSumSeq{n}.

    Note that here I have abused the same notation f(n,d), because we could easily see that the problem 1, where we find the number s.t. the centroid is also a lattice point and problem 2, where we find a zero-sum sequence are equivalent. Because we just need to consider the coordinate in Vd in problem 1.1 and do modulo calculation.

    I will mainly discuss the second formulation of the problem.
<!-- 
    Now, since given a sequence of elements in $G$, it is possible that the sequence contains multiple identical elements. so in order to deal neatly with these sequences and analysis,I would first introduce some notation for the multisets which are  consistent with that used in the ususal set context. I omit here a formal definition of these operators which you could find them in my thesis because I think we all have a gut feeling of how this should look like and I just illustrate these definitions via examples, to keep it from being unnecessarily complicated. And I think you could all understand what these operators are defined via the examples.
    
    So given the multiset A and B, the union, intersection and difference is given as the following.
    We could see that for example, the union the number of occurence of an element is the largest among the two multisets and intersection the smallest and difference the difference between the two. -->

    I will first give a natural bound on the number, which will be useful for the case when n is small, as we shall see later in the examples.

    It states that we can bound f(n,d) by the two numbers.
    The proof is very simple, that is why it is called the natural bound.

    For the left inequality, we construct (n-1) 2^d vectors.
    For example, take d = 1, we have (n-1) 1 s and n-1 0s and we would like to form a sequence of n numbers which sum to 0 modulo n. You could easily see that it is not possible. Using an induction argument we could see that it holds also for higher dimension. Thus f(n,d) must be larger than this number.

    For the right inequality, we use the pidgeon hole principle. given (n-1) n^d + 1 elements there are at least one which has a multiplicity given by this which is n, so we have n identical elements which will definitely sum to 0.

    It is generally very difficult to examine f (n, d) for every possible n ∈ N,
thus we would like to restrict n to a smaller set of numbers, for example the
prime numbers. The following Lemma helps us with such reduction.

    Given a number which is a product of p and q. Then it holds that the f(n,d) can be bounded by the two summands.

    The proof is also quite simple. For the notation I use f1 to denote the first summand and f2 to denote f(q,d) and 
    f to denote the rhs.
    We see that since given f sequence there are f1 elements so by definition there are p elements which has a sum where every components are divisible by p. We remove the p elements consider the rest elements there are again f1 elements so we continue. Due to the choice of f. We can do this for f2 times. Now among the f2 summands, by definition of f2, we could find q vectors which sums to a vector with each componennt divisible by q. Since each summand is divisible by p. The ultimate is divisible by p times q thus we obtain a 0 sum pq subsequence.

    We could see that due to symmetry, the above inequality can be formulated changing p and q, thus we obtain the following corollary

    We have derived some bounds on f(n,d) and it turns out this suffices to find the exact value for some combination of n,d But before we go to examples, I would like to introduce a theorem which is important in additive number theory.

    Cauchy Davenport states that given A, B subset of Zp, then sum of subsets has a cardinality which is lower bounded by the minimum of p and A + B - 1.
    where A + B is the addition of every element of A and B

    I will omit a proof of it, which can be found in almost any textbook on additive number theory.

    Based on what we have now. Let us see some examples.

    The first is found out by Erdös Ginsburg and Ziv. Actually it this theorem that generates the problem to calculate f(n,d). So what they claim is that f(n,1) = 2n - 1.
    If you remember when we introduce the lower bound and I use the example of 1 dimension so we construct n-1 1s and 0s we see that f(n,d) must be larger than 2(n-1) + 1 which is 2n-1. 
    Here we have actually reached this lower bound.
    To prove the theorem. I first list out the sketches. We need to consider only when p is a prime. why? because 
    we have seen from a result that the f(n,d) when n is a product of p and q can be up bounded by two sums, suppose we have prove that f(p,1) <= 2p -1 and f(q,1) <= 2q - 1. We see that 
    f (pq, 1) ≤ f (p, 1) + p(f (q, 1) − 1)
≤ 2p − 1 + p(2q − 2)
= 2pq − 1
    so we only need to restrict to prime numbers.


We thus prove (2.7.2) for the case p, p a prime number. Assume there is a
sequence with 2p−1 elements, if there are already p identical elements, we are
done. So we could assume that there are no elements which have multiplicity
larger than p − 1. We arrange all the element increasingly (which is possible
in the 1 dimensional case), and enumerate the element s.t.
a 1 ≤ a 2 ≤ · · · ≤ a 2p−1 .

We define the set A i := a i , a i+p−1 , 1 ≤ i ≤ p − 1. Note that
A i = 2,
∀1 ≤ i ≤ p − 1,
because we assume that no elements appear more than p − 1 times. Apply
Theorem 2.6 recursively, we obtain
A 1 + · · · + A p−1 ≥ min{p, A 2 + · · · + A p−1 + A 1 − 1}
≥ min{p, A 2 + · · · + A p−1 + 1}
≥ min{p, A 3 + · · · + A p−1 + 2}
.
.
≥ min{p, A p−2 , A p−1 + p − 3}
≥ min{p, 2 + 2 − 1 + p − 3}
≥ min{p, p} = p.
6This implies that
A 1 + · · · + A p−1 = Z p
In particular we can pick p − 1 elements from the first 2p − 2 elements
a i 1 , . . . , a i p−1 , with a i k ∈ A k , 1 ≤ k ≤ p − 1. s.t.
a i 1 + · · · + a i p−1 = −a 2p−1 .
Moving a 2p−1 to the left handside of the equation, we thus obtain a 0-sum
p-subsequence a i 1 , . . . , a i p−1 , a 2p−1 , which means
f (p, 1) ≤ 2p − 1



f (2 n , d) = (2 n − 1)2 d + 1
Proof. We prove the Lemma through induction on n. For n = 1, we know
from (2.2.1) that
(2 − 1)2 d + 1 ≤ f (2, d) ≤ (2 − 1)2 d + 1
Thus f (2, d) = 2 d + 1
For the general case n, we have f (2 n−1 , d) = (2 n−1 − 1)2 d + 1 from induc-
tion. Using (2.5.1), we obtain:
f (2 n , d) = f (2 · 2 n−1 , d) ≤ f (2 n−1 , d) + 2 n−1 · (f (2, d) − 1)
= (2 n−1 − 1)2 d + 1 + 2 n−1 · 2 d
= (2 n − 1)2 d + 1


Similarly we could also prove that for d = 2 and n a three potents. It holds the following.
Now Let us plug in d = 2 in Lemma 2.8. We see that f(2^n,d) = 4 * 2^n - 3 which has a similar structure.

A question emerges that is it true that for all n, it holds that.
This is the well-known Kemnitz' Conjecture and I would like to illustrate a proof of this at the rest of the time.

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
       
  