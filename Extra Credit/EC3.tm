<TeXmacs|1.99.2>

<style|generic>

<\body>
  <em|<with|color|dark red|Background (see Lesson 13)>>. A nonsingular matrix
  <math|\<b-A\>\<in\>\<bbb-R\><rsup|m\<times\>m>> can be factorized as
  <math|\<b-L\> \<b-U\>=\<b-A\>>, with <math|\<b-L\>\<in\>\<bbb-R\><rsup|m\<times\>m>>
  a lower triangular matrix, and <math|\<b-U\>\<in\>\<bbb-R\><rsup|m\<times\>m>>,
  an upper triangular matrix. Gaussian elimination is the factorization
  algorithm and can be represented in matrix form as
  <math|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>\<b-A\>=\<b-U\>>,
  using the lower-triangular multiplier matrices <math|\<b-L\><rsub|k>>.
  Denote <math|\<b-L\><rsup|-1>=\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>>,
  to obtain <math|\<b-A\>=\<b-L\> \<b-U\>>.\ 

  <strong|(EC3)>. The algorithm is efficient since the inverse of a
  multiplier matrix is easily computed:

  <\equation>
    \<b-L\><rsub|k>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>\<Rightarrow\>\<b-L\><rsub|k><rsup|-1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>=\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)>.
  </equation>

  (1 extra credit point) Prove the above relations (1).\ 

  \;

  <with|font-series|bold|Proof relation (1):>

  Calculating <math|\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)>>:

  <\equation*>
    \<b-L\><rsub|k>-\<b-I\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>-<matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|1>>>>>=
    <matrix|<tformat|<table|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,k>>|<cell|\<ldots\>>|<cell|0>>>>>
  </equation*>

  <\equation*>
    \<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)> =
    <matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|1>>>>>-<matrix|<tformat|<table|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,k>>|<cell|\<ldots\>>|<cell|0>>>>>
    = <matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>
  </equation*>

  To prove this matrix is the inverse of <math|\<b-L\><rsub|k>\<nocomma\>\<nocomma\>,multiply
  \<b-L\><rsub|k> by ><math|\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)> >to
  arrive at the identity matrix.

  <\equation*>
    \<b-L\><rsub|k><rsup|><around*|(|\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)>|)>
    = <matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>
    </equation*>

  <\equation*>
    = <matrix|<tformat|<table|<row|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>>|<row|<cell|m<around*|(|0|)>>|<cell|\<ddots\>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>>|<row|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>>|<row|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|1<around*|(|-l<rsub|k+1,k>|)>+1<around*|(|l<rsub|k+1,k>|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>>|<row|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|1<around*|(|-l<rsub|k+2,k>|)>+1<around*|(|l<rsub|k+2,k>|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|1<around*|(|-l<rsub|m,k>|)>+1<around*|(|l<rsub|m,k>|)>>|<cell|\<ldots\>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>>>>>=
    <matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|1>>>>>
  </equation*>

  Because <math|\<b-L\><rsub|k><rsup|><around*|(|\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)>|)>
  >is the identity matrix, <math|\<b-I\>-<around*|(|\<b-L\><rsub|k>-\<b-I\>|)>
  = \<b-L\><rsub|k><rsup|-1> = ><math|<matrix|<tformat|<table|<row|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ddots\>>|<cell|0>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+1,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|k+2,k>>|<cell|\<ldots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,k>>|<cell|\<ldots\>>|<cell|1>>>>>>

  \;

  Furthermore, from <math|\<b-L\><rsup|-1>=\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>>
  obtain

  <\equation>
    \<b-L\>=<around*|(|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<cdot\>\<b-L\><rsub|2><rsup|-1>\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|m-1><rsup|-1>.
  </equation>

  The product of the inverse multiplier matrices is also easily obtained as

  <\equation>
    \<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>.
  </equation>

  (1 extra credit point) Prove relations (2) and (3).

  \;

  <with|font-series|bold|Proof relation (2):<underline|>>

  \;

  First find <math|<around*|(|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>>:

  \ \ \ \ By definition of <math|\<b-L\><rsub|k>>:

  <\equation*>
    \<b-L\><rsub|1 = ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|3,1>>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|-l<rsub|m,1>>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-L\><rsub|2= ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|-l<rsub|3,2>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|-l<rsub|m-1,2>|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-l<rsub|m,2>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-L\><rsub|m-1> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|-l<rsub|m,m-1>>|<cell|1>>>>>
  </equation*>

  \;

  \ \ \ \ \ Then, <math|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>
  >

  <\equation*>
    = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>*\<cdot\>\<ldots\>\<cdot\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|-l<rsub|3,2>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|-l<rsub|m-1,2>|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-l<rsub|m,2>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|3,1>>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|-l<rsub|m,1>>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
  </equation*>

  \;

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|m<around*|(|0|)>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|-l<rsub|2,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|-l<rsub|3,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|-l<rsub|3,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|-l<rsub|m-1,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|-l<rsub|m-1,3>+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|-l<rsub|m,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|-l<rsub|m,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|-l<rsub|m,3>+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|-l<rsub|m,m-1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|3,1>>|<cell|-l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>>|<cell|-l<rsub|m-1,2>>|<cell|-l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|-l<rsub|m,1>>|<cell|-l<rsub|m,2>>|<cell|-l<rsub|m,3>>|<cell|\<ldots\>>|<cell|-l<rsub|m,m-1>>|<cell|1>>>>>
    =\<b-L\><rsup|-1>
  </equation*>

  \ \ \ \ By relation (1):

  <\equation*>
    <around*|(|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>
    = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>
  </equation*>

  \;

  \;

  Next find <math|\<b-L\><rsub|1><rsup|-1>\<cdot\>\<b-L\><rsub|2><rsup|-1>\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|m-1><rsup|-1>>

  \ \ \ By relation (1):

  <\equation*>
    \<b-L\><rsup|-1><rsub|1 = ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-L\><rsub|2><rsup|-1><rsub|= ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|l<rsub|3,2>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|l<rsub|m-1,2>|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|l<rsub|m,2>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-L\><rsub|m-1><rsup|-1> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>
  </equation*>

  \ \ \ Then <math|\<b-L\><rsub|1><rsup|-1>\<cdot\>\<b-L\><rsub|2><rsup|-1>\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|m-1><rsup|-1>
  =>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|l<rsub|3,2>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|l<rsub|m-1,2>|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|l<rsub|m,2>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>\<cdot\>\<ldots\>\<cdot\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|0|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|0|<cell|0>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|m<around*|(|0|)>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|2,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|3,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|l<rsub|3,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|l<rsub|m-1,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|l<rsub|m-1,3>+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|m,1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|l<rsub|m,2>+<around*|(|m-1|)><around*|(|0|)>>|<cell|l<rsub|m,3>+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>+<around*|(|m-1|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>
  </equation*>

  \;

  Because <math|\<b-L\><rsub|1><rsup|-1>\<cdot\>\<b-L\><rsub|2><rsup|-1>\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|m-1>
  = ><math|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>
  = ><math|<around*|(|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>,>

  <\equation*>
    \<b-L\><rsub|1><rsup|-1>\<cdot\>\<b-L\><rsub|2><rsup|-1>\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|m-1>
    = <around*|(|\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>
  </equation*>

  Proving relation (2).

  \;

  \;

  <with|font-series|bold|Proof relation (3)>

  \ \ From findings of relation (2),\ 

  \ \ 

  <\equation*>
    <around*|(|i|)> \<b-L\><rsup|-1> =\<b-L\><rsub|m-1>*\<cdot\>\<ldots\>\<cdot\>\<b-L\><rsub|2>\<b-L\><rsub|1>=
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|3,1>>|<cell|-l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>>|<cell|-l<rsub|m-1,2>>|<cell|-l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|-l<rsub|m,1>>|<cell|-l<rsub|m,2>>|<cell|-l<rsub|m,3>>|<cell|\<ldots\>>|<cell|-l<rsub|m,m-1>>|<cell|1>>>>>
    </equation*>

  Thus, to prove <math|\<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>\<nocomma\>\<nocomma\>,show
  \<b-L\> ><math|\<b-L\><rsup|-1>> = <math|\<b-I\>>:

  <\equation*>
    <around*|(|ii|)>\<b-L\>\<b-L\><rsup|-1
    =><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>\<nocomma\>\<nocomma\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|-l<rsub|3,1>>|<cell|-l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|-l<rsub|m-1,1>>|<cell|-l<rsub|m-1,2>>|<cell|-l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|-l<rsub|m,1>>|<cell|-l<rsub|m,2>>|<cell|-l<rsub|m,3>>|<cell|\<ldots\>>|<cell|-l<rsub|m,m-1>>|<cell|1>>>>>
    </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|2,1><around*|(|1|)>+-l<rsub|2,1><around*|(|1|)>+<around*|(|m-2|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|3,1><around*|(|1|)>+-l<rsub|3,1><around*|(|1|)>+<around*|(|m-3|)><around*|(|0|)>>|<cell|l<rsub|3,2><around*|(|1|)>+-l<rsub|3,2><around*|(|1|)>+<around*|(|m-3|)><around*|(|0|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|\<ldots\>>|<cell|m<around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1><around*|(|1|)>+-l<rsub|m-1,1><around*|(|1|)>+<around*|(|0|)>>|<cell|l<rsub|m-1,2><around*|(|1|)>+-l<rsub|m-1,2><around*|(|1|)>+<around*|(|0|)>>|<cell|l<rsub|m-1,3><around*|(|1|)>+-l<rsub|m-1,3><around*|(|1|)>+<around*|(|0|)>>|<cell|\<ldots\>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>|<cell|m<around*|(|0|)>>>|<row|<cell|l<rsub|m,1><around*|(|1|)>+-l<rsub|m,1><around*|(|1|)>>|<cell|l<rsub|m,2><around*|(|1|)>+-l<rsub|m,2><around*|(|1|)>>|<cell|l<rsub|m,3><around*|(|1|)>+-l<rsub|m,3><around*|(|1|)>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1><around*|(|1|)>+-l<rsub|m,3m-1><around*|(|1|)>>|<cell|1+<around*|(|m-1|)><around*|(|0|)>>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|0|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|1>>>>>=\<b-I\>
  </equation*>

  \ Because of (i) and (ii), <math|\<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|2,1>>|<cell|1>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|l<rsub|3,1>>|<cell|l<rsub|3,2>>|<cell|1>|<cell|\<ldots\>>|<cell|0>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|l<rsub|m-1,1>>|<cell|l<rsub|m-1,2>>|<cell|l<rsub|m-1,3>>|<cell|\<ldots\>>|<cell|1>|<cell|0>>|<row|<cell|l<rsub|m,1>>|<cell|l<rsub|m,2>>|<cell|l<rsub|m,3>>|<cell|\<ldots\>>|<cell|l<rsub|m,m-1>>|<cell|1>>>>>>
</body>

<initial|<\collection>
</collection>>