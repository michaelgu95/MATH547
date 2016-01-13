<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for applications>><title-date|November
  6, 2015>

  <\title>
    Homework 6
  </title>

  \;

  <strong|Due date>: November 16, 2015, 11:55PM. Since multiple submissions
  are allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  <strong|Bibliography>: Course lecture notes Lessons 20-23, Textbook
  pp.367-418.

  \;

  <with|color|dark red|<em|Save this file as Homework6Solution.tm in your
  MATH547/homework directory before starting to work on the solution.>>

  \;

  We revisit the matrices you worked with in Homework 5. In questions 1-4,
  consider the system of differential equations

  <\equation>
    <frac|\<mathd\>\<b-u\>|\<mathd\>t>=\<b-A\> \<b-u\>
  </equation>

  where <math|\<b-u\><around*|(|t|)>> is vector-valued function

  <\equation*>
    \<b-u\><around*|(|t|)>=<matrix|<tformat|<table|<row|<cell|u<rsub|1><around*|(|t|)>>>|<row|<cell|u<rsub|2><around*|(|t|)>>>|<row|<cell|u<rsub|3><around*|(|t|)>>>|<row|<cell|u<rsub|4><around*|(|t|)>>>>>>.
  </equation*>

  You are asked to evaluate <math|\<b-u\><around*|(|1|)>> starting from
  initial condition <math|\<b-u\><around*|(|0|)>=<around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>|)><rsup|T>>.
  Two situations arise:

  <\enumerate-numeric>
    <item>Recall that if <math|\<b-A\>> is diagonalizable,
    <math|\<exists\>\<b-X\>> nonsingular such that
    <math|\<b-A\>=\<b-X\>\<b-Lambda\>\<b-X\><rsup|-1>>, the system (1) can be
    rewritten in the readily solved form

    <\equation*>
      <frac|\<mathd\>\<b-v\>|\<mathd\>t>=\<b-Lambda\> \<b-v\>
    </equation*>

    with <math|\<b-v\>=\<b-X\><rsup|-1>\<b-u\>>. The solution is
    <math|\<b-v\><around*|(|t|)>=e<rsup|\<b-Lambda\>
    t>\<b-v\><around*|(|0|)><rsup|>> from where

    <\equation>
      \<b-u\><around*|(|t|)>=\<b-X\> \<b-v\><around*|(|t|)>=\<b-X\>e<rsup|\<b-Lambda\>
      t>\<b-v\><around*|(|0|)>=\<b-X\> e<rsup|\<b-Lambda\> t>
      \<b-X\><rsup|-1>\<b-u\><around*|(|0|)>
    </equation>

    The exponential of a diagonal matrix is given by

    <\equation*>
      e<rsup|\<b-Lambda\> t>=diag<around*|(|e<rsup|\<lambda\><rsub|1>t>,e<rsup|\<lambda\><rsub|2>t>,e<rsup|\<lambda\><rsub|3>t>,e<rsup|\<lambda\><rsub|4>t>|)>.
    </equation*>

    <item>If <math|\<b-A\>> is not diagonalizable, it can be reduced to
    Jordan form <math|\<b-A\>=\<b-Y\> \<b-J\>\<b-Y\><rsup|-1>>, with
    <math|\<b-Y\>> the generalized eigenvectors. For the Jordan block
    associated with eigenvalue <math|\<lambda\>>, the size of the block is
    <math|k=AM<around*|(|\<lambda\>|)>> (algebraic multiplicity), and the
    columns of <math|\<b-Y\>> associated with the block that start with
    column <math|j> satisfy

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<b-A\> \<b-y\><rsub|j>>|<cell|=>|<cell|\<lambda\>
      \<b-y\><rsub|j>>>|<row|<cell|\<b-A\>
      \<b-y\><rsub|j+1>>|<cell|=>|<cell|\<lambda\>
      \<b-y\><rsub|j+1>+\<b-y\><rsub|j>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|\<b-A\>
      \<b-y\><rsub|j+k-1>>|<cell|=>|<cell|\<lambda\>
      \<b-y\><rsub|j+k-1>+\<b-y\><rsub|j+k-2>>>>>
    </eqnarray*>

    Formula (2) is replaced by

    <\equation*>
      \<b-u\><around*|(|t|)>=\<b-Y\> e<rsup|\<b-J\> t>\<b-Y\><rsup|-1>.
    </equation*>

    The exponential of the Jordan block of size <math|k> associated with
    eigenvalue <math|\<lambda\>> is

    <\equation*>
      e<rsup|\<b-J\><rsub|k> t>\<in\>\<bbb-R\><rsup|k\<times\>k>,e<rsup|\<b-J\><rsub|k>
      t>=exp<matrix|<tformat|<table|<row|<cell|\<lambda\>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<lambda\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\>>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|\<lambda\>>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<lambda\>>>>>>=<text|>e<rsup|\<lambda\>
      t><matrix|<tformat|<table|<row|<cell|1>|<cell|t>|<cell|<frac|t<rsup|2>|2>>|<cell|\<ldots\>>|<cell|<frac|t<rsup|k-2>|<around*|(|k-2|)>!>>|<cell|<frac|t<rsup|k-1>|<around*|(|k-1|)>!>>>|<row|<cell|0>|<cell|1>|<cell|t>|<cell|\<ldots\>>|<cell|<frac|t<rsup|k-3>|<around*|(|k-3|)>!>>|<cell|<frac|t<rsup|k-2>|<around*|(|k-2|)>!>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|\<ldots\>>|<cell|<frac|t<rsup|k-4>|<around*|(|k-4|)>!>>|<cell|<frac|t<rsup|k-3>|<around*|(|k-3|)>!>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|t>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
    </equation*>
  </enumerate-numeric>

  \ 

  Use the above to compute <math|\<b-u\><around*|(|1|)>> for when
  <math|\<b-u\><rprime|'><around*|(|t|)>=\<b-A\> \<b-u\><around*|(|t|)>> for
  each matrix arising in problems 1-4. In this homework you are given a
  factorization for each matrix, either an eigendecompoisiton or Jordan
  decomposition.

  \ 

  <strong|1.> (1 course point)

  <\equation*>
    \<b-A\>=\<b-Q\> \<b-Lambda\> \<b-Q\><rsup|T>=<matrix|<tformat|<table|<row|<cell|f<rsup|2>+4l<rsup|2>>|<cell|0>|<cell|-3f
    l >|<cell|0>>|<row|<cell|0>|<cell|2 f<rsup|2>+8
    l<rsup|2>>|<cell|0>|<cell|-6f l>>|<row|<cell|-3 f l>|<cell|0>|<cell|4
    f<rsup|2>+l<rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|-6f
    l>|<cell|0>|<cell|8f<rsup|2>+2l<rsup|2>>>>>>=<matrix|<tformat|<table|<row|<cell|365>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450>>>>>
  </equation*>

  <\equation*>
    \<b-Q\>=<frac|1|<sqrt|f<rsup|2>+l<rsup|2>>><matrix|<tformat|<table|<row|<cell|f>|<cell|0>|<cell|l>|<cell|0>>|<row|<cell|0>|<cell|f>|<cell|0>|<cell|l>>|<row|<cell|l>|<cell|0>|<cell|-f>|<cell|0>>|<row|<cell|0>|<cell|l>|<cell|0>|<cell|-f>>>>>=<frac|1|<sqrt|218>><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>>,
  </equation*>

  <\equation*>
    \<b-Lambda\>=<around*|(|f<rsup|2>+l<rsup|2>|)>
    diag<around*|(|1,2,4,8|)>=<around*|(|218|)>diag<around*|(|1,2,4,8|)>
  </equation*>

  <\equation*>
    The matrix was shown to be diagonizable in Homework
    5\<nosymbol\>\<nosymbol\>.Because it is unitarily
    diagonizable\<nocomma\>\<nocomma\>,
  </equation*>

  <\equation*>
    the system can be solved using Equation 1 by replacing X and X<rsup|-1>
    with Q and Q<rsup|T> as so:
  </equation*>

  <\equation*>
    \<b-u\><around*|(|t|)>=\<b-Q\> \ e<rsup|\<b-Lambda\> t>
    \<b-Q\><rsup|T>\<b-u\><around*|(|0|)>
  </equation*>

  <\equation*>
    \<b-u\><around*|(|1|)>=\<b-Q\> \ e<rsup|\<b-Lambda\> 1>
    \<b-Q\><rsup|T>\<b-u\><around*|(|0|)>
  </equation*>

  <\equation*>
    \<b-u\><around*|(|1|)>=<frac|1|<sqrt|218>><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>><matrix|<tformat|<table|<row|<cell|e<rsup|218>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|436>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|1744>>>>>><frac|1|<sqrt|218>><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  \;

  <\equation*>
    =<frac|1|218><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>><matrix|<tformat|<table|<row|<cell|e<rsup|218>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|436>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|1744>>>>>><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  \;

  \;

  <\equation*>
    =<frac|1|218><matrix|<tformat|<table|<row|<cell|13e<rsup|218>>|<cell|0>|<cell|7e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|13e<rsup|436>>|<cell|0>|<cell|7e<rsup|1744>>>|<row|<cell|7e<rsup|218>>|<cell|0>|<cell|-13e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|7e<rsup|436>>|<cell|0>|<cell|-13e<rsup|1744>>>>>><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|-13>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|0>|<cell|-13>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\session|octave|default>
    <\equation*>
      =<frac|1|218><matrix|<tformat|<table|<row|<cell|13e<rsup|218>>|<cell|0>|<cell|7e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|13e<rsup|436>>|<cell|0>|<cell|7e<rsup|1744>>>|<row|<cell|7e<rsup|218>>|<cell|0>|<cell|-13e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|7e<rsup|436>>|<cell|0>|<cell|-13e<rsup|1744>>>>>><matrix|<tformat|<table|<row|<cell|13>>|<row|<cell|0>>|<row|<cell|7>>|<row|<cell|0>>>>>
    </equation*>
  </session>

  <\equation*>
    =<frac|1|218><matrix|<tformat|<table|<row|<cell|13e<rsup|218>>|<cell|0>|<cell|7e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|13e<rsup|436>>|<cell|0>|<cell|7e<rsup|1744>>>|<row|<cell|7e<rsup|218>>|<cell|0>|<cell|-13e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|7e<rsup|436>>|<cell|0>|<cell|-13e<rsup|1744>>>>>><matrix|<tformat|<table|<row|<cell|13>>|<row|<cell|0>>|<row|<cell|7>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    =<frac|1|218><matrix|<tformat|<table|<row|<cell|169e<rsup|218>>|<cell|>|<cell|49e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|13e<rsup|436>>|<cell|0>|<cell|7e<rsup|1744>>>|<row|<cell|*91e<rsup|218>>|<cell|0>|<cell|-91e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|7e<rsup|436>>|<cell|0>|<cell|-13e<rsup|1744>>>>>>
  </equation*>

  <\equation*>
    =<frac|1|218><matrix|<tformat|<table|<row|<cell|169e<rsup|218>+49e<rsup|872>>>|<row|<cell|0>>|<row|<cell|91e<rsup|218>-91e<rsup|872>>>|<row|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|<frac|169e<rsup|218>+49e<rsup|872>|218>>>|<row|<cell|0>>|<row|<cell|<frac|91e<rsup|218>-91e<rsup|872>|218>>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\session|octave|default>
    \;

    \;
  </session>

  <strong|2>. (1 course point)

  <\equation*>
    \<b-A\>=\<b-X\> \<b-Lambda\>\<b-X\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|3f<rsup|2>+3l<rsup|2>>|<cell|-f<rsup|2>>|<cell|0>|<cell|-f
    l>>|<row|<cell|-f<rsup|2>>|<cell|3 f<rsup|2>+4 l<rsup|2>>|<cell|-f
    l>|<cell|-f l>>|<row|<cell|0>|<cell|-f l>|<cell|3
    f<rsup|2>+3l<rsup|2>>|<cell|-l<rsup|2>>>|<row|<cell|-f l>|<cell|-f
    l>|<cell|-l<rsup|2>>|<cell|4f<rsup|2>+3l<rsup|2>>>>>>=<matrix|<tformat|<table|<row|<cell|654>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823>>>>>
  </equation*>

  <\equation*>
    \<b-X\>=<matrix|<tformat|<table|<row|<cell|f>|<cell|-l>|<cell|0>|<cell|f>>|<row|<cell|f>|<cell|0>|<cell|-l>|<cell|-f>>|<row|<cell|l>|<cell|f>|<cell|0>|<cell|l>>|<row|<cell|l>|<cell|0>|<cell|f>|<cell|-l>>>>>=<matrix|<tformat|<table|<row|<cell|13>|<cell|-7>|<cell|0>|<cell|13>>|<row|<cell|13>|<cell|0>|<cell|-7>|<cell|-13>>|<row|<cell|7>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|13>|<cell|-7>>>>>,\<b-Lambda\>=<around*|(|f<rsup|2>+l<rsup|2>|)>
    diag<around*|(|2,3,4,4|)>
  </equation*>

  <\equation*>
    Following Equation 1,
  </equation*>

  <\equation*>
    \<b-u\><around*|(|t|)>=\<b-X\> e<rsup|\<b-Lambda\> t>
    \<b-X\><rsup|-1>\<b-u\><around*|(|0|)>
  </equation*>

  <\equation*>
    \<b-u\><around*|(|1|)>=\<b-X\> e<rsup|\<b-Lambda\>1 >
    \<b-X\><rsup|-1>\<b-u\><around*|(|0|)>
  </equation*>

  <\equation*>
    <with|font-series|bold|u><around*|(|1|)>=<matrix|<tformat|<table|<row|<cell|13>|<cell|-7>|<cell|0>|<cell|13>>|<row|<cell|13>|<cell|0>|<cell|-7>|<cell|-13>>|<row|<cell|7>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|13>|<cell|-7>>>>><matrix|<tformat|<table|<row|<cell|e<rsup|436>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|654>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|872>>>>>><matrix|<tformat|<table|<row|<cell|13>|<cell|-7>|<cell|0>|<cell|13>>|<row|<cell|13>|<cell|0>|<cell|-7>|<cell|-13>>|<row|<cell|7>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|13>|<cell|-7>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|13>|<cell|-7>|<cell|0>|<cell|13>>|<row|<cell|13>|<cell|0>|<cell|-7>|<cell|-13>>|<row|<cell|7>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|13>|<cell|-7>>>>><matrix|<tformat|<table|<row|<cell|e<rsup|436>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|654>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|872>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|872>>>>>><matrix|<tformat|<table|<row|<cell|13>>|<row|<cell|13>>|<row|<cell|7>>|<row|<cell|7>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|13>|<cell|-7>|<cell|0>|<cell|13>>|<row|<cell|13>|<cell|0>|<cell|-7>|<cell|-13>>|<row|<cell|7>|<cell|13>|<cell|0>|<cell|7>>|<row|<cell|7>|<cell|0>|<cell|13>|<cell|-7>>>>><matrix|<tformat|<table|<row|<cell|13e<rsup|436>>>|<row|<cell|13e<rsup|654>>>|<row|<cell|7e<rsup|872>>>|<row|<cell|7e<rsup|872>>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|169e<rsup|436>-91e<rsup|654>+91e<rsup|872>>>|<row|<cell|169e<rsup|436>-49e<rsup|872>-91e<rsup|872>>>|<row|<cell|91e<rsup|436>+169e<rsup|654>+49e<rsup|872>>>|<row|<cell|91e<rsup|436>+91e<rsup|872>-49e<rsup|872>>>>>>=<matrix|<tformat|<table|<row|<cell|169e<rsup|436>-91e<rsup|654>+91e<rsup|872>>>|<row|<cell|169e<rsup|436>-140e<rsup|872>>>|<row|<cell|91e<rsup|436>+169e<rsup|654>+49e<rsup|872>>>|<row|<cell|91e<rsup|436>+42e<rsup|872>>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;

  <strong|3>. (1 course point)\ 

  <\equation*>
    \<b-A\>=\<b-P\> \<b-J\>\<b-P\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|f>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|f>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|f>|<cell|f>>>>>=<matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|13>>>>>
  </equation*>

  <\equation*>
    \<b-P\>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/f<rsup|3>>>|<row|<cell|0>|<cell|0>|<cell|1/f<rsup|2>>|<cell|-2/f<rsup|3>>>|<row|<cell|0>|<cell|1/f>|<cell|-1/f<rsup|2>>|<cell|1/f<rsup|3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/2197>>|<row|<cell|0>|<cell|0>|<cell|1/169>|<cell|-2/2197>>|<row|<cell|0>|<cell|1/13>|<cell|-1/169>|<cell|1/2197>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>,
  </equation*>

  <\equation*>
    \<b-J\>=<matrix|<tformat|<table|<row|<cell|f>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|f>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|f>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|f>>>>>=<matrix|<tformat|<table|<row|<cell|13>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|13>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|13>>>>>
  </equation*>

  <\equation*>
    Given \<b-u\><around*|(|t|)>= \<b-P\>e<rsup|\<b-J\>
    t>\<b-P\><rsup|-1>\<b-u\><around*|(|0|)> \<nocomma\>,
    \<b-u\><around*|(|1|)>=\<b-P\> e<rsup|\<b-J\><rsub|4>1
    >\<b-P\><rsup|-1>\<b-u\><around*|(|0|)>
  </equation*>

  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ The size of the Jordan
  block is k=4 because the AM of <math|\<lambda\>>=13 is 4:

  \;

  <\equation*>
    \ e<rsup|\<b-J\><rsub|4>1> = e<rsup|13
    ><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|<frac|1|2>>|<cell|<frac|1|6>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|<frac|1|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  \;

  <\equation*>
    Computi ng \<b-P\><rsup|-1> using octave:
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      P=[0, 0, 0, 1/2197; 0, 0, 1/169, -2/2197; 0, 1/13, -1/169, 1/2197; 1,
      0, 0, 0];disp(inv(P));
    <|unfolded-io>
      \ \ \ \ \ -0 \ \ \ \ -0 \ \ \ \ -0 \ \ \ \ \ 1

      \ \ \ \ \ 13 \ \ \ \ 13 \ \ \ \ 13 \ \ \ \ \ 0

      \ \ \ \ 338 \ \ \ 169 \ \ \ \ \ 0 \ \ \ \ \ 0

      \ \ \ 2197 \ \ \ \ \ 0 \ \ \ \ \ 0 \ \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Thus the value of u(1) is found using the equation:

  <\equation*>
    \<b-P\> e<rsup|\<b-J\><rsub|4>1 >\<b-P\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/2197>>|<row|<cell|0>|<cell|0>|<cell|1/169>|<cell|-2/2197>>|<row|<cell|0>|<cell|1/13>|<cell|-1/169>|<cell|1/2197>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>e<rsup|13><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|<frac|1|2>>|<cell|<frac|1|6>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|<frac|1|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><with|mode|prog|><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|0>>|<row|<cell|338>|<cell|169>|<cell|0>|<cell|0>>|<row|<cell|2197>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    where e<rsup|Jt>is the exponential of the Jordan block of size 4
    associated with \<lambda\> =13
  </equation*>

  <\equation*>
    Solving using octave,
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      P=[0, 0, 0, 1/2197; 0, 0, 1/169, -2/2197; 0, 1/13, -1/169, 1/2197; 1,
      0, 0, 0];\ 
    <|unfolded-io>
      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      J=e^13*[1, 1, (1/2), (1/6); 0, 1, 1, (1/2); 0, 0, 1, 1; 0, 0, 0, 1];
      u0=[1;0;0;0];
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(P*e^13*J*inv(P)*u0);
    <|unfolded-io>
      \ \ \ 1.9573e+11

      \ \ \ 2.5445e+12

      \ \ \ 1.9084e+13

      \ \ \ 1.0729e+14
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <strong|4.> (1 course point)<with|color|dark blue|>\ 

  <\equation*>
    \<b-A\>=\<b-P\> \<b-J\>\<b-P\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|f>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|l>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|l>|<cell|l>>>>>=<matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7>>>>>
  </equation*>

  <\equation*>
    \<b-P\>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1/f>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/l>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1/13>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>>,\<b-J\>=<matrix|<tformat|<table|<row|<cell|f>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|f>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|l>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|l>>>>>=<matrix|<tformat|<table|<row|<cell|13>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|13>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|7>>>>>
  </equation*>

  \;

  <\equation*>
    Given \<b-u\><around*|(|t|)>= \<b-P\>e<rsup|\<b-J\>
    t>\<b-P\><rsup|-1>\<b-u\><around*|(|0|)> \<nocomma\>,
    \<b-u\><around*|(|1|)>=\<b-P\> e<rsup|\<b-J\><rsub|4>1
    >\<b-P\><rsup|-1>\<b-u\><around*|(|0|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  The size of the Jordan block is k=4 because the AM of <math|\<lambda\>>=13
  and AM of \ <math|\<lambda\>>=7 is 2.\ 

  <\equation*>
    Where e<rsup|\<b-J\><rsub|4>1> = <matrix|<tformat|<table|<row|<cell|e<rsup|13
    >>|<cell|e<rsup|13 >>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|13
    >>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|7>>|<cell|e<rsup|7>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|7>>>>>>
  </equation*>

  <\equation*>
    Computi ng \<b-P\><rsup|-1> using octave:
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      P=[0, 1/13, 0, 0; 1, 0, 0, 0; 0, 0, 0, 1/7; 0, 0, 1, 0]; disp(inv(P));
    <|unfolded-io>
      \ \ \ -0 \ \ \ 1 \ \ -0 \ \ -0

      \ \ \ 13 \ \ \ 0 \ \ -0 \ \ -0

      \ \ \ \ 0 \ \ \ 0 \ \ -0 \ \ \ 1

      \ \ \ \ 0 \ \ \ 0 \ \ \ 7 \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  Thus the value of u(1) is found using the equation:

  <\equation*>
    \<b-P\> e<rsup|\<b-J\><rsub|4>1 >\<b-P\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1/13>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|e<rsup|13
    >>|<cell|e<rsup|13 >>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|e<rsup|13
    >>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|e<rsup|7>>|<cell|e<rsup|7>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|e<rsup|7>>>>>><with|mode|prog|><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    where e<rsup|J1> is the exponential of the two Jordan blocks,one of size
    2 for \<lambda\>=13 and the other of size 2 for \<lambda\>=7.
  </equation*>

  <\equation*>
    Solving using octave,
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      J=[e^(13 ), e^(13 ), 0, 0; 0, e^(13 ), 0, 0; 0, 0, e^7, e^7; 0, 0, 0,
      e^7]; u0=[1; 0; 0; 0]; disp(P*J*inv(P)*u0);
    <|unfolded-io>
      \ \ \ 4.4241e+05

      \ \ \ 5.7514e+06

      \ \ \ 0.0000e+00

      \ \ \ 0.0000e+00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    \;
  </session>

  <strong|5.> (4 course points) Consider the <math|f-thane> molecule

  <center|<center|><tabular|<tformat|<table|<row|<cell|>|<cell|H>|<cell|H>|<cell|>|<cell|H>|<cell|>>|<row|<cell|H>|<cell|C>|<cell|C>|<cell|...>|<cell|C>|<cell|H>>|<row|<cell|>|<cell|H>|<cell|H>|<cell|>|<cell|H>|<cell|>>>>>>

  with <math|f> carbon atoms. Assume the equilibrium distance betweeen H and
  C atoms, and between C and C atoms is unity, <math|l=1>. Assume that the
  C-H bonds are rigid, so they move as a single point mass. The \ covalent
  bond between C and C is a spring with unit stiffness <math|k=1>. Let
  <math|\<b-x\><around*|(|t|)>=<around*|(|<tabular|<tformat|<table|<row|<cell|x<rsub|1><around*|(|t|)>>|<cell|\<ldots\>>|<cell|x<rsub|f><around*|(|t|)>>>>>>|)>>
  denote the deviation from equilibrium of the <math|f> carbon atoms.

  <\enumerate-alpha>
    <item>Write the ODE system describing the motion of the carbon atoms
    <math|\<b-M\> <wide|\<b-x\>|\<ddot\>>+\<b-K\> \<b-x\>=0>

    \;

    <\equation*>
      The mass matrix \<b-M\> can be expressed using C=12amu\<nocomma\> as
      so:
    </equation*>

    <\equation*>
      \<b-M\>=<matrix|<tformat|<table|<row|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|12>>>>>
    </equation*>

    <\equation*>
      Because the two edge carbons are acted upon by 1 other
      carbon\<nocomma\>,and the rest acted upon by 2 other carbons,
    </equation*>

    <\equation*>
      the stiffness Matrix <with|font-series|bold|K> ,with k=1\<nocomma\>,is:
    </equation*>

    <\equation*>
      \<b-K\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|1>>>>>
    </equation*>

    \;

    \;

    <\equation*>
      and with \ x<around*|(|t|)>=<matrix|<tformat|<table|<row|<cell|x<rsub|1><around*|(|t|)>>>|<row|<cell|x<rsub|2><around*|(|t|)>>>|<row|<cell|\<ldots\>>>|<row|<cell|x<rsub|13><around*|(|t|)>>>>>>,
    </equation*>

    <\equation*>
      The ODE system can be described by:
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|12>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|12>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<ldots\>.>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|12>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|12>>>>><matrix|<tformat|<table|<row|<cell|x<rsub|1><rsup|<rprime|''>><around*|(|t|)>>>|<row|<cell|x<rsub|2><rsup|<rprime|''>><around*|(|t|)>>>|<row|<cell|\<ldots\>>>|<row|<cell|x<rsub|13><rsup|<rprime|''>><around*|(|t|)>>>>>>+<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|>|<cell|>|<cell|\<ldots\>.>|<cell|>|<cell|>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|\<ldots\>.>|<cell|-1>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|x<rsub|1><around*|(|t|)>>>|<row|<cell|x<rsub|2><around*|(|t|)>>>|<row|<cell|\<ldots\>>>|<row|<cell|x<rsub|13><around*|(|t|)>>>>>>=0
    </equation*>

    \;

    <item>Assume the motion of the system is of the form
    <math|\<b-x\>=\<b-y\> cos<around*|(|\<omega\>t|)>>, leading to the
    eigenproblem

    <\equation*>
      <around*|(|\<b-M\><rsup|-1>\<b-K\>|)>\<b-y\>=\<omega\><rsup|2>\<b-y\>
    </equation*>

    Compute the <math|f> eigenvalues and eigenvectors.

    <\equation*>
      Using octave to find \<b-M\><rsup|-1>\<b-K\>
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        M=[12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 12, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0; 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 12,
        0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0; 0,
        0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 12, 0, 0, 0,
        0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0,
        0, 12, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0; 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 12, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12,
        0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12]; Minv = inv(M);\ 
      <|unfolded-io>
        texmacs
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        K=[1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; -1, 2, -1, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0; 0, -1, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, -1, 2,
        -1, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, -1, 2, -1, 0, 0, 0, 0, 0, 0, 0;
        0, 0, 0, 0, -1, 2, -1, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, -1, 2, -1, 0,
        0, 0, 0, 0; 0, 0, 0, 0, 0, 0, -1, 2, -1, 0, 0, 0, 0; 0, 0, 0, 0, 0,
        0, 0, -1, 2, -1, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 0, 0; 0,
        0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        -1, 2, -1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1]; disp(Minv*K);
      <|unfolded-io>
        \ Columns 1 through 7:

        \;

        \ \ \ \ \ \ \ 1/12 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6
        \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12
        \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12
        \ \ \ \ \ \ \ 1/6

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ -1/12

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0

        \;

        \ Columns 8 through 13:

        \;

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6
        \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12
        \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ -1/12 \ \ \ \ \ \ \ 1/6 \ \ \ \ \ -1/12

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
        \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -1/12 \ \ \ \ \ \ 1/12
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\equation*>
      Finding the eigenvalues for \<b-M\><rsup|-1>\<b-K\>,
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        [x,D]=eig(Minv*K); disp(diag(D)');\ 
      <|unfolded-io>
        \ Columns 1 through 7:

        \;

        \ \ \ \ \ \ \ \ \ \ 0 \ 367/75779 \ 283/14824 \ 971/23166
        \ \ 587/8154 \ \ 445/4137 \ \ 743/5069

        \;

        \ Columns 8 through 13:

        \;

        \ \ \ 863/4621 \ \ 934/4137 \ 2131/8154 \ 1810/6211 \ \ 417/1327
        \ 1967/5988
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\equation*>
      Where the corresponding eigenvectors are:
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(x);
      <|unfolded-io>
        \ Columns 1 through 7:

        \;

        \ \ 1369/4936 \ -850/2183 \ \ -155/407 \ -955/2604 \ 2171/6251
        \ 1277/3956 \ 1113/3791

        \ \ 1369/4936 \ -955/2604 \ \ -229/780 \ -467/2562 \ \ 152/3215
        \ \ \ -75/799 \ -377/1692

        \ \ 1369/4936 \ -378/1171 \ -253/1819 \ \ \ \ 75/799 \ \ -229/780
        \ -850/2183 \ \ \ -58/167

        \ \ 1369/4936 \ -689/2649 \ \ 152/3215 \ 1277/3956 \ \ -155/407
        \ -467/2562 \ 1070/7693

        \ \ 1369/4936 \ -467/2562 \ 1424/6391 \ \ 850/2183 \ -253/1819
        \ 2492/9581 \ 1387/3642

        \ \ 1369/4936 \ \ \ -75/799 \ 2171/6251 \ 2492/9581 \ 1424/6391
        \ 1749/4769 \ -152/3215

        \ \ 1369/4936 \ \ \ \ \ \ \ \ \ 0 \ 2040/5201 \ \ \ \ \ \ \ \ \ 0
        \ 2040/5201 \ \ \ \ \ \ \ \ \ 0 \ \ -202/515

        \ \ 1369/4936 \ \ \ \ 75/799 \ 2171/6251 \ -689/2649 \ 1424/6391
        \ -955/2604 \ -152/3215

        \ \ 1369/4936 \ 1473/8081 \ 1424/6391 \ -850/2183 \ -253/1819
        \ -689/2649 \ 1387/3642

        \ \ 1369/4936 \ 2492/9581 \ \ 152/3215 \ -378/1171 \ \ -155/407
        \ 1473/8081 \ 1070/7693

        \ \ 1369/4936 \ 1277/3956 \ -253/1819 \ \ \ -75/799 \ \ -229/780
        \ \ 850/2183 \ \ \ -58/167

        \ \ 1369/4936 \ 1749/4769 \ \ -229/780 \ 1473/8081 \ \ 152/3215
        \ \ \ \ 75/799 \ -377/1692

        \ \ 1369/4936 \ \ 850/2183 \ \ -155/407 \ 1749/4769 \ 2171/6251
        \ -378/1171 \ 1113/3791

        \;

        \ Columns 8 through 13:

        \;

        \ \ 2492/9581 \ 1424/6391 \ 1473/8081 \ 1070/7693 \ \ \ -75/799
        \ \ 152/3215

        \ \ -378/1171 \ \ -155/407 \ -850/2183 \ \ \ -58/167 \ 2492/9581
        \ -253/1819

        \ \ -467/2562 \ \ 152/3215 \ 2492/9581 \ 1387/3642 \ -955/2604
        \ 1424/6391

        \ \ 1749/4769 \ 2171/6251 \ \ \ \ 75/799 \ -377/1692 \ \ 850/2183
        \ \ -229/780

        \ \ \ \ \ 75/799 \ \ -229/780 \ -955/2604 \ -152/3215 \ -378/1171
        \ 2171/6251

        \ \ -850/2183 \ -253/1819 \ 1277/3956 \ 1113/3791 \ 1473/8081
        \ \ -155/407

        \ \ \ \ \ \ \ \ \ \ 0 \ 2040/5201 \ \ \ \ \ \ \ \ \ 0 \ \ -202/515
        \ \ \ \ \ \ \ \ \ 0 \ 2040/5201

        \ \ \ 850/2183 \ -253/1819 \ -378/1171 \ 1113/3791 \ -467/2562
        \ \ -155/407

        \ \ \ \ -75/799 \ \ -229/780 \ 1749/4769 \ -152/3215 \ 1277/3956
        \ 2171/6251

        \ \ -955/2604 \ 2171/6251 \ \ \ -75/799 \ -377/1692 \ -850/2183
        \ \ -229/780

        \ \ 1473/8081 \ \ 152/3215 \ -689/2649 \ 1387/3642 \ 1749/4769
        \ 1424/6391

        \ \ 1277/3956 \ \ -155/407 \ \ 850/2183 \ \ \ -58/167 \ -689/2649
        \ -253/1819

        \ \ -689/2649 \ 1424/6391 \ -467/2562 \ 1070/7693 \ \ \ \ 75/799
        \ \ 152/3215
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <item>Plot the resulting eigenmodes. To accomplish this first define the
    equilibrium positions <math|\<b-z\>>

    <\session|octave|default>
      <\input>
        octave\<gtr\>\ 
      <|input>
        f=13;
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        z=0:f-1;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(z);
      <|unfolded-io>
        \ \ \ \ 0 \ \ \ 1 \ \ \ 2 \ \ \ 3 \ \ \ 4 \ \ \ 5 \ \ \ 6 \ \ \ 7
        \ \ \ 8 \ \ \ 9 \ \ 10 \ \ 11 \ \ 12
      </unfolded-io>
    </session>
  </enumerate-alpha>

  Suppose <math|\<b-y\>> is an eigenvector with unit norm. Then
  <math|\<b-z\>+\<b-y\>> gives the position of the carbon atoms, and can be
  plotted as follows

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      y=sin(3*pi*z/(f-1));
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      plot(z,y,'o-'); cd ~/courses/MATH547/homework; print mode.png;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <image|<tuple|<#89504E470D0A1A0A0000000D494844520000023B000001CD0806000000F8F5BAC20000000473424954080808087C0864880000001974455874536F66747761726500676E6F6D652D73637265656E73686F74EF03BF3E0000200049444154789CEDDD7D8C24697D1FF05FC360F5C2E1EC38278B8BE59023310A6F89C325103882E4B392F02224022152C0F90392D8B10D961CC0921D07C5BC4921909808FB0FC78045F0C5C1E6EC08EE1C207B28876ED74EB85DC5E4D80B60E6222E9A251C4C9B5B3C15DFC0E48F9E9AE9EEA97E9DEAAEA79EFA7CA4D5CE745777573F53F5D4B79FDF53D5BD88380C00803CF57A117178EF97BF1157AF0D62F7E1FD181445D32BD52997BF32884B9FBA2BEEFC9997C4F91BCE47BFDF8F73FD734DAF1600B4DADEF5BDB8E5D9B74444C45644C4D56B83F8F54B3BC37B0FF623B61C6C37E5D2EF5D8C28F6626FB017FD7E3FFA5BFD88AD18FE5FA1381046016096FE563F6270F2FB5644C4EEC37BC39013114544F48F7E66438A4114FB45C441C4B9AD7327A127E2E82F74E420A21FD521686C3900E8B862A452B51511317824A23838BAF320E2CAA76E8F38181E7C23CAFF67D88A88E8C75FF93BAF5BC7FAE6EDD122A22862F0F020F69E381CDDD98EED28B68AE86FF5A3DF3F093745510C477646FF1E47A340FD7E5FE001202222DEF1B677C47EB17F7CCC98571528AB0AEFFE97EFCEE2F171501176F60F8A93B0530C0FBE777EE87D71F9A1BDD8F95A31771ECFD587F6E2CA6FBEE7F839EA70F92D2F8D888867BFF5CEFA9E3451C5F5BD78D307EF8AB8E17C44FF7C44FF5CC4563FEEFDB9571C87985BDE76C730E43C5A0C8368A95CEE86E15C9F69E52F00BA63EFFA5EBCFF57DEBFF0F297AF5C8E77BCF51D515C2FB279FCFEF5BDE3FBB72286A339C5D128CE5E111107455C7E702F3E70E96AC4A9B24971EAB69D4B770D4B314B849DCFBFF5A595B73FFD2DE3E1A6CE0055B7C9F730B9EE8BB8F959CF8BE7BDEC2563B75D7A702F763E7347EC3CB413DBE7B7878167BF880BEFFAC9B8F2D05EEC3C5CC4DE23455C7A7037763E7357EC3CB41337DD7853143714C309CEE65C01745A39AAB1B3B3B3D0F277FCF61DB137D83B7E5CEB1F7FBD88C1FEC4C84E717032BA530E155DDD1DC47E59C61A7510115B93233DC3D1A0FD1526CFDEFC731F5DEAF69494EBB8F3CE574644ACF4FE2322EEFED2EED8EFD73E7729E2FA20065F1B0C476A0E22A228E2E2837BF14B9FBE5ABD5CBF1FDB5BDBD1DFEAC77E987305D065C7259C25060C8AA288FD72FE6E628F7FCA539F125FFEC297C7969FBC6DECF107C5F1284FC471D8392A631D0C434B71B01FD7AE17511471320FE4E0E8E78391951FBDEF60B55198698FD97DD73040DCF433C340F1B8C73E26FEF94B9F15AF7AF69F8DF38FFFAEB165CB65261F53755BF9FBE4E37BBD88573FE7E6F887B7FEF978F2F73C2176FF683FDE7FEF1FC6AF5DFAC3385CF04A442B8F424DCCC1193ED95EEC5DDF8BFE23FDA39AE57E5CDD1D193D3B185FEEFCF5F351F48B28FAC5E949CCE6F200745279F07FC6D39F5179FFFD9FBFFFF8E7A262CACAFE12272CCD7AFC595EBF7CEC539EFA94E3E5AB6E1B7B7CD59C9DA2BCB10C3C0731363168F4C1638E0FBC4544EC57AEE83CF31E53DEFF937FEB99F18F5FF017E2FD9FF942BCFDCEFF116F79D90FC66B6FFD8153CF717858FD9C93B7DDFEFB5F8E9FBDE3B3F1CDFD472322E2752FF88178F72B9F1DFFF1BFEFC48BFECD27E20DB73D3DDEF9F21F8CE2FFFD497CF0DE2FD6F25E16721C1C8B180C06C37938453FE2A0886B83E2F41FF368B9C10D83E350737CFA7A795657C2A54000D6E0D1A3FFE7F5FFD38EEB8B3E7EDAF3D5F8FAF7FFC1FDF18CBF340C3793A1E9FE3FB8BF32A7140745EC172741EDE4337F196C8E4A57C7233DCB58A18CB3F76F5F33F6FBF64F4C4C483A7ACE573FF7E68888F8C54F5C89C137AFC72FFEE7CBC76167F475BF737858BD1E13B7BDF5777E3FBEF9C81F1FFFFE632F7C6A4444BCEBE39F8D6F3EF248BCEF9357E24D7FFB99F1632F7C6A7CF0BF7E6EB13753DB3570F6230E8A78CF6F5F8CE86F476CF523A2888B0FEC44B173F9D4D2EFF9D89588FE4E44BF3F5C76EB5CDCF94F5F32FC5BF6C3C80E4047955353EEBB7CDFCCFB17FD7DD1D75BF4F18BBEFE7D97EF3BBE4060E9BECBF7CD7CFCA9919D6307C312D671496AD1375986A4150EF6DB3FFA4B739E7BF89CDF77FE091111F1D5AF7F23E2DBDF896B5F7FF4D432537FAFB8EDAB5FFFC6D8EF4FBEF189111171DF2FBC6AECF6A77CEF772FD10EF5849DFEF73F3D9EF743E39396AF7CE9C1187CE6D74F5EE3A8ACF8F18F7C342E7D6937AEEE0E62EFFA7E5CF9D283515CBD18BB5FDB8DF3DBE7633BB69D960ED055CBCC99A93C76D6F7F8FBFEDB78E0BAE539B78CDDBFF4EB4FDC372BF86C8DDFB11FE584E462746ECEC1C49293BFC7C80178590B0E71FD9FBDEBF194EFFD5371E3E3CFC5EEDEB7E249E71F7F6A99EF1C1EC6631FD38BC77CBB17DF393C8C9BB69F30FD75267EBF36F8563CF9C6EF8EA7BFF1D76277EF5B2BBC918AD738C3E3AFFCCF07C7EE2ABE7239E2A088D7FD8DA71D9F71F54B9FBA1C9F7E6037DEFFBB974E96DBB91C510C62F0F020FA8FEB47B1550C4B5AD32E46084076CA03FDD257DD1F29038DFE7FEBF36FAD5CFCDE8BF72EF4F869EB72EAB6255EFF96E7DC32F5F5279D1AD989FD22228AA3B3B3462626CD0A0BC72BB7FC5940F31E53DEFFA17B3E17FFE2EFBE207EFC6F3E2BDEF13B17E30D2FFECBA796F9C2EE37E22FFE993F1D2F7EF6F7C77FF9DC83F1B32FFFAB535F67F2F7F77DE2B3F1AF5E735BFCC2ABFE7AFCF4BFBF107FF2E8B7E3F94FFDBE78FD8B6E8997BDEBB76A792F6776309C8FB37DC3D1684DFF5C5CFECAE0F47BBBBE7FFCF513B115C717298C18FF1A8A593B81EBF5006460C90FE1A7E69E2E39E766D6E32B03D3028FBFF585278FBBF79E61B8296FBBF5F9B71EDF56F9F823D5C58DA5CB52C380B4521967DE638EEEFFD7FFE99EB8F186EF8A1F79C1B3E20D2FBAA572991FFF958FC57B5FFBE2F8E03F79693CEEB18F99FD3A13BFBFEFCE8BF17FF7FE287EEAC5CF8DCFBFFB1F4544C4A5FFF550BCF7E317A7AEE3FEED3F3FFEFB87DE141111E75EFDF6D9EF69150755EDDB8F6B83BDF1DB8F961B0C0627E5ABA391B8FE563FF6B7C6036C55E029973BB7754EF90BA08D264648167DCCF1F2138FBF70F785CA878C3DFF9A1E7FE1EE0BF1C3B7FD705CB8FBC2D8F34DDE36EB4ACBE387B2FD9303EA58196B9EC9D3A11770EEEFCD0E0493F73F7AF09D78F3073E196FFEC0272322E2FC13FAB1FBC137C55707D78F5FF7F73EFF503CF7CDFF6EE5D7FDC83DF7C747EEB97FEAFDCB3CD7BAFCF2A7AF44BFBF7DFCFBCE03572376AF4E2C55C47B7EF772F4FBE746262DF7E3575F7B5BF4CF0D476C7EE403778F4C4A1FD938469733B919A0DD961CD9193D8329A5C75FF8E48553CF55755BF9F873FDF18BEB9E3E941D3D70B07325E2C12B4BAC627FF855066BF4CB3FF1F278DB6F5C883F2E1E8D7FF6CAE110D66FDDFBB9B5BF6E126EBC399EF4BC578CDD34F8E29528AEDC756AC4E7C3B77F34EEBEBA1B571EDA8BDDEB450CBE7825E2A1ABB17B6D37CEDD70F495124511BFFACE9F9FBADCF6F9EDE8DFD03F0E4700B4C7FEC17E5CBE7239EEFECCDD8B3F68EBA40CD4F6C7CF0E3BA3B3A23F7B47C4C1FEC9A7FF392F101B98E371F1EAFF8EBBDFF9A3F1A4EF79627CE56B8378FB6FDC1DEFBEE39EB5BF6E2A065F9C089FD7AE461C14F18ABF76F3F1B5756EBFB413775FDD8DDB3F76D7D872C5F5BD180C86DF77BFBFB51F51147397DB8EED00A09D5EFF53AF8FE27A317665E169CE6D9D8B7EBF1FC5C8572CB4F5F1E7B7CF9F9A773A31B2733489F599B7CD7CD2A96ABBCE4CB50F7FEA527CF85397E62FD8154725A8FE567F380A7354AEBAF4E0EEC43C9E882806B137D83B9EBB1307C5CCE5FAFDFE30212B6301B4CE6BFEFE6BE62F54A11C1969F3E3B7CF9FFEA07E7A64C7C1AD5D46AE967C6EEB5CF4B7227607D5A1B3288EAEC0DC8F888362EE72FBC5BEED018056397FFEFCD8F76245541DCAAE2DF60DA324E2A03809315B4713CBBF7825E2E19DCAE5F6067BD1DFEA4751ECCF5DAE3828A27FDD9C1D00DA63FBFC76EC16E35FB07D2AEC149FBD63632B443DEEF8CDF1B3B18A073E5DB9DCEDFF61B5E500A02DDEF8D36F3C755B6591E270D1AFF906004844AFD7ABBCFD3195B702006442D80100B226EC00005913760080ACB98A4A0755CDDF32271D603EFD673B2511767ABD9E33C036A0DC49AB9A7AD67D005DA7FF6CB7C6CB58D34E13A35EF376C6F2767F0E8071FACFF66B34EC18D1D9AC794DED4F01504DFFD96E8D861D4167337ABDC577C4C3439F4E004AFACF3C345EC6020058A72426282FCAFC9E551D4E69BBC388A8BE5D5B0344E83F37679DD59E56859D08A5AF550C87610F4FDD36DC510F4F0DD1562DCF7CE6A0D54B7BD64B7BAE46FFB919EB0E88CA581D34B94DF91002B018FD673B357E365699E6467FA65E5593E6CA0F1ED59F4A36B35E00A9D37FE6A1D13296A1BECD9A76AD08671000CCA6FF6C3765AC8E58E6D449004EE83FDB4FD8E988D14F25BD5EF9FBE1F1CFAE000A504DFFD97EC24E878CD699873FF7467EF6A904601AFD67BB093B1D306DD25CD59C29F5E7D59983562FED592FEDB91AFD671E849DCCAD7276801D1640FF991361276367DDE1ECB04057E93FF322EC646ED5916B23DE40D7E93FF321EC64AA8E8B5B198E05BA48FF991F612743755EC5D30E0B7489FE334FC24E66D6B563D96181DCE93FF325EC64A8EE7AB1FA33D015FACF3C093B1959E797D0198E0572A6FFCC9BB093894D7CDBAE1D16C891FE337FC24E0636BD03D961815CE83FBB41D8C9C4A6EAC2EACF406EF49FF913765A6E13C3AF930CC70239D07F7687B0D3624DECA8253B2CD066FACF6E11765A2A951D2595F50058542AFD562AEBD105C24E8B355DFF6DFAF50156D574FFD5F4EB778DB0D3424D0EBF4E321C0BB489FEB39B849D964969472DD9618136D07F7697B0D322A9EF10A9AF1FD05DA9F74FA9AF5FDB093B2D93DAA79252AAEB05504AB59F4A75BD7222ECB4448AC3AF930CC70229D27F22ECB4401B76D4921D164889FE93086127796DDDF0DBBADE403EDADA0FB575BD5326ECB4405B3E9594DAB6BE40BEDAD61FB56D7DDB42D849589B865F27198E059AA4FF6494B093A836EFA8253B2CD004FD2793849D04E5B681E7F67E8074E5D6DFE4F67E9A22EC24AAED9F4A4AB9BC0FA03D72E97772791F2910761293C3F0EB24C3B1C026E83F9946D849488E3B6AC90E0BAC93FE9359849D44746543EECAFB0436A72BFD4A57DEE73A083B09C9F5534929F7F7073427F7FE25F7F7B76EC24E02721E7E9D643816A893FE9345083B0DEBD28E5AB2C30275D07FB22861A7415DDF60BBFEFE81D575BDFFE8FAFB5F96B0D3B0AE7D2A2975F57D03F5E96A3FD2D5F77D16C24E43BA38FC3AC9702CB00AFDA7FE7359C24E03ECA827ECB0C032F49F27F49F8B137636CC86594DBB00F3E827AA6997F9849D06F854324E7B008BD25F8CD31E8B117636C8F0EB7486638159F49FD3E93FE7137636C48E3A9F1D16A8A2FF9C4FFF39DB56D32B9093AA0DCD06B8BCB2639BD69E407EF49FF5D07F5613766A506E54551BD2ACFB38ADDC49A77D92D39E9017FD677DF49FD329639DD1A21B8F4F278B99D74E653B6B4F683FFD67BDF49FD3093B3598B6A396E9BA8B29FA2CCA369BB6436A4FC887FEB35EFACF6AC2CE19CC9A3437B9A1A93DCF57D59EB37658ED09EDA5FFAC97FE733661678DBA9AA0EBA2FDA0BBECFF67A3FDC6093B6BE034C9FA74F113087499FEB33EFACF13C20E00903561A7663E95D4CFA713E806FD67FDF49F43C2CE192CB311D989E7D39ED01DF6F77A69CFD9849D1ACCDBC0A4EAE5684FE80EFB7BBDB4673561E78C462FD234EBD4BFAEA5E8554DBBE8D5E89541479703DA4BFF592FFDE774BE2EA206933B6CD57D2C6ED6553EB527E445FF592FFD673561A7665DDE98EAB6E805B2803CE83FEBA3FF1CA78C5593AE6F489BA29D213FF6EBCDE8723B0B3B35F2A964BDB42FE4CBFEBD5E5D6F5F610700C89AB00300644DD8A941172FD0D414570385BCE83F37A7CBFDA7B00300644DD80100B226EC9C9121D8CDEBF2502CE444FFB9795DED3F851D00206BC20E00903561E70C0CC136A7AB43B1900BFD6773BAD87F0A3B0040D6841D00206BC2CE8A0CC136AF8B43B19003FD67F3BAD67F0A3B0040D6841D00206BC20E009035616705EACDE9E85ADD19DA4EFF998E2EF59FC20E009035610700C89AB0B32443B0E9E9D2502CB499FE333D5DE93F851D00206BC20E0090356167098660D3D595A158682BFD67BABAD07F0A3B0040D6841D00206BC2CE820CC1A6AF0B43B1D046FACFF4E5DE7F6EADE3497BBD5E1C2EB065F72A5A7691C701002CAAF6B053069D45038F700300AC53AD65ACD18053069E1C64F2363AC3DF0BD2617F6C975CFF5E49CCD9E9F57AC907230350EDE0EF04E9B15FB643CE7FA7C6C34E391A94D3481000908EB54C505ED42AF375A60522737F00204D4D0F66341A7656B1E950E394C9F6294FA1F4778366D90FDB675DFDE7BC63F7BAC350AD65ACD15254D5D958936FA6E9A40700E4AFF6919D69A79D5785A0C9793A4A510040DDD63241B92AB48C069CC9DBCB7FA93104DB5EB95F0D1452A7FF6CAF1CFBCF8D9E8D9562A00100F2D6F8A9E70000EB24EC4C6108B6FD721C8A8536D07FB65F6EFDA7B00300644DD80100B226EC5430049B8FDC86622175FACF7CE4D47F0A3B0040D6841D00206BC2CE845C86EC18E7EF0AEB673FCB530E7F5761A7827A735EFC3D6173EC6F79C9E5EF29EC00005913760080AC093B239C3299AF9C4EA18414E93FF39543FF29EC00005913760080AC093B470CC1E62F87A1584891FE337F6DEF3F851D00206BC20E00903561270CC17649DB87622135FACFEE6873FF29EC00005913760080AC753EEC1882ED9E360FC5424AF49FDDD3D6FEB3F3610700C89BB00300644DD80100B2D6E9B0A3DEDC5D6DAD3B432AF49FDDD5C6FEB3D3610700C89FB0030064ADB361C7102C6D1C8A8514E83F695BFFD9D9B003007483B0030064AD9361C7102CA5B60DC542D3F49F94DAD47F7632EC0000DD21EC000059EB5CD83104CBA4360DC54293F49F4C6A4BFFD9B9B00300748BB0030064AD5361A70D436D34C7F601D3D93F9825F5EDA353612742BD996AB60B98CF7E4295366C179D0B3B0040B7083B0040D63A13769C32C93C6D398512364DFFC93CA9F79F9D093B004037093B0040D63A11760CC1B2A8D4876261D3F49F2C2AE5FEB313610700E82E610700C85AF661C7102CCB4A7928163649FFC9B252ED3FB30F3B0040B7093B0040D6B20E3B86605955AA43B1B029FA4F569562FF9975D8010010760080AC651B76521B42A39D6C477491ED9E3AA4B41D651B7622D49B391BDB0F5D66FBE72C52DB7EB20E3B0000C20E0090B52CC38E5326A94B8AA750C23AE93FA94B4AFD6796610700A024EC000059CB2EEC1882A56E290DC5C23AE93FA95B2AFD67766107006094B00300642DABB06308967549652816D645FFC9BAA4D07F661576000026093B0040D6B2093B866059B7148662611DF49FAC5BD3FD6736610700A08AB00300644DD80100B29645D8516F66539AAE3B43DDF49F6C4A93FD6716610700601A610700C85AEBC38E2158364D298B5CE83FD9B4A6FACFD6871D008059841D00206BAD0E3B8660698A52166DA7FFA4294DF49FAD0E3B0000F3083B0040D65A1B760CC1D234A52CDA4AFF49D336DD7FB636EC00002C42D80100B2D6CAB0A374404A6C8FB489ED95946C6A7B6C65D889506F260DB643DAC8764B0A36B91D6E6DEEA5567792FC0E7D2A214993DBA58309A9D06792BAE1367A727C5F47FF9944D8E9F57A7158F1EE26DF78B95CAF77FA3ED8B4D183C8E47668FBA469D3B641FD272998EC3F4773C03AB6CFC6CB582701A63771FBF0FFAA1DF5F07034006D602561C2E8F659750AA5ED9326E93F495913FD67A3616734C955059E79A9CEA7129A64FB2465B64F52B6E9EDB3F1919D2ACB5CF0CA85DDD834DB2729B37D92B2A6B6CF24C3CE74873E8D9024070D52E7AAC9A46AB85DAE77E34C6282F232264B5D43F6600048D5C9B1FBF49495F2F6756A59D8997DD61600909ED133ADAA8FE3BD5867E069B48C353A2979DAE9E7D0164A59A44A098BAE6B7CCE4E19784683CE32070D3B319B66FB2465B64F52D6D4F6D978D889A81ED28A98DF203E45D324DB2729B37D92B24D6F9F49849D2AF32E2AE40AA03469DAF6597E6AB17DD2A4D1EDB3EAD3B1ED932635717C4F7A82F2E90659EF7767C03266EDB0B64F9A361978AAEE83A66CFAF89E74D8294D7E3716A464DAA76648856E93546DEAF89E6C190BDA4CE02105B643181276A0663E459312DB23083B0040E6841D00206BC20EAC81AB29D334170C8413C20E009035610700C89AB0036BA294455394B0609CB00300644DD80100B226ECC01A2965B1694A58709AB00300644DD80100B226ECC09A2965B1294A58504DD80100B226EC00005913760080AC093BB001E6EDB06EE6EBC074C20E009035610700C89AB0031BA294C5BA2861C16CC20E009035610700C89AB0031BA49445DD94B0603E610700C89AB00300644DD8810D53CAA22E4A58B018610700C89AB00300644DD8818628657116B61F589CB0030D30CF823AD88E6031C20E009035610700C89AB0030D710A3AAB72CA392C47D80100B226EC0000591376A0414A592C4B090B9627EC00005913760080AC093BD030A52C16A58405AB11760080AC093B0040D6841D48805216F32861C1EA841D00206BC20E009035610712A2944515DB059C8DB00389301F83596C1FB03A610700C89AB00300644DD8818438059D494E3987B313760080AC093B0040D6841D488C521625252CA887B00300644DD80100B226EC408294B250C282FA083B0040D6841D00206BC20E244A29ABBB94B0A05EC20E009035610700C89AB00300644DD8818499B7D33DE6EB40FD841D00206BC20E009035610712A794D51D4A58B01EC20E009035610700C89AB0032DA094953F252C581F610700C89AB00300644DD8819650CACA971216AC97B00300644DD80100B226EC40CB2865E5C5DF13D64FD8811631AF234FFEAEB05EC20E009035610700C89AB0032DE314F47C38E51C3643D80100B226EC0000591376A08594B2DA4F090B3647D80100B2B6B58E27EDF57A71B8C047965EC547D3451E0700B0A8DAC34E1974160D3CC20DACA62C65D985DAC7DF0D36ABD632D668C029030F0040939298B3D3EBF5042300602D562A63D539D766743468D1D21730A494D53EFE5EB0792B859DBA02C92ACF336D044848028034355DBD59CBD958EB24D40040BBCC3B76AF3B0CD53A676774527255496AF2CD349DF4201776A576F0778266D43EB233EDB4F3AA103479C696511B589EAB29B78B6E0E366F2D65ACAAD0322D04093800C03A6DF4D473C10600D8B424AEB3039C8D5256FA9C720ECD11760080AC093B0040D6841DC8845256BA94B0A059C20E009035610700C89AB0031951CA4A8F1216344FD80100B226EC000059137620334A59E950C28234083B0040D6841D00206BC20E00903561073264DE4EF3CCD78174083B0040D6841D00206BC20E644A29AB394A589016610700C89AB00300644DD8818C29656D9E1216A447D80100B226EC000059137620734A599BA384056912760080AC093B0040D6841DE808A5ACF5D2BE902E61073AC03C92CDD0CE90A6ADA65700D89CC9D10707E7D519C981F610762073A307E5C97053DE27F42C6E5A9BF57ADA1352A58C05191B3DF8569D825E1E948D522C6656D029DB787439200DC20E646EDE28835188E5684F681F610732B5CC05EE5C78703EED09ED25EC40873808D7CF5593217DC20E00903561073AC6E84E7D8CEA403B083BD05102CFD9683F680F610732356B0467DAA9D34C37EBD4FD49DA13D2E2A28290B969075EE5ACD5CCBB70A03685F418D9818C2D7A913BA3108B99D74EAEA00C6932B203999B1578CAD11D6597C58C869969ED09A447D8818E98762056CE5A4ED98E820DB487321620F02CC0E817B497B0034484C0338BA003ED26EC0063049E71DA03DA4FD8018E19BDA8A65DA0DD841D608C72D609E52BC883B0039C22F0083A9013610798AAAB81A7ABEF1B7225EC0095BA3EAAD1F5F70F39117680A9BA58CE52BE82FC083BC04C5D0A3C820EE449D80116927BE0C9FDFD4197093BC05C5D19EDE8CAFB84AE11768085E45CCE52BE82BC093BC0C2720C3C820EE44FD80196964BE0C9E57D00B3093BC052721B05C9EDFD00A7093BC0D2722867295F4177083BC04ADA1C78041DE81661073893B6059EB6AD2F7076C20EB0B2B68E8EB475BD81D5083BC099B4A99CA57C05DD24EC0067D686C023E84077093B406D520D3CA9AE17B019C20E508BD4474D525F3F607D841DA0362996B394AF006107A8554A8147D00122841D604D9A0E3C4DBF3E900E6107A85D2AA329A9AC07D02C6107588B26CB59CA57C0286107589B26028FA0034C127680B5DB54E0314F07A822EC006BB5E95116A33AC024610758BB4D94B394AF8069841D6023D61978041D60166107D8A8BA038F793AC03CC20EB031EB1A7D31AA03CC22EC001B5567394BF90A5884B0036C5C1D8147D0011625EC008D5935F098A7032C43D8011A71D65119A33AC0A2841DA031AB94B394AF8065093B1DD6530BA895F65CCDB4C053D59E82CEEA6C9FF5D29EED22EC0049288F1DBD5EF9F3E1C8CFE6E900AB4B22EC48C8D06DE5684D397233FCBD77FC73D94518D50156D178D811748045BB01DD05B08A46C34EAFD78B431FD5808853A338A5F1D11E80E5351A76041DA06AD2F1B4793A9BF8F674203F5B9B7891AA5295A00354990C34BA0AE0AC361276EA0C36E6F8D44B7BD64B7BAEE2704ABB1D4644AF622467DAF2CCA3DDEAA53DDB632361A72E4683203FC332D6B47DFBF4EDB3970738ADF1B3B10000D6A9D1919DD121C0F2679FD8A05BCA393A8BECFAAEA00CACA2D1B023D800A57941C6F4086055CA5840E346AFA05CC5159481B368D50465205FB3028F90039C85B0032445B001EAD69A3296EB19D4A7D7EB1DFFA33EDAB31EB6CF7A69CF7A4C6B3FEDBA9AAA765BE7B6DA8A919DF23BB47C97D6D94DB6A1362525B6CF7A69CF7ACC0A3A8E4DCB9B1674D6B9AD263FB233FA86CB8D0A5263BB5C0F07109A36EDA0EBD8B49AA68261F261877A3978D4CFA73AC8977DBB5ED3DA73DDEDDC8A3216EBE1204D8A463F21DB3ECF6672C4417BD206EB3836093B1D25E8D4433BD6CF1C93FA98B343DBAC6B1B55C6EA201D5EBD46CF1E50B70758CD3A8F4DC9879DD1615807E9B3D386F53A3C3C3CFE57FE0EE4CFB1A95EEB6EC35694B19CDA57AFC9D107ED4A2ACC31A997F63CBB595F58EDD8B4BC59EDB9CE63532BC24E849DB42EDA717DB46D3DB463BDB4E7D9CC6B3FEDBB9CA6CEC64ABE8C05007016C20E009035610700C89AB00300644DD80100B226EC00005913760080AC093B0040D6841D00206BC20E009035610700C89AB00300646DA52F025DF65B74AB969FFC76D369F74D3E7FD537CC6EE25B7D97FD66DBC9E5A7BDDF65DB61D6F200C0694B879DAA83F8AC0E1AB1FA000001AE4944415483EDACE5AB1E376BF9F2E7AADB165D9F5554058C79CB4FAE6744F5FB9D16DCA6BDAF59410F00382DF9325655A899362232BA7C5DCE32A2336B3D977DAD45822100705AE361A7D7EB253D3AB18EF054F57E051700588FA5CB58CB8E56CC5A7E5A39AA8E3941299AF77E67CDF35964EE120070DA4A1394E74DBC5D64F95907EA65E7E0AC7BCE4E1D5679BF6D785F0090BAC6CB582C4FF00180C52D1D76E68DE44CDE3FAB84B58CD172D83207FB75CF099A7CEE69EB59573B0000CB39F39C9DAA12D5AC339256BD7DF4BEAADBAA969F75DBA2469F7BB204372D7C2DB39EABB40300B0B833CFD999BCBD6AD46599D3A967DD3EEDBE69CBD751EE99B72ED35E6399F5ACB37D0080719561E7ACA595944A339B589794DE2F00306E2CECF46F7E5ADCF6DE0B4DAD0B00D031171FD889E2D21DF1B67FF043F1B4A73D2D6EFE7337C72DAF7E73DCF6DA374EBDFFA627DDB4D46B9C1AD9B9F8C04E3D6B0F003047B173358A623F060F0FE2DAEEB5E16DC57E441C059DCAFB8BA55E636BF4C90000366E702DAE5CB912BBD77663FBFC76C4E0DA783699B8BF7F437FA9A7EF4584D9AE0040B6CA99B5020F0090A5FF0F0C71B4F8593BE0CC0000000049454E44AE426082>|png>|571px|461px||>

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>>>>
  </equation*>

  \ 

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|7|Homework3.tm>>
    <associate|auto-2|<tuple|2|7|Homework3.tm>>
    <associate|auto-3|<tuple|3|8|Homework2.tm>>
  </collection>
</references>