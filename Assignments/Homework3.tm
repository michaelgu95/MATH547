<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for
  applications>><title-date|September 30, 2015>

  <\title>
    Homework 3
  </title>

  \;

  <strong|Due date>: October 7, 2015, 11:55PM. Since multiple submissions are
  allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  <strong|Bibliography>: Course lecture notes Lessons 13-16.

  \;

  Question 1 contains an extra credit (EC3) question. You may submit the
  answer to EC3 with this homework or separately up to Fall Break (10/14,
  11:55PM). Note: Homework 0 constitutes EC1 and EC2.

  \;

  <with|color|dark red|<em|Save this file as Homework3Solution.tm in your
  MATH547/homework directory before starting to work on the solution.>>

  \;

  <strong|1.> (1 course points, 0.125 for each case) <with|color|dark
  blue|Use Gaussian elimination to compute the <math|\<b-L\> \<b-U\>>
  factorization of the following matrices. In each case explicitly show the
  multiplier matrix and partial result. Verify your results. You may use
  either Octave or hand computation to evaluate the matrix multiplications.>

  <\equation*>
    <around*|(|a|)><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|-1>|<cell|0>>>>>;<around*|(|b|)><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|1>>>>>;<around*|(|c|)><matrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-1>|<cell|1>|<cell|2>>>>>;<around*|(|d|)><matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>;<around*|(|e|)><matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|-3>|<cell|0>>|<row|<cell|1>|<cell|3>|<cell|2>>>>>
  </equation*>

  <\equation*>
    <around*|(|f|)><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|2>|<cell|3>|<cell|2>>|<row|<cell|-3>|<cell|1>|<cell|0>>>>>;<around*|(|g|)><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-1>|<cell|3>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|1>>>>>;<around*|(|h|)><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|1>|<cell|-2>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|5>>>>>;<around*|(|i|)><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|4>|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|0>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|2>>>>>
  </equation*>

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

  <with|font-series|bold|1.a.)>

  \;

  Matrix size is <math|m\<times\>m=2\<times\>2>.\ 

  \;

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|-1>|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|3>>>>>
  </equation*>

  \ \ 

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 3; -1 0]; format rat;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L1=eye(2); L1(2,1)=1; U1=L1*A; disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>>>>>\<Rightarrow\>
    \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|3>>>>>
  </equation*>

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        I2=eye(2); L = I2-(L1-I2); disp(L);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        U = L1*A;disp(L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3

        \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 0
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(A-L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  <with|font-series|bold|1.b.)>

  Matrix size is <math|m\<times\>m=2\<times\>2>.

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|-8>>>>>
  </equation*>

  \ \ 

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 3; 3 1]; format rat;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L1=eye(2); L1(2,1)=-3; U1=L1*A; disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -8
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|1>>>>>\<Rightarrow\>
    \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|-8>>>>>
  </equation*>

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        I2=eye(2); L = I2-(L1-I2); disp(L);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        U = L1*A;disp(L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(A-L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;
    </input>
  </session>

  \;

  \;

  <with|font-series|bold|1.c.)>

  Matrix size is <math|m\<times\>m=3\<times\>3>.

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-1>|<cell|1>|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[-1 1 -1 ;1 1 1;-1 1 2]; L1=eye(3); L1(2,1)=1; L1(3,1)=-1; U1=L1*A;
      disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|1>>>>>\<nocomma\>\<Rightarrow\>
    \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>
  </equation*>

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        I3=eye(3); L = I3-(L1-I3); disp(L);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        U = L1*A;disp(L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -1

        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1

        \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 2
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(A-L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;
    </input>
  </session>

  \;

  <with|font-series|bold|1.d.)>

  Matrix size is <math|m\<times\>m=3\<times\>3>.

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  \;

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>
    = <matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 0 3; 1 3 1; 0 1 1]; L1=eye(3); L1(2,1)=-1/2; U1=L1*A; disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ -1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/3>|<cell|1>>>>>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>
    = <with|mode|prog|><matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(3); L2(3,2)=-1/3; U2=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ -1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/6
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  \;

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>\<nocomma\>,\<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/3>|<cell|1>>>>>
    \<Rightarrow\> \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1/3>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        I3=eye(3); L = I3-(L1-I3)-(L2-I3); disp(L);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ 1/2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

        \ \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ 1/3 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        U = L2*U1;disp(L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(A-L*U);
      <|unfolded-io>
        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

        \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;
    </input>
  </session>

  \;

  <with|font-series|bold|1.e.)>

  Matrix size is <math|m\<times\>m=3\<times\>3>.

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
    <matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|-3>|<cell|0>>|<row|<cell|1>|<cell|3>|<cell|2>>>>>=
    <matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|3>|<cell|2>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[-1 0 0; 2 -3 0; 1 3 2]; L1=eye(3); L1(2,1)=2; L1(3,1)=1;
      U1=L1*A;disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -3 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 2
    </unfolded-io>

    \ \ \ \ Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
    \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|3>|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
    </equation*>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(3); L2(3,2)=1; U=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ -1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/6
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1><rsup|>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  \;

  \;

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
    \<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>\<Rightarrow\>
    \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|-1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      I3=eye(3); L = I3-(L1-I3)-(L2-I3); disp(L);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -3 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 2
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|font-series|bold|1.f.)>

  Matrix size is <math|m\<times\>m=3\<times\>3>.

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|0>|<cell|1>>>>>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|2>|<cell|3>|<cell|2>>|<row|<cell|-3>|<cell|1>|<cell|0>>>>>=
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|3>|<cell|4>>|<row|<cell|0>|<cell|1>|<cell|-3>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 0 -1; 2 3 2; -3 1 0]; L1=eye(3); L1(2,1)=-2; L1(3,1)=3;
      U1=L1*A;disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 4

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -3
    </unfolded-io>

    \ \ \ \ Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
    \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/3>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|3>|<cell|4>>|<row|<cell|0>|<cell|1>|<cell|-3>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
    </equation*>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(3); L2(3,2)=-1/3; U=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ -1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/6
    </unfolded-io>

    \;
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1>\<b-L\><rsub|3><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  \;

  \;

  <\equation*>
    \<b-L\><rsub|1>= <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|0>|<cell|1>>>>>
    \<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/3>|<cell|1>>>>>\<Rightarrow\>
    \<b-L\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|1/3>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|7/6>>>>>
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      I3=eye(3); L = I3-(L1-I3)-(L2-I3); disp(L);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -3 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 2
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  \;

  \;

  <with|font-series|bold|1.g.)>

  Matrix size is <math|m\<times\>m=4\<times\>4>.\ 

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-1>|<cell|3>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|3>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 0 -1 0;0 2 -1 -1; -1 3 0 2; 0 -1 2 1]; format rat;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L1=eye(4); \ L1(3,1)=1; U1=L1*A; disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1/2>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|3>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1/2>|<cell|7/2>>|<row|<cell|0>|<cell|0>|<cell|3/2>|<cell|1/2>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(4); L2(3,2)=-3/2; L2(4,2)=1/2; U2=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 1/2
      \ \ \ \ \ \ \ 7/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 3/2
      \ \ \ \ \ \ \ 1/2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 3. <math|\<b-L\><rsub|3> \<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|3>\<b-U\><rsub|2>=\<b-U\>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-3>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1/2>|<cell|7/2>>|<row|<cell|0>|<cell|0>|<cell|3/2>|<cell|1/2>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1/2>|<cell|7/2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-10>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L3=eye(4); L3(4,3)=-3; U=L3*U2; disp(U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 1/2
      \ \ \ \ \ \ \ 7/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ -10
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1>\<b-L\><rsub|3><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsup|><rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1/2>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|3><rsup|>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-3>|<cell|1>>>>>\<Rightarrow\>\<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|3/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/2>|<cell|3>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1/2>|<cell|7/2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-10>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      I4=eye(4); L = I4-(L1-I4)-(L2-I4)-(L3-I4); disp(L);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ 3/2 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ -1/2 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ -1
      \ \ \ \ \ \ \ \ -1

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ 1
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|font-series|bold|1.h.)>

  Matrix size is <math|m\<times\>m=4\<times\>4>.\ 

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|0>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|1>|<cell|-2>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|5>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-3>|<cell|4>>|<row|<cell|0>|<cell|-3>|<cell|7>|<cell|-4>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 1 -2 3;-1 2 3 0; -2 1 1 -2;3 0 1 5]; format rat;
    <|unfolded-io>
      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L1=eye(4); \ L1(2,1)=1; L1(3,1)=2; L1(4,1)=-3; U1=L1*A; disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -2
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ -3
      \ \ \ \ \ \ \ \ \ 4

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -3 \ \ \ \ \ \ \ \ \ 7
      \ \ \ \ \ \ \ \ -4

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|-3>|<cell|4>>|<row|<cell|0>|<cell|-3>|<cell|7>|<cell|-4>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|8>|<cell|-1>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(4); L2(3,2)=-1; L2(4,2)=1; U2=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -2
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -4
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 8
      \ \ \ \ \ \ \ \ -1

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 3. <math|\<b-L\><rsub|3> \<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|3>\<b-U\><rsub|2>=\<b-U\>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|8>|<cell|-1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L3=eye(4); L3(4,3)=2; U=L3*U2; disp(U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -2
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ -4
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 1

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1>\<b-L\><rsub|3><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsup|><rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|0>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|3><rsup|>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>>>>\<Rightarrow\>\<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|-1>|<cell|-2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      I4=eye(4); L = I4-(L1-I4)-(L2-I4)-(L3-I4); disp(L);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ -2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ -2
      \ \ \ \ \ \ \ \ \ 1

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -2
      \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ -1 \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ -2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ -2

      \ \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ \ 5

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|1.i.)>

  Matrix size is <math|m\<times\>m=4\<times\>4>.\ 

  Step 1. <math|\<b-L\><rsub|1> \<b-A\>=\<b-U\><rsub|1>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-1/2>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-3/2>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1/2>|<cell|0>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|4>|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|0>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|-3/2>|<cell|-5/2>|<cell|1/2>>|<row|<cell|0>|<cell|1/2>|<cell|1/2>|<cell|3/2>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 1 3 1;1 4 0 1;3 0 2 2;1 1 2 2]; format rat;
    <|unfolded-io>
      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L1=eye(4); \ L1(1\\2,1)=-1/2; L1(3,1)=-3/2; L1(4,1)=-1/2; U1=L1*A;
      disp(U1);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/2 \ \ \ \ \ \ -3/2
      \ \ \ \ \ \ \ 1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ -3/2 \ \ \ \ \ \ -5/2
      \ \ \ \ \ \ \ 1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 1/2 \ \ \ \ \ \ \ 1/2
      \ \ \ \ \ \ \ 3/2

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 2. <math|\<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|2>\<b-U\><rsub|1>=\<b-U\><rsub|2>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|3/7>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/7>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|-3/2>|<cell|-5/2>|<cell|1/2>>|<row|<cell|0>|<cell|1/2>|<cell|1/2>|<cell|3/2>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|0>|<cell|-22/7>|<cell|5/7>>|<row|<cell|0>|<cell|0>|<cell|5/7>|<cell|10/7>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L2=eye(4); L2(3,2)=3/7; L2(4,2)=-1/7; U2=L2*U1; disp(U2);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/2 \ \ \ \ \ \ -3/2
      \ \ \ \ \ \ \ 1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -22/7
      \ \ \ \ \ \ \ 5/7

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 5/7
      \ \ \ \ \ \ 10/7

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Step 3. <math|\<b-L\><rsub|3> \<b-L\><rsub|2> \<b-L\><rsub|1>
  \<b-A\>=\<b-L\><rsub|3>\<b-U\><rsub|2>=\<b-U\>>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|5/22>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|0>|<cell|-22/7>|<cell|5/7>>|<row|<cell|0>|<cell|0>|<cell|5/7>|<cell|10/7>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|0>|<cell|-22/7>|<cell|5/7>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|35/22>>>>>
  </equation*>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L3=eye(4); L3(4,3)=5/22; U=L3*U2; disp(U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ 7/2 \ \ \ \ \ \ -3/2
      \ \ \ \ \ \ \ 1/2

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ -22/7
      \ \ \ \ \ \ \ 5/7

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ 35/22

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Factorization and verification. <math|\<b-L\><rsup|-1>=\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>\<Rightarrow\>\<b-L\>=<around*|(|\<b-L\><rsub|3>\<b-L\><rsub|2>\<b-L\><rsub|1>|)><rsup|-1>=\<b-L\><rsub|1><rsup|-1>\<b-L\><rsub|2><rsup|-1>\<b-L\><rsub|3><rsup|-1>>,
  <math|\<b-A\>=\<b-L\> \<b-U\>>

  <\equation*>
    \<b-L\><rsup|><rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-1/2>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-3/2>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1/2>|<cell|0>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|3/7>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1/7>|<cell|0>|<cell|1>>>>>,\<b-L\><rsub|3><rsup|>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|5/22>|<cell|1>>>>>\<Rightarrow\>\<b-L\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1/2>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|3/2>|<cell|-3/7>|<cell|1>|<cell|0>>|<row|<cell|1/2>|<cell|1/7>|<cell|-5/22>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \<b-U\>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|7/2>|<cell|-3/2>|<cell|1/2>>|<row|<cell|0>|<cell|0>|<cell|-22/7>|<cell|5/7>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|35/22>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      I4=eye(4); L = I4-(L1-I4)-(L2-I4)-(L3-I4); disp(L);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ 1/2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ -0
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ 3/2 \ \ \ \ \ \ -3/7 \ \ \ \ \ \ \ \ \ 1
      \ \ \ \ \ \ \ \ -0

      \ \ \ \ \ \ \ \ 1/2 \ \ \ \ \ \ \ 1/7 \ \ \ \ \ -5/22
      \ \ \ \ \ \ \ \ \ 1

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 3
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 4 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ 2

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-L*U);
    <|unfolded-io>
      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      \ \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0 \ \ \ \ \ \ \ \ \ 0
      \ \ \ \ \ \ \ \ \ 0

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <strong|2>. (1 course point, 0.125 for each case) <with|color|dark blue|Use
  the Gram-Schmidt algorithm to compute the <math|\<b-Q\> \<b-R\>>
  factorization of the matrices from Problem 1. Show intermediate results.
  Verify your result. You may use either Octave or hand computation to
  evaluate scalar products, matrix multiplications.>

  <em|<with|color|dark red|Background (see Lesson 14)>>. A nonsingular matrix
  <math|\<b-A\>\<in\>\<bbb-R\><rsup|m*\<times\>m>> can be factorized as
  <math|\<b-Q\> \<b-R\>=\<b-A\>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<ldots\>>|<cell|\<b-a\><rsub|m>>>>>>|)>>,
  with <math|\<b-Q\>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<b-q\><rsub|1>>|<cell|\<ldots\>>|<cell|\<b-q\><rsub|m>>>>>>|)>\<in\>\<bbb-R\><rsup|m\<times\>m>>
  an orthogonal matrix, and <math|\<b-R\>=<around*|(|r<rsub|i
  j>|)><rsub|1\<leqslant\>i,j\<leqslant\>m>\<in\>\<bbb-R\><rsup|m\<times\>m>>,
  an upper (or right) triangular matrix. The Gram-Schmidt factorization
  algorithm is

  <\named-algorithm|(modified Gram-Schmidt)>
    Given <math|m> vectors <math|\<b-a\><rsub|1>,\<ldots\>,\<b-a\><rsub|m>>

    Initialize <math|\<b-q\><rsub|1>=\<b-a\><rsub|1>>,..,<math|\<b-q\><rsub|m>=\<b-a\><rsub|m>>,
    <math|\<b-R\>=\<b-I\>>

    for <math|i=1> to <math|m>

    \ \ <math|r<rsub|i i>=<around*|(|\<b-q\><rsub|i><rsup|T>
    \<b-q\><rsub|i>|)><rsup|1/2>>; <math|\<b-q\><rsub|i>=\<b-q\><rsub|i>/r<rsub|i
    i>>

    \ \ for <math|j=i>+1 to <math|m>

    \ \ \ \ <math|r<rsub|i j>=\<b-q\><rsub|i><rsup|T> \<b-a\><rsub|j>>;
    <math|\<b-q\><rsub|j>=\<b-q\><rsub|j>-r<rsub|i j>\<b-q\><rsub|i>>

    \ \ end

    end

    return <math|\<b-Q\>,\<b-R\>>
  </named-algorithm>

  \;

  \;

  2.)a.)

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|-1>|<cell|0>>>>>
  </equation*>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[1 3; -1 0]; Q=A; R=eye(2);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:2

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ \ 0.70711 \ \ 1.50000 \ \ 1.41421 \ \ 2.12132

        \ \ -0.70711 \ \ 1.50000 \ \ 0.00000 \ \ 2.12132
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:2

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ \ 0.70711 \ \ 0.70711 \ \ 1.41421 \ \ 2.12132

          \ \ -0.70711 \ \ 0.70711 \ \ 0.00000 \ \ 2.12132
        </unfolded-io>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  \;

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\folded-io>
        octave\<gtr\>\ 
      <|folded-io>
        disp([Q'*Q Q*R-A]);
      <|folded-io>
        \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
      </folded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  \;

  2.)b.)

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|1>>>>>
  </equation*>

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[1 3; 3 1]; Q=A; R=eye(2);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:2

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ \ 0.31623 \ \ 2.40000 \ \ 3.16228 \ \ 1.89737

        \ \ \ 0.94868 \ -0.80000 \ \ 0.00000 \ \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:2

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ \ 0.31623 \ \ 0.94868 \ \ 3.16228 \ \ 1.89737

          \ \ \ 0.94868 \ -0.31623 \ \ 0.00000 \ \ 2.52982
        </unfolded-io>

        <\input>
          octave\<gtr\>\ 
        <|input>
          \;
        </input>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q'*Q Q*R-A]);
      <|unfolded-io>
        \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  <\equation*>
    \;
  </equation*>

  2.)c.)

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>>>>>=<matrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-1>|<cell|1>|<cell|2>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[-1 1 -1; 1 1 1;-1 1 2]; Q=A; R=eye(3);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:3

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ -0.57735 \ \ 0.66667 \ -1.00000 \ \ 1.73205 \ -0.57735
        \ \ 0.00000

        \ \ \ 0.57735 \ \ 1.33333 \ \ 1.00000 \ \ 0.00000 \ \ 1.00000
        \ \ 0.00000

        \ \ -0.57735 \ \ 0.66667 \ \ 2.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:3

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ -0.57735 \ \ 0.40825 \ -1.50000 \ \ 1.73205 \ -0.57735
          \ \ 0.00000

          \ \ \ 0.57735 \ \ 0.81650 \ \ 0.00000 \ \ 0.00000 \ \ 1.63299
          \ \ 1.22474

          \ \ -0.57735 \ \ 0.40825 \ \ 1.50000 \ \ 0.00000 \ \ 0.00000
          \ \ 1.00000
        </unfolded-io>

        <\input>
          \;
        <|input>
          <\input>
            octave\<gtr\>\ 
          <|input>
            i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
          </input>

          <\input>
            octave\<gtr\>\ 
          <|input>
            for j=i+1:3

            \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

            end;
          </input>

          <\unfolded-io>
            octave\<gtr\>\ 
          <|unfolded-io>
            disp([Q R]);
          <|unfolded-io>
            \ \ -0.57735 \ \ 0.40825 \ -0.70711 \ \ 1.73205 \ -0.57735
            \ \ 0.00000

            \ \ \ 0.57735 \ \ 0.81650 \ \ 0.00000 \ \ 0.00000 \ \ 1.63299
            \ \ 1.22474

            \ \ -0.57735 \ \ 0.40825 \ \ 0.70711 \ \ 0.00000 \ \ 0.00000
            \ \ 2.12132
          </unfolded-io>

          <\input>
            octave\<gtr\>\ 
          <|input>
            \;
          </input>
        </input>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q'*Q Q*R-A]);
      <|unfolded-io>
        \ \ \ 1.00000 \ \ 0.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ -0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  <\session|octave|default>
    \;

    \;
  </session>

  2.)d.)

  \;

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|3>>|<row|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[2 0 3; 1 3 1;0 1 1]; Q=A; R=eye(3);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:3

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ \ 0.89443 \ -1.20000 \ \ 0.20000 \ \ 2.23607 \ \ 1.34164
        \ \ 3.13050

        \ \ \ 0.44721 \ \ 2.40000 \ -0.40000 \ \ 0.00000 \ \ 1.00000
        \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:3

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ \ 0.89443 \ -0.41906 \ \ 0.17073 \ \ 2.23607 \ \ 1.34164
          \ \ 3.13050

          \ \ \ 0.44721 \ \ 0.83812 \ -0.34146 \ \ 0.00000 \ \ 2.86356
          \ -0.06984

          \ \ \ 0.00000 \ \ 0.34922 \ \ 1.02439 \ \ 0.00000 \ \ 0.00000
          \ \ 1.00000
        </unfolded-io>

        <\input>
          \;
        <|input>
          <\input>
            octave\<gtr\>\ 
          <|input>
            i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
          </input>

          <\input>
            octave\<gtr\>\ 
          <|input>
            for j=i+1:3

            \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

            end;
          </input>

          <\unfolded-io>
            octave\<gtr\>\ 
          <|unfolded-io>
            disp([Q R]);
          <|unfolded-io>
            \ \ \ 0.89443 \ -0.41906 \ \ 0.15617 \ \ 2.23607 \ \ 1.34164
            \ \ 3.13050

            \ \ \ 0.44721 \ \ 0.83812 \ -0.31235 \ \ 0.00000 \ \ 2.86356
            \ -0.06984

            \ \ \ 0.00000 \ \ 0.34922 \ \ 0.93704 \ \ 0.00000 \ \ 0.00000
            \ \ 1.09322
          </unfolded-io>

          <\input>
            octave\<gtr\>\ 
          <|input>
            \;
          </input>
        </input>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q'*Q Q*R-A]);
      <|unfolded-io>
        \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000
        \ -0.00000

        \ \ \ 0.00000 \ -0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  \;

  \;

  2.)e.)

  \;

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>>>>>=<matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|-3>|<cell|0>>|<row|<cell|1>|<cell|3>|<cell|2>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[-1 0 0; 2 -3 0;1 3 2]; Q=A; R=eye(3);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:3

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ -0.40825 \ -0.50000 \ \ 0.33333 \ \ 2.44949 \ -1.22474
        \ \ 0.81650

        \ \ \ 0.81650 \ -2.00000 \ -0.66667 \ \ 0.00000 \ \ 1.00000
        \ \ 0.00000

        \ \ \ 0.40825 \ \ 3.50000 \ \ 1.66667 \ \ 0.00000 \ \ 0.00000
        \ \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:3

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ -0.40825 \ -0.12309 \ \ 0.54545 \ \ 2.44949 \ -1.22474
          \ \ 0.81650

          \ \ \ 0.81650 \ -0.49237 \ \ 0.18182 \ \ 0.00000 \ \ 4.06202
          \ \ 1.72328

          \ \ \ 0.40825 \ \ 0.86164 \ \ 0.18182 \ \ 0.00000 \ \ 0.00000
          \ \ 1.00000
        </unfolded-io>

        <\input>
          \;
        <|input>
          <\input>
            octave\<gtr\>\ 
          <|input>
            i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
          </input>

          <\input>
            octave\<gtr\>\ 
          <|input>
            for j=i+1:3

            \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

            end;
          </input>

          <\unfolded-io>
            octave\<gtr\>\ 
          <|unfolded-io>
            disp([Q R]);
          <|unfolded-io>
            \ \ -0.40825 \ -0.12309 \ \ 0.90453 \ \ 2.44949 \ -1.22474
            \ \ 0.81650

            \ \ \ 0.81650 \ -0.49237 \ \ 0.30151 \ \ 0.00000 \ \ 4.06202
            \ \ 1.72328

            \ \ \ 0.40825 \ \ 0.86164 \ \ 0.30151 \ \ 0.00000 \ \ 0.00000
            \ \ 0.60302
          </unfolded-io>

          <\input>
            octave\<gtr\>\ 
          <|input>
            \;
          </input>
        </input>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q'*Q Q*R-A]);
      <|unfolded-io>
        \ \ \ 1.00000 \ \ 0.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ -0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  \;

  \;

  \;

  2.)f.)

  \;

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|2>|<cell|3>|<cell|2>>|<row|<cell|-3>|<cell|1>|<cell|0>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[1 0 -1; 2 3 2;-3 1 0]; Q=A; R=eye(3);
    </input>

    \;

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        for j=i+1:3

        \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

        end;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q R]);
      <|unfolded-io>
        \ \ \ 0.26726 \ -0.21429 \ -1.21429 \ \ 3.74166 \ \ 0.80178
        \ \ 0.80178

        \ \ \ 0.53452 \ \ 2.57143 \ \ 1.57143 \ \ 0.00000 \ \ 1.00000
        \ \ 0.00000

        \ \ -0.80178 \ \ 1.64286 \ \ 0.64286 \ \ 0.00000 \ \ 0.00000
        \ \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          for j=i+1:3

          \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

          end;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          disp([Q R]);
        <|unfolded-io>
          \ \ \ 0.26726 \ -0.07005 \ -1.09160 \ \ 3.74166 \ \ 0.80178
          \ \ 0.80178

          \ \ \ 0.53452 \ \ 0.84063 \ \ 0.09924 \ \ 0.00000 \ \ 3.05894
          \ \ 1.75130

          \ \ -0.80178 \ \ 0.53707 \ -0.29771 \ \ 0.00000 \ \ 0.00000
          \ \ 1.00000
        </unfolded-io>

        <\input>
          \;
        <|input>
          <\input>
            octave\<gtr\>\ 
          <|input>
            i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
          </input>

          <\input>
            octave\<gtr\>\ 
          <|input>
            for j=i+1:3

            \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

            end;
          </input>

          <\unfolded-io>
            octave\<gtr\>\ 
          <|unfolded-io>
            disp([Q R]);
          <|unfolded-io>
            \ \ \ 0.26726 \ -0.07005 \ -0.96107 \ \ 3.74166 \ \ 0.80178
            \ \ 0.80178

            \ \ \ 0.53452 \ \ 0.84063 \ \ 0.08737 \ \ 0.00000 \ \ 3.05894
            \ \ 1.75130

            \ \ -0.80178 \ \ 0.53707 \ -0.26211 \ \ 0.00000 \ \ 0.00000
            \ \ 1.13582
          </unfolded-io>

          <\input>
            octave\<gtr\>\ 
          <|input>
            \;
          </input>
        </input>

        \;
      </input>

      <\session|octave|default>
        \;
      </session>
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([Q'*Q Q*R-A]);
      <|unfolded-io>
        \ \ \ 1.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
        \ -0.00000

        \ \ -0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
        \ \ 0.00000

        \ \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ -0.00000
        \ \ 0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  \;

  \;

  2.)g.)

  \;

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>|<cell|\<b-a\><rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-1>|<cell|3>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|2>|<cell|1>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>> (When
  entering a for loop in the Octave calculations below use Shift+Enter for a
  new line).

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[1 0 -1 0; 0 2 -1 -1;-1 3 0 2;0 -1 2 1]; Q=A; R=eye(4);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.70711 \ \ 1.50000 \ -0.50000 \ \ 1.00000 \ \ 1.41421 \ -2.12132
      \ -0.70711 \ -1.41421

      \ \ \ 0.00000 \ \ 2.00000 \ -1.00000 \ -1.00000 \ \ 0.00000 \ \ 1.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ -0.70711 \ \ 1.50000 \ -0.50000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.00000 \ -1.00000 \ \ 2.00000 \ \ 1.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.51640 \ \ 0.01737 \ \ 1.14027 \ -0.47511 \ \ 3.87298
      \ \ 1.80739 \ \ 3.61478 \ \ 2.84019

      \ \ \ 0.25820 \ \ 0.92052 \ -0.56561 \ -0.18100 \ \ 0.00000 \ \ 3.83840
      \ -0.39947 \ \ 0.48631

      \ \ \ 0.77460 \ -0.36474 \ -0.94570 \ -0.02262 \ \ 0.00000 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.25820 \ \ 0.13895 \ \ 1.12217 \ \ 1.19910 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.70711 \ \ 0.48666 \ \ 0.24210 \ \ 0.68182 \ \ 1.41421
      \ -2.12132 \ -0.70711 \ -1.41421

      \ \ \ 0.00000 \ \ 0.64889 \ \ 0.10376 \ -1.13636 \ \ 0.00000
      \ \ 3.08221 \ -1.78444 \ \ 0.00000

      \ \ -0.70711 \ \ 0.48666 \ \ 0.24210 \ \ 0.68182 \ \ 0.00000
      \ \ 0.00000 \ \ 1.52177 \ \ 1.31426

      \ \ \ 0.00000 \ -0.32444 \ \ 0.93381 \ -0.22727 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=4; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.70711 \ \ 0.48666 \ \ 0.24210 \ \ 0.45227 \ \ 1.41421
      \ -2.12132 \ -0.70711 \ -1.41421

      \ \ \ 0.00000 \ \ 0.64889 \ \ 0.10376 \ -0.75378 \ \ 0.00000
      \ \ 3.08221 \ -1.78444 \ \ 0.00000

      \ \ -0.70711 \ \ 0.48666 \ \ 0.24210 \ \ 0.45227 \ \ 0.00000
      \ \ 0.00000 \ \ 1.52177 \ \ 1.31426

      \ \ \ 0.00000 \ -0.32444 \ \ 0.93381 \ -0.15076 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 1.50756
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q'*Q Q*R-A]);
    <|unfolded-io>
      \ \ \ 1.00000 \ -0.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ -0.00000 \ \ 1.00000 \ \ 0.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ -0.00000 \ \ 0.00000 \ \ 1.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ -0.00000 \ -0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  2.)h.)

  \;

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>|<cell|\<b-a\><rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-2>|<cell|3>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|-2>|<cell|1>|<cell|1>|<cell|-2>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|5>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>> (When
  entering a for loop in the Octave calculations below use Shift+Enter for a
  new line).

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[1 1 -2 3;-1 2 3 0;-2 1 1 -2;3 0 1 5]; Q=A; R=eye(4);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.25820 \ \ 1.20000 \ -1.73333 \ \ 1.53333 \ \ 3.87298 \ -0.77460
      \ -1.03280 \ \ 5.68038

      \ \ -0.25820 \ \ 1.80000 \ \ 2.73333 \ \ 1.46667 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000 \ \ 0.00000

      \ \ -0.51640 \ \ 0.60000 \ \ 0.46667 \ \ 0.93333 \ \ 0.00000
      \ \ 0.00000 \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.77460 \ \ 0.60000 \ \ 1.80000 \ \ 0.60000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.25820 \ \ 0.51640 \ -2.66667 \ \ 0.33333 \ \ 3.87298 \ -0.77460
      \ -1.03280 \ \ 5.68038

      \ \ -0.25820 \ \ 0.77460 \ \ 1.33333 \ -0.33333 \ \ 0.00000 \ \ 2.32379
      \ \ 1.80739 \ \ 2.32379

      \ \ -0.51640 \ \ 0.25820 \ \ 0.00000 \ \ 0.33333 \ \ 0.00000
      \ \ 0.00000 \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.77460 \ \ 0.25820 \ \ 1.33333 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.25820 \ \ 0.51640 \ -0.81650 \ \ 0.00000 \ \ 3.87298 \ -0.77460
      \ -1.03280 \ \ 5.68038

      \ \ -0.25820 \ \ 0.77460 \ \ 0.40825 \ -0.16667 \ \ 0.00000 \ \ 2.32379
      \ \ 1.80739 \ \ 2.32379

      \ \ -0.51640 \ \ 0.25820 \ \ 0.00000 \ \ 0.33333 \ \ 0.00000
      \ \ 0.00000 \ \ 3.26599 \ -0.40825

      \ \ \ 0.77460 \ \ 0.25820 \ \ 0.40825 \ \ 0.16667 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=4; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.25820 \ \ 0.51640 \ -0.81650 \ \ 0.00000 \ \ 3.87298 \ -0.77460
      \ -1.03280 \ \ 5.68038

      \ \ -0.25820 \ \ 0.77460 \ \ 0.40825 \ -0.40825 \ \ 0.00000 \ \ 2.32379
      \ \ 1.80739 \ \ 2.32379

      \ \ -0.51640 \ \ 0.25820 \ \ 0.00000 \ \ 0.81650 \ \ 0.00000
      \ \ 0.00000 \ \ 3.26599 \ -0.40825

      \ \ \ 0.77460 \ \ 0.25820 \ \ 0.40825 \ \ 0.40825 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 0.40825
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q'*Q Q*R-A]);
    <|unfolded-io>
      \ \ \ 1.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000 \ -0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ -0.00000 \ \ 1.00000 \ -0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ -0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  2.)(i)

  <\equation*>
    \<b-A\>=<matrix|<tformat|<table|<row|<cell|\<b-a\><rsub|1>>|<cell|\<b-a\><rsub|2>>|<cell|\<b-a\><rsub|3>>|<cell|\<b-a\><rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|4>|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|0>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|2>>>>>
  </equation*>

  \;

  Initialization: <math|\<b-Q\>=\<b-A\>,\<nocomma\>\<b-R\>=\<b-I\>> (When
  entering a for loop in the Octave calculations below use Shift+Enter for a
  new line).

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      format short; A=[2 1 3 1; 1 4 0 1; 3 0 2 2; 1 1 2 2]; Q=A; R=eye(4);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=1; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.51640 \ \ 0.06667 \ \ 1.13333 \ -0.46667 \ \ 3.87298
      \ \ 1.80739 \ \ 3.61478 \ \ 2.84019

      \ \ \ 0.25820 \ \ 3.53333 \ -0.93333 \ \ 0.26667 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.77460 \ -1.40000 \ -0.80000 \ -0.20000 \ \ 0.00000 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.25820 \ \ 0.53333 \ \ 1.06667 \ \ 1.26667 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=2; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.51640 \ \ 0.01737 \ \ 1.14027 \ -0.47511 \ \ 3.87298
      \ \ 1.80739 \ \ 3.61478 \ \ 2.84019

      \ \ \ 0.25820 \ \ 0.92052 \ -0.56561 \ -0.18100 \ \ 0.00000 \ \ 3.83840
      \ -0.39947 \ \ 0.48631

      \ \ \ 0.77460 \ -0.36474 \ -0.94570 \ -0.02262 \ \ 0.00000 \ \ 0.00000
      \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.25820 \ \ 0.13895 \ \ 1.12217 \ \ 1.19910 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=3; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=i+1:4

      \ \ R(i,j)=Q(:,i)'*A(:,j); Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);

      end;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.51640 \ \ 0.01737 \ \ 0.58698 \ -0.75540 \ \ 3.87298
      \ \ 1.80739 \ \ 3.61478 \ \ 2.84019

      \ \ \ 0.25820 \ \ 0.92052 \ -0.29116 \ -0.04197 \ \ 0.00000 \ \ 3.83840
      \ -0.39947 \ \ 0.48631

      \ \ \ 0.77460 \ -0.36474 \ -0.48682 \ \ 0.20983 \ \ 0.00000 \ \ 0.00000
      \ \ 1.94262 \ \ 0.47750

      \ \ \ 0.25820 \ \ 0.13895 \ \ 0.57766 \ \ 0.92326 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      i=4; R(i,i)=sqrt(Q(:,i)'*Q(:,i)); Q(:,i)=Q(:,i)/R(i,i);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q R]);
    <|unfolded-io>
      \ \ \ 0.51640 \ \ 0.01737 \ \ 0.58698 \ -0.62329 \ \ 3.87298
      \ \ 1.80739 \ \ 3.61478 \ \ 2.84019

      \ \ \ 0.25820 \ \ 0.92052 \ -0.29116 \ -0.03463 \ \ 0.00000 \ \ 3.83840
      \ -0.39947 \ \ 0.48631

      \ \ \ 0.77460 \ -0.36474 \ -0.48682 \ \ 0.17314 \ \ 0.00000 \ \ 0.00000
      \ \ 1.94262 \ \ 0.47750

      \ \ \ 0.25820 \ \ 0.13895 \ \ 0.57766 \ \ 0.76180 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 1.21195
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Verification. Since <math|\<b-Q\>> should be an orthogonal matrix,
  <math|\<b-Q\><rsup|T>\<b-Q\>> should be the identity matrix. Since
  <math|\<b-Q\>\<b-R\>=\<b-A\>>, <math|\<b-Q\> \<b-R\>-\<b-A\>> should be the
  null matrix.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([Q'*Q Q*R-A]);
    <|unfolded-io>
      \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ -0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ -0.00000 \ -0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ -0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ -0.00000 \ -0.00000 \ \ 1.00000 \ -0.00000 \ \ 0.00000
      \ \ 0.00000 \ \ 0.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <strong|3>. (1 course point) Consider textbook exercises C23-26 on page 55
  that were the subject of Q1&2 in Homework 2. For each of the exercises
  compute the projection matrix onto the column space of <math|\<b-A\>> and
  onto the left null space, project <math|\<b-b\>> onto the column space and
  left null space, and verify the nature of the solutions to <math|\<b-A\>
  \<b-x\>=\<b-b\>> (no solution, unique solution, infinitely many solutions).
  Use computer computation.

  <with|color|dark red|<em|Background (see Lesson 15)>>. Given a matrix
  <math|\<b-A\>\<in\>\<bbb-R\><rsup|m\<times\>n>> of rank
  <math|k\<leqslant\>min<around*|(|m,n|)>>, a reduced <math|<wide|\<b-Q\>|^>
  <wide|\<b-R\>|^>=\<b-A\>> factorization with
  <math|<wide|\<b-Q\>|^>\<in\>\<bbb-R\><rsup|m\<times\>k>>,
  <math|<wide|\<b-R\>|^>\<in\>\<bbb-R\><rsup|k\<times\>n>> can be obtained by
  <math|k> steps of the Gram-Schmidt algorithm. The matrix
  <math|\<b-P\>=<wide|\<b-Q\>|^> <wide|\<b-Q\>|^><rsup|T>\<in\>\<bbb-R\><rsup|m\<times\>m>>
  projects a vector onto the column space of <math|\<b-A\>>. The orthogonal
  projector <math|\<b-O\>=\<b-I\>-\<b-P\>\<in\>\<bbb-R\><rsup|m\<times\>m>>
  projects a vector onto the left null space.

  <em|<with|color|dark red|Examples>>. (C21)

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 4 3 -1; 1 -1 1 2; 4 1 6 5]; b=[5 6 9]'; k=rank(A); [m n]=size(A);
      format short;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([m n k]); Im=eye(m);
    <|unfolded-io>
      \ \ \ 3 \ \ 4 \ \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [Q R]=qr(A); Qhat=Q(:,1:k);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      P=Qhat*Qhat'; O=Im-P;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
    <|unfolded-io>
      \ \ \ 1.1144e+01 \ \ 4.2212e+00 \ \ 8.8818e-16
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is non-zero, hence
  there is no solution.

  (C22)

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 -2 1 -1; 2 -4 1 1; 1 -2 -2 3]; b=[3 2 1]'; k=rank(A); [m
      n]=size(A);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([m n k]); Im=eye(m);
    <|unfolded-io>
      \ \ \ 3 \ \ 4 \ \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [Q R]=qr(A); Qhat=Q(:,1:k);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      P=Qhat*Qhat'; O=Im-P;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
    <|unfolded-io>
      \ \ \ 3.7417e+00 \ \ 1.8853e-15 \ \ 5.0877e-16
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is zero (to machine
  precision), hence there is a solution. The dimension of the null space is
  <math|n-k=1>, so there is a one-parameter, infinite family of solutions
  <math|\<b-x\>=\<b-x\><rsub|p>+\<lambda\> \<b-z\><rsub|1>>.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      xp=A\\b; Z=null(A); disp([xp Z]);
    <|unfolded-io>
      \ \ \ 0.60000 \ \ 0.89443

      \ \ -1.20000 \ \ 0.44721

      \ \ -2.00000 \ \ 0.00000

      \ \ -2.00000 \ \ 0.00000
    </unfolded-io>
  </session>

  C23 (0.25 course points):

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 -2 1 -1; 1 1 1 -1; 1 0 1 -1]; b=[3 1 2]'; k=rank(A); [m n] =
      size(A);
    <|unfolded-io>
      \;
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([m n k]); Im=eye(m);
    <|unfolded-io>
      \ \ \ 3 \ \ 4 \ \ 2

      <\errput>
        \;
      </errput>
    </unfolded-io>

    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        [Q R]=qr(A); Qhat=Q(:,1:k);
      <|unfolded-io>
        <\errput>
          \;
        </errput>
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        P=Qhat*Qhat'; O=Im-P;
      <|unfolded-io>
        <\errput>
          \;
        </errput>
      </unfolded-io>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
      <|unfolded-io>
        \ \ \ 3.7321e+00 \ \ 2.6726e-01 \ \ 1.1102e-16

        <\errput>
          \;
        </errput>
      </unfolded-io>
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is non-zero, hence
  there is no solution.

  \;

  C24 (0.25 course points):

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[1 -2 1 -1; 1 1 1 -1; 1 0 1 -1]; b=[2 2 2]'; k=rank(A); [m n] =
      size(A);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([m n k]); Im=eye(m);
    <|unfolded-io>
      \ \ \ 3.00 \ \ 4.00 \ \ 2.00
    </unfolded-io>

    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        [Q R]=qr(A); Qhat=Q(:,1:k);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        P=Qhat*Qhat'; O=Im-P;
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
      <|unfolded-io>
        \ \ \ 3.46 \ \ 0.00 \ \ 0.00
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is zero (to machine
  precision), hence there is a solution. The dimension of the null space is
  <math|n-k=2>, so there is a two-parameter, infinite family of solutions.

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        xp=A\\b; Z=null(A); disp([xp Z]);
      <|unfolded-io>
        \ \ \ 0.67 \ -0.82 \ \ 0.00

        \ \ \ 0.00 \ \ 0.00 \ \ 0.00

        \ \ \ 0.67 \ \ 0.41 \ \ 0.71

        \ \ -0.67 \ -0.41 \ \ 0.71
      </unfolded-io>

      <\textput>
        \;
      </textput>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </input>
  </session>

  \;

  C25 (0.25 course points):

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        A=[1 2 3;2 -1 1;3 1 1;0 1 2]; b=[1 2 4 6]'; k=rank(A); [m n] =
        size(A);
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([m n k]); Im=eye(m);
      <|unfolded-io>
        \ \ \ 4.00 \ \ 3.00 \ \ 3.00
      </unfolded-io>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          [Q R]=qr(A); Qhat=Q(:,1:k);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          P=Qhat*Qhat'; O=Im-P;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
        <|unfolded-io>
          \ \ \ 5.74 \ \ 4.91 \ \ 0.00
        </unfolded-io>

        <\input>
          octave\<gtr\>\ 
        <|input>
          \;
        </input>
      </input>
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is non-zero, hence
  there is no solution.

  \;

  C26 (0.25 course points):

  \;

  <\session|octave|default>
    <\input>
      \;
    <|input>
      <\input>
        octave\<gtr\>\ 
      <|input>
        A=[1 2 3;2 -1 1;3 1 1;0 5 2]; b=[1 2 4 1]'; k=rank(A); [m n] =
        size(A);
      </input>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp([m n k]); Im=eye(m);
      <|unfolded-io>
        \ \ \ 4.00 \ \ 3.00 \ \ 3.00
      </unfolded-io>

      <\input>
        \;
      <|input>
        <\input>
          octave\<gtr\>\ 
        <|input>
          [Q R]=qr(A); Qhat=Q(:,1:k);
        </input>

        <\input>
          octave\<gtr\>\ 
        <|input>
          P=Qhat*Qhat'; O=Im-P;
        </input>

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          bP=P*b; bO=O*b; disp([norm(bP) norm(bO) norm(bP+bO-b)]);
        <|unfolded-io>
          \ \ \ 4.69 \ \ 0.00 \ \ 0.00
        </unfolded-io>

        <\input>
          octave\<gtr\>\ 
        <|input>
          \;
        </input>
      </input>
    </input>
  </session>

  From above results, the projection of <math|\<b-b\>> onto the left null
  space, <math|\<b-b\><rsub|\<b-O\>>=\<b-O\> \<b-b\>>, is zero (to machine
  precision), hence there is a solution. The dimension of the null space is
  <math|n-k=0>, so there is only one solution.

  \;

  <strong|4.> (1 course point)<with|color|dark blue| Consider the problem of
  fitting a quadratic function <math|f<around*|(|x|)>=a<rsub|2>
  x<rsup|2>+a<rsub|1> x+a<rsub|0>> to the data
  <math|\<cal-D\>=<around*|{|<around*|(|x<rsub|i>,y<rsub|i>|)>,i=1,\<ldots\>,m|}>>>.

  <\enumerate-alpha>
    <item>Form the sum <math|S<around*|(|a<rsub|0>,a<rsub|1>,a<rsub|2>|)>=<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-f<around*|(|x<rsub|i>|)>|)><rsup|2>>

    <\equation*>
      S<around*|(|a<rsub|0>,a<rsub|1>,a<rsub|2>|)>=<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-<around*|(|a<rsub|2>
      x<rsub|i><rsup|2>+a<rsub|1> x<rsub|i>+a<rsub|0>|)><rsup|>|)><rsup|2>
    </equation*>

    <item>Compute the derivatives

    <\equation*>
      <frac|\<partial\>S|\<partial\>a<rsub|0>>,<frac|\<partial\>S|\<partial\>a<rsub|1>>,<frac|\<partial\>S|\<partial\>a<rsub|2>>
    </equation*>

    <\equation*>
      <frac|\<partial\>S|\<partial\>a<rsub|0>> =
      2<big|sum><rsub|i=1><rsup|m>y<rsub|i>-<around*|(|a<rsub|2>x<rsub|i><rsup|2>+a<rsub|1>x+a<rsub|0>|)>
    </equation*>

    <\equation*>
      <frac|\<partial\>S|\<partial\>a<rsub|1>> =
      2<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-<around*|(|a<rsub|2>x<rsub|i><rsup|2>+a<rsub|1>x<rsub|i>+a<rsub|0>|)>|\<nobracket\>><around*|(|x<rsub|i>|)>
    </equation*>

    <\equation*>
      <frac|\<partial\>S|\<partial\>a<rsub|2>> =
      2<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-<around*|(|a<rsub|2>x<rsub|i><rsup|2>+a<rsub|1>x+a<rsub|0>|)>|)><rsup|><around*|(|x<rsub|i><rsup|2>|)>
    </equation*>

    \;

    <item>Form a system of equations <math|\<b-A\> \<b-a\>=\<b-b\>> from

    <\equation*>
      <frac|\<partial\>S|\<partial\>a<rsub|0>>=0,
      <frac|\<partial\>S|\<partial\>a<rsub|1>>=0,
      <frac|\<partial\>S|\<partial\>a<rsub|2>>=0
    </equation*>

    <\equation*>
      2<big|sum><rsub|i=1><rsup|m>y<rsub|i>-<around*|(|a<rsub|<rsub|>2>x<rsub|i><rsup|2>+a<rsub|1>x<rsub|i>+a<rsub|0>|)>
      = 0 \<Rightarrow\> ma<rsub|0> \<noplus\>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i>|)>a<rsub|1>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>a<rsub|2>=
      <big|sum><rsub|i=1><rsup|m>y<rsub|i>
    </equation*>

    <\equation*>
      \ 2<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-<around*|(|a<rsub|2>x<rsub|i><rsup|2>+a<rsub|1>x<rsub|i>+a<rsub|0>|)>|\<nobracket\>><around*|(|x<rsub|i>|)>
      = 0 \<Rightarrow\> <big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i>|)>a<rsub|0>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>a<rsub|1>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|3>|)>a<rsub|2>=
      <big|sum><rsub|i=1><rsup|m>x<rsub|i>y<rsub|i>
    </equation*>

    <\equation*>
      2<big|sum><rsub|i=1><rsup|m><around*|(|y<rsub|i>-<around*|(|a<rsub|2>x<rsub|i><rsup|2>+a<rsub|1>x+a<rsub|0>|)>|)><rsup|><around*|(|x<rsub|i><rsup|2>|)>
      = 0\<Rightarrow\><big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>a<rsub|0>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|3>|)>a<rsub|1>+<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|4>|)>a<rsub|2>=
      <big|sum><rsub|i=1><rsup|m>x<rsub|i><rsup|2>y<rsub|i>
    </equation*>

    <item>Express the matrix <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>3>>
    and vector <math|\<b-b\>\<in\>\<bbb-R\><rsup|3>> in terms of the data
    <math|\<cal-D\>>.

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|m>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i>|)>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|3>|)>>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|2>|)>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|3>|)>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|x<rsub|i><rsup|4>|)>>>>>><matrix|<tformat|<table|<row|<cell|a<rsub|0>>>|<row|<cell|a<rsub|1>>>|<row|<cell|a<rsub|2>>>>>>=<matrix|<tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|m>y<rsub|i>>>|<row|<cell|<big|sum><rsub|i=1><rsup|m>x<rsub|i>y<rsub|i>>>|<row|<cell|<big|sum><rsub|i=1><rsup|m>x<rsub|i><rsup|2>y<rsub|i>>>>>>
    </equation*>
  </enumerate-alpha>

  \;

  <strong|5.> (4 course points) <with|color|dark blue|Electroencephalograms
  (EEGs) are recordings of the electric potential on cranium skin. Research
  on brain activity uses EEGs to determine specific activity patterns in the
  brain. For example, epileptic seizures have a distinctive EEG signature.
  Certain emotive (fear, happiness) or cognitive (concentration, distraction)
  states, also show characteristic EEG signatures. Identification of such
  states of the brain from EEGs leads to a number of linear algebra problems.
  A typical EEG recording is within the lessons directory. It can loaded into
  Octave, and the data can be plotted.>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      load /home/student/courses/MATH547/lessons/eeg/eeg;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      data=EEG.data'; [m n]=size(data); disp([m n]);
    <|unfolded-io>
      \ \ \ 30504 \ \ \ \ \ 32
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      pdata=data./max(data)+meshgrid(0:n-1,0:m-1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      hold on;

      for j=1:n

      \ \ plot(pdata(:,j));

      end;

      hold off;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      cd /home/student/courses/MATH547/homework; print -mono -deps eeg.eps;
    <|unfolded-io>
      \;
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  There are <math|n=32> electrode recordings at <math|m=30504> moments of
  time, and plot produced by the above instructions is in Fig. 1 (The plot
  was displayed into a window, and the Screenshot utility was used to capture
  the image).

  <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D4948445200000396000001C90806000000FE4CA6750000000473424954080808087C0864880000001974455874536F66747761726500676E6F6D652D73637265656E73686F74EF03BF3E0000200049444154789CECBD7FAC6DDB551E368FB944E78149EF4DAD081AA5C86E63A506DAD4AF858229521DB5E5879008944A85FC036D93268148291029698A1AC048A5A64D2AC81F698C234ADC94042715D829B8EFA1DAB25FD2DAEFA971CDA398705F85ABFB28867B822FB9BBF1C5A77F9CBBEE9D679CF1E31B63CEB5F7DAE77C9F74B5F79A6BCE31C69C73FC9C6BED734F5A6BE78D200882200882200882206A383969AD9D7FF0577EB3BDFCEA59BBF7C987ED6CB73BB450370A2FFEEA597BE17DEF6DEFF9B35FDB6EBFF6763B3D3D6DCF9C3E7368B10882200882200882205CDC7F70BF3DFBE6675B6BADDD6AADB5975F3D6B7FE385BB17771F3D6CED160B9B7DE185BFFFA1D676F7DBFDB3FBEDF4F4B49DDE3A6DED56BBF854B07BC4C29F2008822008822088C3E2F4D6696B674FAF6FB5D6DABD4FDEBF28285B6BBBD6DAE9E3EFC49EB03B6BBB87BBD61EB5F6CCAD679E1698AD3DDEA1C778D4DA69D30BCE4BFD08822008822008822056C6AE7BDBF5566BAD9D7DAAB5DDA3C7371FB5F6D2FBDED5DAA38B42A7B5E5D3C1ADD65A3B6DFFEA1FF9F635E4BDDEF8F4AEB5DDAE9D7DF2ACDDFFBC8BA79677DA9DB6BBB56BA7B74EDBE9E9D34272B7DB5D3CB1ECF7E3F1D3CDD3D353169704411004411004B127BCEDFBDFD61EEE1E3EC9CFA3370B973713DFFE5FBEFD5A8C6F8F94C2F2E1A3DDD3C2727751E8BCE7C77FA4BDF889FBEDEEAFEFC2DF5DBEFC89FBEDA5BFF5C34F68CCC08BDFFB75ADB5D6DEFC7DEF994774A3D83DB8DFBEFB9DEF6DEDB5B75B3BBDDDDAE933ADDD3A6D1FFCF3DFF8A4607CF6FBDF7D51507E7A7751F42F58FABDF6E2B799D62BB40441100441100441CCC3FD07F7DB3BFEEA3BE0FE2FBEF4627BDBF7BDADED1EECAECDF8870FEE3FB97FABB58BA794BBC74F27EFEF5A6B8F76EDC557EEB71F7BE1E5D6AEBC7AB9BBD276F785F75EBCCE99282C7FE1FBBE4E6D7FD3F75E2E246716ABB321E7206547F0FA2FF9F2F6E55FFFB597DA5E78E57EBBFB8177B7BB9FB8DBEEDCBE73515C3EDCB5E77EE84FB5973E71BFDDFDE4AEDDFFD4AEBDF0CABD76F703EF6D773F71B77DC1EBBEA0ED5EBBBBF8E33FFC8D2C41100441100441AC8AE569DDDDBB77A1FEEFFE3BEF6EF7CFEE3F1977F4E31FECDAD943F1C472F7E8E953CBE511E8CBF7CEDAC3E555D81E8F5A6BB7E413CC8BA79C0F0B7F58E6F57FFEA752ED5BC222E3DD1FFCA6D65A2BCDBFB5D69EFFE57B97AE5FFDE80BAD3D386B67BF7E76F104F2516B6DB76B1F7AE57EFBD19F7F59EF777ADAEEDCBAD34E6F9DB6878DBF91250882200882208835F1E435D0C483B0DD6ED71E2E7FDB6663E3DFF0C637B45FF9A55FB9D45FB65D1AFF68F7E4E9656B4F0ACBC7AFC23EBA2810778F1EB6571FECDA6ED79EFE6EEFD1E3EF8F3AE1FB7B8F6A4F17AD31F77EE8A258FB823F7B51BC7DF667BDA6FDE75FF725ED9BDFFCCFB7DB9FF3BB2EF55DFAC8315ADB722DC79F9CB4F62D5FFAFAF61FBEE55F685FF87B3EB7DDFBC70FDB3B3EF88FDA5F7FE11FB573F07FFA2C3F5D15BF99BC2076BFDD7F70BF9D7EEAF4F17BCF0FDBCBF7BAA7C28F2EF7BBFDE076DB9DEEDAEE7477F50FFCF0B79704411004411004B10A9642EB8BDEF445EAFD8FFDC2C79E7CDF293F317C98F8C3A9DEF811FECBD837BCF10D4FFA6B6D97C66BBFB1DC2D8D4B71F9A85DFA21673FF8129E1439BBD6DA4355D008D198E5FE9FFA77BEB8FDC75FF92FB6777CE097DA0FBCE7FF68DFFBF57FA87DDB5BFEC0151AE7E73A4DD9F6AE7FF02BEDCFBDFBC3EDB71E7EBAB5D6DAB77FE51F686FFFA637B7FFF17FBFDBBEFABFF9D9F69D6F7D53FBC16FF8436DF7FFFDD3F6CE0F7E7CCA5C203C29D277EDECECECE27793BBD3D61EEDDAAB67BBAB9BF9B8DFD96BCF9E14904FFECB92E5AFCB6EF8756282200882200882384A7CFAF167946B5B35143ADEA23791FFC7FEE1C7DA17FDCB1785A42C503FF60F3FA6D684BB47BBF670F7B4287EFA2C6B29221FBFFEFAE4096606855741EFFFB7DF7AE9FACE9F143F207D4CF35BBEECF5ADB5D6FED2CFBED4CE7EEB41FB4BFFF38B4F0ACB9EEF67CECF753944DBF7FDDD7FD07EEB53FFE4C9F51FFFAA37B6D65AFBA19FF970FBAD4F7DAAFDC8CFBDD4BEFBDFFDE2F6C7BFEA8DED9DFFEB47B1C94CFB3F261FB6F668D77EF8EF7CA8B5D33BADDD3A6DADEDDA877EF16EDBDD7DF14AEF1FFEE9975A3BBDDBDAE9E945DF5BCFB4F7FCA75F7BB197A78D4F2C0982200882200862252C3F25FCC88B1F71EFA3D7283F743CCAFF232F7EA43DFBE6672FDDFBC88B1F71C75F7962F9048F2E5E837DF25A2B3AC9A5202D145677FED88F06B42F68FEBEDB9FDB5A6BEDD77EE3375BFB9DCFB4577FE3D357FA98D74ADBAFFDC66F5EBAFEC2D77D5E6BADB58FFCC56FBED4FE86DFFBBB13EB30A7B03CFDFD6F6A5FFE6F5DFE833E2FFDF22BEDEC037FE3298FC7AF26FFCC4FFE547BE197EFB597EF9DB5FB0F1EB6977EF995B67BF943EDDEAFDF6BB7EFDC6E77DA1DFE572404411004411004B11632BF7154EB9479E33FF2BF5D2E6E9FFDD2672FDD4FF317F7BC22F3D6E51B0FDBF2C77A76FD6F291F899EF2BA75C54E16E0A3DBFFE7FE83F686DFFBCFB4D77DCE33EDDEFDDF6E9F7FFB73AEF4F9CCF979FBACD79CB4D7FCCE49FBCCF979FB823B9F6BF311D7AF9EFD76FBC2D7FDEEF6A6EFFAEBEDDEFDDF2E4C44E13130FEA5FFF3954BB776BFFA626B8F76EDDBFFCD7FE9C95F7EFDD1F7BDD87EFE17EFB577FCBD179EF6BBFB626BBBB376F6C9B376FAD9A76D776B77F15AEC95BFEE4B1004411004411044154B51957DE2D8BF4ADA7FBEE52BDEA276FFE0873E088DB764B9D296E0FFEC973E6BF297B8F2C4B23DDCB5D6768FFF4A6CF74352AF307B225CFEAF91466396FB3FFEFE8FB6FFE2DFFBCAF627FEED2F696FFBBB1F6ADFF935FFCA953EBF74EF37DB1FFCE7FED9F6356FFEFDED7FF9E82BEDCF7DC3BF66F291D73FF2B31F6EFFD5B7BEB5FDC56FFE37DA9FF9EF9F6BFFF4D3BFD3BEE28DBFAF7DC7573FDBBEFE87FEF694B90CE3D1C5EF27EFBCF6F153C8D367DA8BBF7A76756E0F1EB6FB67F79F3CA9BCD3EE5C1498AD5DFA7F2E3D23E0FF87491004411004411000920F97AEFC5D96E46F24BDF16A710A8C7FCB573D1DF7C1F75F14924BDB5BBEE22D4FDAD4F18FA1BF20997EB5F5A2182DBD0A1A8D797CFFBFFE9FDEDF5EF7DADFD5FEE8577E49FBCEAF7E56EDF327FEEA4FB7BFFC6D5FD3DEF99F7C5DFBECCF7A8DCF475CFFC87B3ED4FEDFFBFFB8FDE9AFF9B2F60B6FFF8F5A6BADBDF07F7DA2FDE59FF99029E3C377FD85CBD73FFEDDADB5D69EF9961FF0E754C1236D7D4FDBAB67F72FB73FEE777676F6F415D8C74F984F6F9DB687B72E1F1668C5E5D2EF995BCFF0155A82200882200882D0209EFCA1639EF417E39F7BFE3975C825FA2B8D7FEEF9E7DA1F7EEB1F6ECF3DFFDC257AB2CDAA1F5A9365C3C3A7C5CBA5576123C8FF0203C033FFBE5F7CC9FB9F7EF499F63D3FF673ED7B7EECE75A6BADDDFEDCD376EF9DDFDD7EEDECC113BE7FFF173ED1BEEC7BFEBB32DF9F7CFFC7DA4FBEFF63E6FD0CADB5F0577EFEA5767A7AE7C9F5DD5F7CB9B57B2F8B5EBBF6C37FEFC5767AFA4CF7077D4EDB5FFBB6B7B6D3672E9E44FED11F7BBEFB834D9D72F4FDF8877F08822008822008C247F28965FF9754B734FEB99F7BEE0A2DAD6D19FFCCE93397DAAF960D8F079EDD7DA9B5575E4A8878DADAA767FD55541D7FE54F7E43FBFEBFF95CFB27BB4FB7FFEC9B2E1ECDFEED0F7E7475BE9BC0EB5EDF3EFFCBBFF152D3D9C75F6ABB97DE7BE549E64FBCEBA7DAF32FDF6B2F7DE27EBBF760D7CE3EFE526B9F78B9DD7BF55E7BE6B5CF5CBCE6BADBB5BFF6837FC1EC77E7F69D76FADAD327852841100441100441104FF1F0D1C3F6E24B2FB6E73FF03C3EE8D6D357498F7DBC5F58F67F31E8C3EF6EEDD1C3A74FB502066D0FBFC9FBD0CBFF777BFE07FF58FBFCDFF379ED577FFDACFDC0DF7CBEBDFDDDEF5F9DEF5670F67151E8BFFA726B8F76ED1BFFF5D73FF9BF2BDFF5C2DDF6FCCBF7DABB7EFABD97FAED1EDC6F676767ADB576F13AEC6E17F6BBD3EE348220088220088220747CC79FFE8EB67B70F17FCD3F0CFEDECA33B79E69A7A7A76DF7F0E943A1631D7FFBCEED2B7F93453CB17CFC075EBEF8AD2E5113D3FE1F471D3FF1BE17DA4FBCEF85B8E34DC1E3D7584F6F9D5E3C5D7CFCCAEB0BAFDC13BFBB6CADEDCEDAFDB3FB4F7E6BD91EEDDC7EA7A7A717A7117C159620088220088220AEE05BFF836F2D8D5B9EF81DF3F83BB7AF3E80BAFAC49285C471E1F193CAE5BF2039BDD5DABD33BDC0DFED2E4E23DA696BEDD12EECF770F790FA4010044110044110C425DCBE7DBBED1E5CAE25AE960DAFDEDD973CC40C3CDA3D2D186F3DFEA34B1F7FA9B54FDE55FBDD3FBBDF4E6F9DB6DDEE61D86FF768D74E1FF0379604411004411004413CC59DDB77DABDDDBD4B6D570ACBDD87DFBD3781883978F7DFBAFC576177BFF8F36ABF77FD0FB57E0441100441100441100BBEEBCF7CD79536F545C7F3F3F3D585210882200882200882208E0B2727276AFB6BF62C0741100441100441100471CDC0C29220088220088220088218020B4B82200882200882200862082C2C0982200882200882208821B0B02408822008822008822086B05A61A9FDB520EB2F0811044110044110044110C78BBD3DB13C393969E7E7E72C2E098220088220088220AE1956292C65F1B81495AD351697044110044110044110D70CD30BCBBE8824088220088220088220AE3FF8C77B0882200882200882208821DC9A496CD6D34ABE2A4B1004411004411004310F6BBF553AB5B06CED7251385268F275DA9B01BE3A7D33C07DBE19E03EDF0C709F6F0EB8D73703DCE79B817D3CB89BFA2AECF9F9F9937FCBF5F2B94C86CA4B100441100441100471BDB0B7DF582EC5258B4A822008822008822088EB85D50A4BAD80645149100441100441100471FDC0BF0A4B1004411004411004410C81852541100441100441100431041696044110044110044110C41058581207057F777B33C07DBE19E03EDF0C709F6F0EB8D73703DC676216585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812044110044110044110436061491004411004411004410C81852541100441100441100431041696044110044110044110C410585812C486717272680908822008627B607C2488EDE1C61496C7EE80B622FF56E4B8EE383979BAD6CB77AE7D0D95B5E35ACF01D7713EFA35E5FA5E06D7E3E6817B4E10DBC2D116969A33E913F0EBE46CE45CF63D3F6BADF78D88E775D9736F1ED74DB7F789CABA69B63783EE4DC2B1E8ECDA72CEA46DD142796C614F46F9AF39D77DE4115E0E433CC5ECBD587B7D67D3A73E10C786A3292CB5A2312A2465BBD74FFB2EDB90C2267AD234E22446938911C879C9B67D21E2A9ADBFD607E525FB67E9658362B5F8C9EAE62CDE3360D9F38CC40B3994B1F85A9F724C96BF752F1AABDD43F7DD1AABCD371AA7F18DFA473246ED55DD44EC752D1FA1F9A18C2EA1D7237E6E64ED35BBF1FE79F467D835F2DDD2F78836E29B343A5A3CB26294A7439E5C9EEC5A7BD6962C3D1BD92FF45E960EE2BB237A595D44F8446323DDB274262317A277E81882F0703485E5083C871C2555C8279ABC549D8E751DF1C8241B5E304564F41C2BBA161E3F243189EE7B81DB72EC9E23F674666D278C06852A3D6D1DAAC1D6A211E98DC717B13B2409C90668845E44DBD3C3A85DBB8726356832A18DF1741EF533E87E450990255366BD2B7D647FCF6632FB67C9D1D344F618EDE3D9A5B7D7288F483EAF2D92231AE3F1F2F854FDDB2C9F9FB18D68ACE7C323DA886D657C153AD61A87D0B4784473F0EC57F6B3D608D553748CC63B9A67748DFA8C8CCD1184875B87160081A6D4E7E7B976842E6A4C954026C79F9F5F1DD7CB2EE761CD2B9245A3D7F39F894CF0B3DABCF66A3F6B4C565EED7ED601CBFDE8F7A192D844325973F3EC240A66BDEC960DCAB123F3F4C6EC53BF2359A2FED61A48B92B415D9B7B3519407518BD27F7C61B57E59D496E113E5A3FCD664751F13D19BAD9B8E4B555682E58D62EA3CB9267D636AC588AF2AE62F69E2273460B10E4BBD726EF599F0B349F7788B81F8DCDAE29CA27EB2BB3BC466245155A3C23881E9B7D62B904A18C111C83A2F7495FD6298CCCCF73A8BD13F4D6FCFCFCF06BECF1EFEF1D5A4E0D5E509F91D05465C9F6AB24086BEAB6467FDFEB89601F417FA1710CEB3103B3E7E5E9E148617553B085039D7DF8FED1833284EE75C09AC5E275B2C3ADE72E1AAED3FA1373B1D1C2D2B62CADB8916DCBF5D2D65F6B463B5A3059BC46504DC4B5B5B1E8238EC15AAF883E224315DA5E57C76BD7F29EA65F169DAC2C48118FEA16BA2FFB28CE2B4960659E288FB583F5B124033DE47AF76D5E7FEB1AE135136BAD79E6892F128B66228A65595A33C622FE73948E350669CFD0966346638B77DFDAC7D9F39841272BE71AC8EAD2A1D6AA4A3FF2C3D6FD99FBB26F7F465C4F1CC5ABB0ADD5153A2A8CAC31DE2B7EF2F5288BEE422792C14B607A9E8B91575EF1A9A09A10AC2193B5B6915C72FDBDB593FD109ED61ECBBEB29F57505AFC2D3EDEB5C55FCAE1E952B4BF1E2D6FBE4890B4E4E8E7A3ADB337DE7AAD4EE39F39E0D1641FB105CFDF207221F3431214A937165DCB2F46B223B651F5751E6DA94391EE79BEC4A26DC980CC07DDEB2C6626DC96FFF0FCABE7C790BDE8FB2F40FCB2E597BCBD95BC509FAEF9444B76AB2D82178FBCEF9EFC88CE596BAAF1EC81D2F4E6E4F14590F19F7D3FCD57483BF6DA24CD8CFD4B7933BAE2F545F72DCB932036FAC4F2297A63EC0D21FBBA5DF6090A92C023C68618A9452BE314E4A716C8967644762FC994FCB5B1928F76ADD1D7FA58B27A012E9A87C6D7EB17F1F6EE45F390FDBCD7187BE78FC898D1514DCE482FADB97A7CE47724C07A72447B673D9D977AAAC914D95104CB1633D0F859B6EEDDCB265FDE35C2BF356CDD23FE161D494B932FEBF7D1E4377BAD256E555F2CF519F193168D8C0E237E0C9507199F41367E467D96FDCA14F596FFB47868B1B4E7E9F9272F5E4A99505BB5E683B6797C2C793CC8BE5EE1E3D190B4E44199E727AD35B7687BFD23FAC83CACF6CC1EF463ABB2A0F18FB899985A589E9C9C5CF927EF83945A6BBA616ACEBE6F5BBE678382E4B35C670DC8922FC35FF28C921D2B41A8380DAB6F653D23FA5EC282069F0A2A016A41751DD12776D1E189D61EED4D652DB34129BA9FD1C5DE96AB326713268B3F729885D8854C6AAC4420E373507BC9F8931E99833A6FAF9035CA245F95F541F864E820F00E3F2B0537CAA73A56D3C1CA7A6932796B31737D2DDED1819C6C8BF4557B0A65F51B899BC861A96C1B49FA2D79D118E361C45F6976339A1BF4C56ACFB7B25F519CF0F62C3AACB7F2D9AA6DF634BD7133733EE26661EAABB0E74243FB42F2E4E4A49D9F9F3FF98C69CD91C932782D20F4455A9F28C936D9AF1F6BF1EEAFAB496F94CC69C12EE225E7E1D1977C3447871403D63A78EB133955299336A7686DBDE4420B429AAE487A96631E2D9C2DFA9ADE6A7391DF91809D2DF4B4F19297A48D04D945C65E1E44F7ACFDF3F821B4A45C1AAF9EA7C657D3FDA858D3D6C09253932BD2CD0C2D4D5E644DAD796B7DB46B2DB98AD60D694321F7012938BC3DB0EC37135F3CBF942D0CBDF5D46C15D12F6B6C2F9FD78EC4078FA746D7EB87F8224D36642D229FA87DF77C8CB56F19DF88B469F10FF1575978EBE6C5EBC82E2D5A9A0D59E32CBE4BFF28BE68BA92B13B2BE7D0E4F2E0E5391A9D59B939717DB1DA6F2CFB02B2FF9E292ED744D6914A8723FB6792218D47540C7863D1FB9AB3B2BE47097EC4530B74966C99824EF28802762497C737A2D7B7CB805041769C97588E024990653F2BB06593598FBE6CB7E4440F372CBE5939A37B597FD07F8F0E51D0A2A63267D44FAE79CFC38C395A34B37A9BE58DE844466F225E916F42E2DF08D035898A3D74DD105F3C3B69CEEA4E866675AC955BCC3C24D4F223D9D79229E29191C793D16A8BC62FDF2BF6E3B5236322FF96394043FACDB0738258A5B03C64E13892D82F8882E90CFA5AA2EC39FD8C53439C9577723723C9AB26D2B3EE8D229B9068ED51A1B40F640B03ED7E56B7B2FC108CC83C427706662548E8B8B5F6E0985029DA223A95A70115CCB4971985F60C64E2CAA8BD54E8CC1EB36FFD407D76551F66ECDFEC2272DFFA3C5BC635E2E23EE3199F5C1216A6FFF19EE5F557FCF7941EADA7FF7A9C9FEB85D7A1147DD62B1ED192217CB2B2C8F5F56438E41AF7328CF43B64725529D834EC730FF6B55E6BCFE9D8E9EF13B3F79C6B73BD61BDF5B20F7E6BF4DF374DB97E87B4970CFFD1279E155BBA4EBEA447BFEED61CB73677FA42C2C2F4C2F2FCFCFCC9BF7A71796E2AAD665C5691E9FD8B68A6250E78F47D10442751330A2C647BA2F5DE6720B41C6FD62167F71FE557D95F6F1F345D5A3BE8EF3378C9F9F59FDE5A7A3222FE21235B05913E6E0572BDD1FE23BCAAFDAAFB3A5284583E38730098F555A87C87D6CFCC7E66ED558ECDFABF43F8006D4D91B873A822B922CBA1FDD9160E14D680A6339E1FDC77CE35C3E710FB85F68754B53FA8BA1636FFDF8D2C584BA14782ECC8E91EEA20ACC0EABD5FAFF1B3DA22DE19B9A2C2AFCAD73B0CF0FA7A05B057F86B8ED4DA2B447F461208B4F897FF2C7AB2BF765FB645B43559AC6B8F9FD72E6979324541D9C3D2A7F204D9B3812AAA76ECD940C646643F646FB3FDB3BA90993F026F8E116D6B6CB476FDF8997E79DF342CFF88CCD58B89914D233ECEEA87F06FEDE9A15F14D72C5DB7FA6A3EA6A20712DEFA22B12B234FC63651BFAB8DAFD871463ECF2779FED2DB73540F2258B660F5D3AEB57920F39915BF88C3A07FC027FFED03D3FFBB110DFDD3CBEAEF2F67FD66E6A94CBA4395F7FA36ED13E113B545CE039D97E79C35479345FF742D7AA28C38B0AC53F6900924D6EFA6107AC87D6F7D9140D69AFFBB9825D9F174D892134916D08444CA1DF1B2F433FA4D4E455FFBFEDEEBF49A8E224FA490B5D7F878FEC35BAFC89E243FAF4F848CCE48F9245FEDE70C96CEC8F9F6FB2F0FD23C7F26F7DE9A8336A66247C83ACBF95834FA6BCF5E341F96F165B268F280E8AEC62F230F2A872797D53FD2810C6FD4E6BD6B09CDBFF7B24572A3B1C8F3D1517E65F9624B0E2F2678BECBFAB478CAB19ABC5A1FCDC744C8FAD5687E285FAF1FE2975064E697A54DDC2C4CFFEF46FAE2B22F202B7F0D564B10A28252BBDF3B104937230302CF51454E2C925373F6FD1834514061D1D3F6A2921878E334E766259788BCD56466844E94D8C8FDEEFBCAEF9E4C16D004479313099A15DED67ECAEF164674DCB21FEF3E4A6F2441D1EE69F24574D0FD907EA3EF63ED497F6DE96DD59EBCB19E0E6BFE40FA24CD47456D960C883D696B2B7D3432178B96BCEFC92265CDBCC28B2263C3F21EA233D2AE3CFD5CFA596BE90199BB27AF66FF72CFB5B5A9F83AAF2D73B86EF1CCCA23658A623022A3E7977B7BCCC64B0D9A5F8BF44CCAD31F0848BF66E50191AD58BEC49229D279CBDF78FE5EA38B149EC4CDC6F4BF0AEB158E785139F7AFCA2209A39728694E114D3A91FE9A91A3E88D7F716E96839141D7735EE83CE51CBC4440EB9F6997F258C992D7E6C92503829780226BE72573A3CE399AA32C12AD24D44B76ACF5D1E868B278E3B5FD446D449B8B0CEE68C25A494622397B79A42C19DD40F87B8599672B2376E3F5F7E86973D7923139262A5CE458AF20437D3F02AB5F869E375F9496473FA34B5ABBE6E73C99B28589A46925DBDA7E5B34AC71997B1E6F6FBC658B5559B4B96AB66CC521248E6564B2FC17E2872A794E665DA2B115BDD56447E443F87A3100B5358F062A07DA86C6568258EDFFB13C66680EA792807AF4ADD35B2F81460353F4BDE2E011447CADE4D64B7A11E71BB52132CA363428658395E79C67E9989784C9362411AC2667DA5C2B734412C7E8B476DFB0F45CBB1F8D450A8DC84F8DAE473681AA26D1487BC53F57D6C57A8281F043502DD0106885A03C7C89E4E9DB66C983EC13129310B90EE50366F39DE93391E2A22293A56B9E5C963D45B169864E8E148419FA6BEBE7A1E31C4168D8FC1FEF4182D182FEB58359BC51BE15DAD964678D9322294754488CC85049EEE4BD633E2DD30295178066CDD50AF0084F4BE68C5D227DA3D77A101E87442619CE22BBDEA3985D841EC2275712470D992702B33033E19C59ACEE0BB313EEB563C68CA25BFB9EE1376B6F2DFE6BF8632F1F38165D9D85FEA0DFDB832DE43FFB8E47C4F161A385E5B99BF84A03B3AEFB766D9CD79E9618A483BE7AD29FFC6963D000E0BD96930D50961CFB7676DA7EF79FB24FB426D9C0EED1ADBCE29359F3AD049719D06C54FBECFBCB7654DFD135D37CC77581B79E6BBCC160F1CA8ED927E4531469A7DA419C4763F4C0C4A33D8A59B422FFE9F189EE55624E56860A223F83C69199EB95412506CED6E52CB23E798D3DC8CE1959332F7F19CDB966EC1152F412448F8D16965731A2D0B31C622689AD14BF5B43E4D8D042CEA3EFB5679C32DAE6C9281DA8F6AF226B25102C9FCB2B431E0D44D6481E6F4C36988FD85B26A941E5B30AA8AC9CC8BACDB6EB6A626159E3A3170000200049444154CD53CAE62594DA7AA1C98F46134DF4503A23F4BCBE957DD3FC8BE77346D76244BFB2E32CF9237BB2C678F72C3D8BBE6BD7687F4BC711FFEFF1B1EC09F5BFD69CAC71E8BA69F258F27A7C51A0739B193BB2B27B6D9E5C55BF9441B47E9EDECA6B6BCF111D2208149BFE8DE5F9F9BC575AE43BFD88C3D6782FEDA8139174AC315ABF885E2F8B27932563E6550674EDBD75E965D5C6655F0196FBA9FD3E0709AE1E0F44162FE8587BAFB55BBF4FB1F41095D7B2216FCD7A59347EF2BEC5DBBB4650A1A1AD7BF4DB2D4FC7D0573BA3F6E89573CFE72CE3BDF5F07C5C3641F3FCAE6703D2C623997B583A15D993E4E9ADB7D62F8B689FAC31DA77641CF24643D4C7D261CFEFA03256FA66D7DE8B1BADD55FBFCEDA727F2F930B64E61BF9DE0C3D4DEFD03C234B7F81E76BA50C5A0CAAE47D91FFCEDA9CF75DDB970AFD19AF928EC4D84CAE3423961337071B7D62F9D4E2CECFAF264FFDA76C1B7DFFBBE7974DE24721E7DA3B20AF38906D15BE28469CA1E590FB766FED67FD6E4ACA53C148605FBE5BCEDA9BC38CF59FD1377BDFEBBFC6EF83BC62448EB192A3E59FD5A7229325A3FC8E2493D960AFF9CEB55059B3CC9C47D6C72B6CA39F5F687BB68CCD62A111C52B8D97DCCB111DB578A17A58E1D15A7ECD66156E9EEF95400F06115E337FF7EBB58DE88277E88BFAC2A8A8F4FAF4F7E5BA5575BD12AB3390E3349DB174EE5005DAC8031B16954484CD3EB1F48C35F3DBC0FEB4CA3AA9F61CE6E254A30455A31F3D75B2E005B95E8E9E4FC5D89100D0F3D6BE47B496FE48D2DBAFB5D6DEF3D6FA68F259343D99A52C52872CFD916D3DD0B546930F6B3EC8136C8D3FF214C77B22360AE4A98C94239AA3B459CFCEA3625EB33B39D6A26BE96A45AF3499A23DEB65D3D6C3A2E1D941344F4F8668ACB6DEA8CF8BEC29133B2278B42C99117AA85D593E515B23CFB7563072706B8DF7F420B22DEFBB273BE20B3C5F1ED9AFD64F83F455A82F917DAB7BAAC5772F8FC9EAD388AE49197A7A5EDEB740F325D67A5B7E1EF1B34B6C89FC4234378DB777DF8317BB507F13C53F8290D86C61390332F0F6ED5AD289D06A2D2E32B3411749CAB4EBA8C0E8BF478E21BB1ED61C34192C7AD6DC9064301A93BD1F8DB3E6A215665ED214056614E87A6603899544F5EB904D7CB50425B221494793C3E31105784B2E4F06EDBBD527A215157A882C724F2A7B63ADA3EC87C888247B5662D7DF977CBDEF966E69BC91B6BE3DA3A3919C1564E35464A39A2F40F740E333039E9F95ED914D67E286EC93F5471EBFACDE78B4A27EC8D828F657F63963879A8F41F6D3E25B391894DF91F5AEC8A67D9F19E33DFA95F88ECA34D3E689EB8FA3282C35A5D69C5235519C214F767C9430A0C14973949123D59C339A94A2A7846B3BA219F4D7A0311AE06620DA07B480F1C6B7A69FFA6AC1AD1ACC32FD4792CAB581AE89D68E26ABB3F469D4B6235F8D141019CCD02D9447A56018E5395294F69F95038B9958F8CF8EBB88BE66E63E03233AB9868EAD19773C7AD1DE54F38535F514E1BB8F712305682516666015CD04B160A3BFB17C1A84B4820B79050AED67B565D1BF4AE1D1478B5FAB689E8D7E8DAD3597321CD299C87DEDAFF725D73EF8597A64E975166B17D559FA6BADE59602DFA10FB31668BE726D6C691F3C78C53FB20733EC13E5339BE60C48DF38CB5F693C32F7F72D034A232BEBDA7664D1D7643D169B3E06683962D46F6D3908A28A8D169657B53B636CD6B55610648B04448EBE00F0022C521459343205B606F4F418954F9B73464EAD5D5B4F6BBCB5F6D6DA7973D4E48FE6A1F1F3FA22F79042D29BAF3726D316AD812677445BCA2FF978325579A1C8FA845EAE6309CC969D4676E5D1B3C679FD641BA25F51DF88B667EF28DDBE6FB46E7D3F8B4726FE54F473063CBF88E8BE267BB42615FFE6C9ACC912C91BED71D466D1F4DAACB1511B624BE8B85931246B4FDE3DCF3F64F77706DF0CDD8C8F8DF42DE34B227F67C91CF93082B07014AFC22EA8287535C1B15EE99A29D36CBAFD58EFA9E38C13F1EC7D6F6DB5BEC8EF0566AC119A6C4A9E15C7AE7DD79E24C9B542931AEF9E365F6F1FBCF547F7A7BFBF7C665EB9D6BE7BF7A327EDFD2BC0723D3CB9BDD70951DB8D5E49F4686B3A82B4213E0CD1236F2F9035B4E8C9B19E1FF064D45EEDB66C2BA285F05980F831D91EE9B5C5D7BBBFC892F1EDFD5C66BF5D30E24323BB8CE41879328BC6938CBFEF91910DF569CBF728DE6B7652295C2C1B8DF62FD2392466C9BE95F55C80FA74CBCF5AB112F145B22F22B7E5CB505DB43E235DB06C15B551E26662A385E5493BEFB41671AEB3A125F76BF3AD1A2C9A78CB6B745DBDB5A8204A3CA27B557EDEF735904DDAF7C97FB96FED273AD61A83161B1132FDAD35B58AF30C5DB490AED08868A3FB8326B811D00245F2C8FA2FCF2EAD03176DADACA4362A60AC3E88BCE8980CB42240B647B279896854682349FF1AFE6A8D75CDDA52B520ADF8A751FAD5783F8B7FD40759FB489747FDAD462B9265869FCDE41A87D01DAD4F45F75954121E36FA2AEC65A04ADCFF4630F3FB18E4547C5FB078A12756155E118DB57F0C8E22FBBBD46346E6B7AF28D648848F05D19361AF7FDF778D272223EBB8359DB78AE6EA53312D895BF3404ADBF743F8FFE870CF5A57E449102243FFEFBA01794B64F99CB19E59D9D6B6E963D8534BDFAD3ED9B6EB00990756F3C2EBBA3EC4E1701485656B76921D39E2FE9ED777863397F46715045AF220F954D107D628D146D71241751F90FB9A8EA0F244E366ADBB2747A4CF9E3E640F50B61054AABA95ED83AE2BE25B501FE425FE6BD88FD64F9B97F6D9237B923D7270878CCBCC575E47BAA5AD035A5465ECCE3BF41C8D156801D41F9064FD8CC7D39B9376BF6F9B110BBCEF95B58D68447A26C769742A71CA92D19323334E5B2B54DEAA0F18F1655A9FC577596B11F96DCF4778B249195044FA39A22796EF41E9A1718E207A6CF455581DD924CD73805AE2B45C5BA7EE0BE4AB49167D8B46D6E95872483EBDFCF27B2F2B72E29F71F6729C3677EB4458E3E7AD2D32074D3E8DA6D40134C141F65BEB37B3888BD640DB9788DE026F2E59DDD5F67DA183ACAB9409495022DD89648EDA2C9D41D7DCD339B92EDE5E48DD46EC421B2BE5D0EC22F2797D3FF95DBBEFB523EBEBE963C607657CB8BC8FB459F710FF6AC52949034D38231F85FABF5EA6CC784D7FE4A7755FF2B5E87B727B7D51FBF1645EDA905810DDF7E6EDE9B12507922B6465D6FA79BECB5A2F846E4606EF5E666F46E287A5CF5A6EA68DF7FC92D66F6943D7D6A3A7F99DCC5E10C451159608D093F6190E6D9486D7273B8F2819F39C271A54D1843DE390AB41ADE2E832C91D9AAC4581C4EAAFAD79764E51D059BECF4C28A4BE7801D4A3353A57D98E2477FB42942C54C6A2E3B4E43D0BCF7F64EC72B4F8AAF2C8F0467C99D4F7E8E07106D0F5F6C6F6DFB34FA0355A5E5B865EB660AFC852F52F5B58A38856568F470EDA2299D05881F0ADF83AEF7E652CC23773DFDBBB99BE30B3C7A3EBD3DFDBC21B4FC4F67014AFC24A25D75E5342DF31B7DEC1AF3E45947491E2ECE424EFA4B23266D03B1344B643620B8ECCDB6B6FFDBCF635D77C8DE450D29073C8D21FDDD76A41B64FEC4B264D9F3CDE6BDB54A5A03E14AC372BB4CFB5B066A17A288C1CA08DF0D2AE4768213447E6B7469C3FE4DECF2E2A6F029037CA24B87EC496B0D1C2F2DC2C7210A7AB25FEC8F75178416876C0B0E82141152D20511ED1BD59F38E8A77B9AF285F846E25C1F08024A9D6E10972383263CDD1C3126B1CDA57F2A9F2F564C9D05CC35EB7084D5F3C1DAAAC4776FDB3078219FED67CD68C01B375A8D7CD51DA2376ADD96DFFDD5BF78C3CDA5C47F430D34FCE61A63D48BAE83ACD8EA5962C5AFFB5753B42569766AED55AEBDED3AFFA4694E73EF58BB8D9D86861791599E45E3EAAB702A0E55C3332786D91CC997EFD7584359C03229F97542041A912D4B4F5F19203C9DBD38D88B62623121C221D43DAAC7BDE1A223C2AF343F51759CBACBDA07AA5F147C75B63349910195144BE251A8BD0CDEA85353F4B4EEDB52954F6115F97B5B1A5DD7A55539B7F7F2DFB5A7E11F5FB1A9D05F25030AB5F4BFF19AF8C7BEB80F4D7D6C8A267B569DFA3FB1E2D4D773D787B6DF5A9ACFBC87A783E78964F47E92374BDFEA86E58F4ABEBE2E9AB26A7751F593F74FD3D1A1E5D741E9EBF1AF51DC4F5C5D1FCC6321B0465FFCC78996078AFBE5680384089EC7C3C67833CA9B4B0F08D9C191220BCB1D66F993C07182585513F4F462903B2F6D1D3F63E79F11219F974530B06DA9C3439E4D87E5CFF297979727BF38BBE7BB27B3268F26A738BE661DD8BF619B5456F5E1E3D8F86D56ED987DC7FC477A0858BA763BD5CB2BDE203ADFB52064D8FFBBE956257EB336B3EC81A7A903EC49A63F40A22A29B9975F292E68577264E7832213663F957395EC6FEAC5F8BE6A7C9E2D9AA27F3E2A3B47DF764B564AAE8B1E57FBD3E28DD452E29A3355F84AFB5BFA82E22F152D2450E29225DD330C32769F347F59F20346CF489E5C91387291D42FF4F3A9EEA6FD5B4DF8655125D8D562F53249F95C87A0547941C6BF7241FC45168F3D0E6833A502D718F0A01145599E4F7681C4217298AAC0034AACB1A2F14911E7A45D772BFB20F513F6B7DA2E09DD12DCD5EA5AEA33AD2CBD77FD7FC9BBC9F95D1D3B53E014591D5BF590987F42D5AE26AE9392A43B6F040FB7A7D2C9FB9DCCB26B8887D65F7A4121B2A90F6E3AD9517FF9076CF46AC358F7421E3CB109FEEC552C953C64CD9A65D2372F672647477E117F9DF280FE9DBA55CF27B04C4362A3A17F19231C343BFAFDE3C355B917D34BB8D6C279B3757F211E266E2289E585A4E2B723A9E73419378CDA8B520D4D3B3FA58E8FBCBEF110DAD4F54F85A2754595A52864A1262F1B082AAC50B4954347A56108BDA2CFED9C4A382688E913CD1BE5713694B56C416A2B92027CE163F8F0FB25F48028B247D5EF285268D510292997B943C4B19A49FD3E87BF62469697C33C92962871A0D3916F5B396DFEFBF6BB1209A8BD6D78A55680218C523649CBCD7CBD3B7C943574FC68CFE6465CBF8154B57A35864D9BC975B4839466203927F48D9503A5A1F6F6C3636F68878CF380443FD23EAFBA35811C9A0C51E544F10FB8FEC2702E2C3505F42DC6C1C4561B946928E389391240D95D94A74AA278E68BBD64F0BB415E78E065C5466246854515D376B7DAA492AC2134526102049A447CF4A2E231E594401383A2040E98E8E99A1AB155FE225CC33740DF50719592BEDD6DA5493F991B5956D233E73B48F35C64A0E515E99622DA28DDECF24C7595B5C935EB65F1519B9AD62C11B5395011DE31D94650EB267FBEEA8EFEC7D9DA16B4B5FE4400FE18316B0ADB1C0246C6CB4B03C2F1B71F6A4CBC368B1364257F6C9CCABEA3C9171237254D6739FCE7C1FB002E93EE5D2920CAF6FB6AD329751BB3DF4BECEC25A4578260998BD96337DB28591627C844F958E37EEBAE872156BD8C09A58DB5E66E51BFB5A9391827E2B321E12951C6BDFEBB7F062714968D8E86F2C6D2CEF9247EFE6EF13963C56DF113E333052B4476D6BEFC1161C992543A4075AB27072B24E30A8BCE27B0878EB3573AFB7A037B3507DE5FC90D8F2FA57643B64AC9925C33EE790E5D5BF3E9EA5A5C5A4D9739D414F9BE3BEF6241BC3B662BF8790631F390DAAA35BD90782F0707485A50669949A91F64E7CADC0E3D1F1F8660365A6AFF75A51946CA241269AC72C67A8ED21F25DBB67D1B5F8CEDC2314D97D8FE691E5594D7C225BB4E87B366AC9E3F1D6C6A1F2670F8A2C1D1C05AAC323B4BDF51E4D7A115D40785493DD6C8182E86AA47FFB382C9965E333C66574C4D387AC3F988D197CBCB59071B27FE293F5376B6064EF46E8A27DB373CFE42E5A3FCDDF8EFA13748DAB7E12A15D1DB32F3B248E1F4757582E0511FADA66545054920B94AF44FF6E7AD5295713E3359C82B74E72EDA3F14840AEC815252F164F6F6C452E342878C988B7A6D1EF1E4603043206592FEB9ED76EED9FB51E191BB1FA7AAFF9A06B919127A285E8A7C5DF6B9FE113115EBDBF967BA8B557797AF222FB10ED3B8AC85EAB7EBC97B32257450E641CB257B28F16C7B38977646788AF456D22F267A8EF93D723BF5993EB8BC6D4BE7F365FA8CC1BD577A4BDEAF7B3BA838CCFFACA0CB27BE98DB5E61E7D7A728FC635E2FA62A385E585A78D92BF27BDC56B857DC0B23ECFCFFDF7D2354393278C9904277A07DE4BB090F1B29F45DB6B43EE213FC0B768CE4C5AE5B8D1044916FD99C4350ACAD5C0DFCB2593304BCE4CC219051F8B8696CC6412294FE6FE7A2479CEF497F3B16C4D9B53F5372EDADA237AB7F0B00ED7101D1B49882C3DB164F0E48CAEAB7E45DB4B846F45C7AAFE62892596ED68B24B64F4D41B1FF5ABF833841F725FFA80E88042AE6DC45793D992C3D2472D8678D0F2138B4F64ABD16F8B333A3DEB75794DAFB543F58C9F42F6D29245C2FADB06957CAB1FDB8FF164477C684F37B24B2B165B7EC4F20F9A4C488C2108898D169673141749582D9E8B73C83A322F0045B01C2DE2E4BCF58A02159A78C879C9009975C6D944A3929878FDA20267698B0E29A2A457EB63250B517285EAD7D20FB1A34C318302B5B12C469353EF7B64EFA83E46C9B0978C474931B2AEB2CD4AF222DB45E6D78FCDFA6C6F2FA2244CD347D49EADB6D1BD97C9A5354E9BB755648E26FB599D4692DE48262DA1CEFA662DB644F3C8CCD392B932D6EA236D391A3FABB093B0FC80E48F5C7B73C9D0CE1CC4686B83C4533456CCC82B50FD1AF1973D2F54262F7790ED91BF5F4B3F89EB878DFE55D83CB241C54B00A2FE99D36404D2D1F63C50E71325CF1ACDE5BABA76A83C0BBC75CBACBF46CF2A58AC53EEA59F95C8C971E87E6B327981B59AD0A06B14E9507472EBC13A0D957278A7CD5E02AE7D5FAEB57D95BA6ED1937CB3A7E133F57F3469D1F6CDF21F912D7BF7517A92BF474BA3E1D98AA5CB96FFF4FA78887CBCA53B528FB2896BBFC6889F8CE859FDA37DD3AE337A8BD8FB08A47E47B1CFA3332A8725DB4C1ED181B7E70FA3189939C888E26AD5EF6AB4BDB1DA359A5764E2ADB5C6593B8DFCBE15472DB9A2F6A86F36AF90F7F9B49288709485A567D095A78C59CC0A1688D39B39172FF16E6DFDB5AB3A483468687D91E4B0824A4164DDCF16361558BAE6C9882631169F353133699C21F34CDB19D149ADB899E157107B194D5ED0F6AADD678A23B428CA1432A83CFBB2210415593263AA872D51DF7DAEE15A0574861FD2272B67E65E4577BDBD1B7D825CE1898ECDCE75467EB31646EC9B05266161B3AFC22E3839D14FB3BC57BF66F29E8DEA69AE9CDBE85CE5BAF6FC3372AC0DEF246F06BDD17E33786B7BB1365F94E78CA469EDF92D3CB68E7DECF1C85E4B5AB330D3671CC33E1F33F661AB339095719F710B954DCB65AAAF436FA1C09E899B1E2FB62E5F6BC7212371186CB4B03C370B4AB5F7F955E72CC75805E9327624F0A0E3333C34A3ADF0981950AD625EFBB7262C1E55BEC86BA95A3F4B9710AC796821BF6F15FD7A59362CFB8FF05A03DE1C66D3F7DA4679AC8D63D0C7D6E6FBF1D9A8D8B8D56FD63CD0358BEC5DBBAEC818156A23F46640AEC36CDA33FB55FBAF4137BB97B3E2C5485C3DD4FECE1A3BDB96889B818D16963A2A4EC54ACCD6E0ED15585E419B299A119990398F04A04CF2A52514111D4B56AFB095D75EF0CEAE37B20799A234E21FF1F5E4439C3FCA1FA1EFC9872687D69C91E08EEC2DB247199991F9CC0EC2155D46695AF49104B8BAB71999BCEF119D4C5FEF5AD2ABD09D315E93E710C92EEA9BB4B66ABCCBF441A0EDA937AF8CDF9911B3D1F1199D8AF866E440F955E2D8BE505DF7AA9CD1FE67728D8A1FACEA48A69D208EF237963D32CA8D2627CB3DED35CCCA2B38E8EB9C1EFDE577074B9FFE7708331D1122274A0B4DFAFB77F6ADDF1D4681095903B96695577E33F396B26BEBA1CD5DA321DBB3BAE8D1AFE8A3B65711FF05D16F68AC71567B662DA2397932223687D0AD229BA0237E47B3216B8D3CBD5ED6A6FF44E781C8A48D8BE48CFA5A3681C8D55F7B34D084DAE3B9E6DB0D087D6F5F4712561496AFD2F62F8A17337F5A11E94F743FE3072DDE681EA3ED61C6877AFB6FAD29E2432CB9477FC787EEBFCCABFAB1969DCA4F19C367CC318A19965FD474C2F35B9AEFD6E820B916412CD8E813CB0B4B5A0C7E51FA28282C7DE4BFE59EC9CD4934977F4BBFDEA9F4F7347AD66F182D5E92AEE6A0BCDFBC551310CB5168F2F7BC66253CD63A7AB255F9B4A607FB2C1FC4D122413F8B7EDD2D1DB1F878EBEC8DD1BE8F40B3DBEA58ED1E3A47E95FA43CD28F58B61ED99F9718CC586B39176DCF3D7A4861E15D7B32493F8C405B4FCBEF21FE58CAA4ADB36547595DF27441EA156A8F520ECD07F7B4BCB5E8E7992912476C5FF292D723B4ADFDACD0C9201BFB2C9F87AC8D57E0200518E217355DD064F6E4D1BE47B1D1923F1A1BF5977621D7408B9D512CF52063484FCFFBDEC3F29399FC281B37B44F8DCE1A875BC4F5C5669F58A2C50E022DD82F8EC0E3D33B9AAC3C565139724A8914AA9ADC164FCD19CA762F41EABF236B1521DA5B2B0044BCBDF95BB4B5764B7FBC3947B259CE1CD573EB04564BDCB439A2BAA2612421EC796ADF3DF9A40CD6C92BAAC36842E12520D2BEAD7DD1FAF734E577449668CF2CDE1ABD9E7FE42F117F949143DBB3C80F47EB88FA4C4DCE6A32E515C4885E7836E1E9B4264756AFD0FEA36BB4D0887845EBD58FB7E88DEA6544C32AF0D0DC00911105EABFBD58B9205BA47873903691A11DF97CAB9F15BBADFEF29EB6AF9AEC9A1CBD8CD2AF495F8AC60A09CB6FC86BCF6F5A34BD184C1011365B58AE0D2F505B09A3D51FE113F5D19CC20C43D6E4CD261B193ECBF7A8B8E9BF7B0102490EBDA06525FC51608D829635AE8717D0A2A05E01CAABC25F4B9C2219ACA01CD95A444FBB5FB5CF6C5FA47F26A1D4EE456BE88DF79296194540C69F79FA9849F422FBF7E4A8425BC3EC293E7ADF2B4AD0F596D756629A594B6FAF50D93CB92C5A4891621517191951DBC8CCDFF3AD9542DCDA5B2FDE5AFB3F437F913195C3A72857D0FA8EEE5FD4C7CA2B46630B62DB48BCCDE64508AC7CC1BB4F1012D7AAB0AC3CF1F13083064AD70A3C56A1E3D11C71FE91D34083633681A9DCCB8E9925537F3F43A39A2023B4B37C90F195C422C25A36751380EC87B5776B16DA591A6BE9BD777F962EAFA9BF9962324B13A1BB86BD2F58E24635C9B7FACC2A7A4750299E2C20F135E307B2FC6760748FF721E7DAB63F6B0E878897A8FEB1C0242C6CF437964F8390158CE45337EDF504F9CFC38891F4F4235EE8091432E711586BEB05FF7E8E8782B79FFB966B8D27BFD711159D3AB48EED634C06C75C9057D7E6D03625F5F698F6609FB2467EF0907EF95032A0407293B5F88EF63FC4BE6E751F4781E4AA682EBB2F1C933F24F68B8D1696572D072DDC5CAA8A61A2F4B27DAC42378BECB899093AEAE4AA05A7475B7E7AC5A4B69F99E2DED32D6D4F336B62D1880A2D4FAE1119357A162D8FBE074F064D5FAC7DB6EC347B7093395C42742EE2A9CD63C4FE47A0C921695BF2457685AEA9A485CA2BF95AEB9AA18FF01EF1B79ACC5AFF911836325EA3551D8BE856C42FF26B289D48CE1154F401F1AF191F6CDD43D63D42C5A666E85F86EE5ABE13F17DFDB567DBDAD888AED716F140648E627004CFC609C2C2A65F853D3F5FEF54A4427B312AF45500D95FB6F7B05E85D568CAD763FB4F8D87256766FE3312486F8E23FB61F195EB63DDF3E85AB4259DE89EF5DDA223796AFB6BF5D7FA593AE2E9B275DF6AD7D6B3B7814A028426E6A3B61CF5B55E1FF7F64493D3B37D294F3F57ADDDD25F4DE751DF80FA388B4664E31E3CFDCFC2B2FD193125F2B75AFFCCB5A66B9ACD69FAE8C9AB5D677D116A2FDAF79E366AD79ABCFDA7A733166F4D16CBBE25ADC856A58C96FFD7E668B559BE26A2E1E50A56FF88BEE7DFE45A4A3E72ED105F33C35E252DCBF7473118D14D2437CCC49E88162227E2C31779D03920F7899B8B8D169627AD3D7E6A99494691022EBA1F258F28ED6C5F2D60A20E41B6650D3EE3BC3DB9103E925F94F06A81ABCAD3BA67DD47E9A1492592E8F49FCB3DF969C99191D9923192B96FCFD85B66DF46F6B9FF6E252F95A2A71AACB3A8DABCD6BE56E0CFE8DC6CBA5ADF4C91B2B4677E27A4E9D388BF8DC68DAE9D973C7B3CAA768FC8E4B5A37BE0D96DEF23CFCFC7FC392A17B2166BE809B277D5586101F1C9924F261E20F62CAFBDC2D09221DA8F35FDD61AFEB8624B11ADD9F92571F3B0D157616DE5D51C79A6288A4E76E5356A44B39FAC4ABE990421C3C372221A7FADC09172456BDCF3D81766EFCD0CF44E5C5B8BCC1A8EE8C68C40349B6E0F6B6E889E2189ADB7FE9A6EAF81D1846FED3188CFF5F6695FF0FC7536899C59404A549FAE6B34328724D9F5C9C8538137872C6614920BA2C25CFA86EA7A6472912CB205F332276F6ED9A21DE15B45F621C2BEA01D3664F2AC08687E85D099498F207A6CB6B0D4208D413A3DADBF570C69C6E51999C657BBEF3D69AA40CA1EC958810C445A908964CAC8B906E4DAA3C9AE0CAAD9F5B5C655E73F522C78F347E87A87066B415B7B6B1F32FBAAF5CFE8B54553BB3F5258593C115F84C05AD391B5D6E4F4F8CC28802DDD8C64D47C1B72989349FA9058E2F91D39D693C7D30F6BCCAC4320CB4FCEF02DD6FA2CDFA3622F92256367DABE68FD64BC8CF8597B8EC69F7DC18B69917E7B633444FA67C9327A48A2ED85C52FEB6BD176C957F6B5D67B444F3C7A5BD13FE2B8B1D15761AF02094495B19EF3E8AFB34F953C67514958ACEFCB09993C29D3EE2FED334EADA53CD571D6E100FAC436A22FBFCB754092D27E2DB5FB9E9CD97DCFCE333A5CA9D01A9D8325DF886C166F792F4A40B5B151BBE53FB444DF92D1D23B4903915D936F96ED227C67EB5CB487969D5A768EF80E2B49CDACA5A7275227ACA4DB93D16B47C77A87A033DEC6417C45364E5AB12C8B0CDF9E77867E1413467C6014B7D1B63580E8B365875ACE82E657689C8A7C95255BC6F75B3E44CAE9D18AF88F02C9739071D15E11448FA3292C1120810C3132241159CB0164795801D2BB3F82AC9392CE1C5DC76C3B72EA29C757128F685C042DB88ED041126E2DB86AB682EA7D543C79ED99C22F92C5BAB76672955D2F4D268F86B7DE88DFD20E92A23191EC997ED618295F4417F93E136BF2C8E8C92C7E5E92EB1571B30EF4ACB19998E6B56B092FB28751FB2C9F34AA4FE89C9036AD40A8141B0866D851E4BF919817D11AD9134486FE7AC6ABD2597DEEF9CED867CBF60842C351BC0A8B188654F235955E930779E5A81F2FFFC9768BFE2161FD4E405E7BA7E46B614DDAB3F88E06DD91003533B9953A2BE9590156EAB985994F39AF0332C938BAC687C23E64F2FCE83160A6ECD23E91838C635ABFB565ACF86C608E4900002000494441542254A6596F0E651015D0FB90C98A1D565C99C1EF90BA3C5AC4F6A8BEED8622F336CA31F807E230D87461E91917F29B11ABD8ECC747B432408ACBD1D78F66071DD4A1F77CBD753D044683E10CB9AB6B602572965ECED0AD856F84684E95E252E321FF49FE1999B68C91403C1AC4BDA75233F53F7B6F9FD88A1C3380BEA1615DCFE02F63A86C93FD119A99F6B5E1E508B3F206C4E769326590DD7B741FF6BD2FD7C97E0F01AE1FB12F6CB6B0CC9C5C55931AE9D0D1821581162C2A49B115ACBDC263E6EB95D5E26C66C1EED1AD24239575F3F6536BF7F66AE6BA8CE8964607E5B34FAC517056EC7C2B81796652EBB56945BF7538A77D5A6DB3601D48C83E5999466445D66416F66D93D9832ED9A7527866625FC45FB6A1FE3B03C48FAE59A85661C52CAF7DB9D6C6AF215FFF3942C3BB6FCD7926ACBD8FFC5975AD3D7EB24DEB4F10596CB4B0BCAAD919A5D79EFEA4B83B061C0504F449639478C8EB683E9133EABFA3AF3A69B2F5EFD7A349C568F291D9072B2878ED1E9D51279F4D88963ED66B6B885E47EB85C89019E7CD2BBA97411420A37DF26858B266F64CA3353BE14274D86AD3C6549295AA4E786BA2CD65CDE44E03BACFD638F4B3A715E988E53FAC9F4B647C2D8AC8F77AFD337D113916DFD85F47EB1CF191FDADD7C9233BCBC42B8DFED296A151F5AF9AEE559F6A7B6B20E5CBC48ACCBC46D70BD9DBCCFE5B88E251445BDE8FD617897F166F6B2FF7E18B89E3C6460BCBAB587E84AD1545A3BF2B427ED36825493D0DE437665AA08A922CB4C0E8DB471D8035B75E9ECCEFF63CA7E4F18A12298DB7A70796B3F6C6F66B6AF1AB004D36B471882CD9A0A52569923E421709E868C2E9F58B923299247ABC355DB0F86989E8C8419694B9BFD664D47404E18926909544D3B3114BA7B5397B3C119D907451BFE5B54B9E199DF4E864785BBE427E8E149C9E7C599D8EE6831EC05AFAE3F9C94C5F0B526F3C9A197BF1F217EDDAF203D90221B21DA943329FD1DA2D1A151D8AF46B8D57B9E5772D87937B2BFDF392975A743DBF81E48F88DD23F433B074BD9A5F13370F1BFDABB027ADB5F32B46ED293552E44883B59CBB97644A4752E1ADF5D5122139CE4A1A3C99464F972CFEFD9E203CBC7ED6BDA55DF24513BBBE6FBF1EDA7739D61A1FF1F574D60B40080F4DCE682DBC6023F55CEA92B6FE1E5FADE0D2E4D674153D409032C939227BA6E988D7B7A26FB2CDD23B5998F6C988D547F2EEF95A7B60ED87D647F37F9E9FF16CB7DAB7E72DBF5BE8D729B26D8FA6665F9E3F95B69E49BE3C9F9EA5A58DF7F6D41BBFF4B36CA3E2AB7ADAF2BE179B23BE9EAF45E26ECF73E4D040D2CC8CF5E6E5E9A0F41B1E9F4A2E90CDB996766F0DA48FB36294E6EBFBFB912C51FE17F543750DCDD12C7F8BC81CF593FAEBD9B094A1A787F8096F1F08A2B5CD1696EB2B2DE2E8BD02B212F03D1932C96E469E8ACC086FC9234AF623FED944024904AA3CFB7BD9A4AAB26ED971163F2BE8A16B84064D24B07B898347DBEA9739EC417922BC2D7E68DF5E1EAD404468A309ADE487F4CFEC81C72FEA2365B392C60C3CBD98E19F353AB3E8CEA625E95A8711191AFDA776AF8A19BE2EA285DAF4E8FE46455415151F63B56563318268DD33B1CDF3DF6BE85F15D53851F15133F34BC47747632CFA2C2E090D1B2D2CCFDD24367A8A32CB694609B62613726A58912F332EEA9779A2838E5B3301D3500D90B3E59AC17F5F6BD57FCFE813F2F407E55F198F8CD9B7FE65B12F796624CC874A78B2E3FBEB59094ED53F67B1AF35CED2DCA72F3A940CB3B1B6EF59431FF68191E2780B7A780CBCACA2FCD86C88B85ED8FC6F2CA32207BDF6DAFB573346A0BD8EE6B57B98E518A2575266D144EE8D622DDA085DF98AA1352EFB2A55740821AF67ADFDD602374F3E711CD35A657D6BC66FB71617A9BDADCEF0CB5B413F9F2DCAAFF9CB2A9DD1F83CA27F9E3E5664B2D665D67A69C81C20CECA85B2F21CAA10CAC6FEB56440F7DFCAE7F65994134484CD17960B2AC97CE4B83306EDC98514AB569110F19434BC44294317794D6A8DC2331A17ADA53737AD9F36CE4A32351DCB04DA43267A92F7CC8392886ED58E2C5DCDCE21B2B34C3BC20369CFD0CE600D1D9B91D4A27E2CE3F3D62826BCC201E11BC51FCFEF6465B5FA8EEEFD8C3DEEE729FF6963A2F8A7F910C4D7447256C6699FE8BA23B149A38DC8E8ADAF763DE29B90FD98A18B19B9AC18AD8DCDC6ED486F117F92D18FAC8ECEF08588AC91FE1E22B7218E0F1B7D15F602E7E7978B9F8A522F34D0D7A5349EF2095FE6895FE4002DBA9A0CFD38643E9A23A93C4992BF79B0E8CE4850359E0BFA364DAE0AEF8C83B51283EC5EB466BFB262ED93E4EDBDD26AC91E8DD164F2E66CDDB7786B7C23B9AD766FCD7B3E597E9E8D7BF6172544D5D7DFB3F791579DB5FDD0BE5BB6DDB769F72A494B2FFBAC575B11FDD064406D3FD201CD662D1DCAF882281E2173ABEA644FAF72BFEA03E43DB98E166DAD5FDF1ED94846262B6FF0686B74223EF27A867F913952E45FE5B5174F167A19793CFA683C41E84B9BF0FAA37A20DBA51E2131C5D22B8BEE88EE59F490784E101A36FAC4F2AAE62389A2D6BFB5385190AF119C9F3FFD67D1B08CAA7F125829E27AC78238E5AC715B4ED492634134AF4C00B1FA8C1C22548A892839D1E869DF91B5449F0E5BEBBCB45B6BA48DD1F651D32FEB7306AC44D60B9C234568BF276821A3D9BB05A92791CE65D6322383C5D7F221FD7D2B81916BEEE9B71C6F251A919C4882ACE9A7B567B24DA357F1CB118D8CAFB6D6D5DA374B2F34BB410B026F9DB5F66AF1A2D1476DA2F779960FD6E85985782417DA3FA263EDAB3617C953EE61BFF6D1BCAC02CF934D93C38B3F1EA44D5A7E23CAC7349922587BE8C962D90FCA73E9278B323457D462BEC75B8BA5112FCBCF6BB26ADF67C435E2E661A385A55F605986A8B55B6DFD386DAC268B85286058F259B4223EDAB5E60834E7A3251E234E1D999347D70A96D5E213596BAFDD932733AE972F4A96B34EDA4B1E65BF9E9706CDB6E4186D7E91DCC8DCA5AC59FB407541FB2EE71BF54583BF2503B2DF5A7222F5CFF27B1EACE2DEA3DDF7C9265B1A8DE8BE95E459C598E6FBAAB278F3470A46EDBED41BC9238A3D557DB3E447E82CEB8D24E1B2CD9B8F37BF280E203C351AD101836697087F8F5E36DE78FDBC75D17C33E28B67415BF719070F12DA1E7A3AE721D2B5C82F5A314193C3F24B881FB5743AF2C3DE614624332293E723094262B3AFC26A4945D43FD3273272CF592272650DD72AFE2A41495E5B81477346D524525BDB855E94485BEDD61EC8762FA8C9F95413C58CDC088D51A0899E5C2B4DD7B431ADE985087A08E1256A555B45695575B76A6B683B927C693A9F592FCBE62CDED936CF2F223ED593C51B23C75BB27A3C46E6BFB46B7A6D1DCE44A8C887EA82F5940BA121ED18B53FC42721BE1A891799243DBAEF3D01F2E4B2F411D5BD2A2C3D8CFA7976539141FBF4FA4A99ACF812C5E891F83B32EF6CCEE0ED53640B16BF8AFCD6BA7879D5889D12C4460BCB0B8DB514DB53FA192767338216CAC36B8B023C421B4DF690BED562374A28479DE5CCA03D2207DABF5FC7EC9ACE9009096A169D1981EDA662B470CD8C9534B24F64101EB3C7AFB93E555D5E3B595D0B5599D62C88AA32AC4D038D255BDAE78AADACF15431E26701796B634DEC6B2F2BFA94CDF590830D1499C331AD702688D636FC2AAC05EBD515AB2D4B1781667499571AB34565CF636B98F95A2D3266740DAA0E17E58BCCFFE444FF5EE5B9F4CD3C19CEAC4365CD51FA9E3DCF44E595E3AD62CDFDB82E38E6F91EB3EC11B2735BEC765FB1BD02B418D762A59C9F36D759FA80D0B1D6BAEA73ACD823EF6DE140C382B62633752AA3DFD61375E470E4BAC43F62FB38AAC2D2320CCBF0B5D74034273E6A70920F5AFCAE91EC4ADE9E238A9CB73597359D6C248F94CB9243DB7F6B4D223D40E73B3BD8686D330A5C745C854626086BBAAA255B56FF8C4C1A8D59B69FD5A72C7D8DD75A3C64FBACF541F63592A5221FE28BABFCAD7ED15C47D6D58A63551A95719A1C56BCB5AE233E197F8CDC47F823FA99A527BFF76D6B144F23F121CA4DB4FB6BE52FD6BD4C7C42F62D63A7514CCAEA8476CFCB51AA188DE9FDB8D9FB4D5C4F6CB4B0BCF0B89A41645F01C906E06C40F3FA4A192C2784C8A5BD2212C91939450B5E3FEB559785FEF27A84975CA1F26BB4B5766F9EDA35F20A479676B42FE87EF77AAEE9B035DEEA6BF1477550CECF0BC0D63D4B0614DA3A5B7C47939D68FDBCB9F69FDABDD93279F4B3494E9420A17B2CE97AFE3A4AA43C9D44EC2D2BEB22AFB7B791ED64DE66897C24EA87235874E45C67E858EFBF10B950BF26FB64F63C7A8283CC2DD21DB98FE85A4A3F1FC1932BD26D8D96A77F191932FD4711C5AA685CFF89BEBAEBD141FA5680C668ED1EBA4791DECE88DFC4CDC3F4C2F2E4E4E4C93FED1E0A19CCA3276CD6EB15DE6F8EA2DF005A89572F972587C527FB9A821584966B2D31D2BE7B741127A1C98E3EF95C7878C91EDAEED1AFFC764B26421A4F6DFF7A7E4840EB0B6EC95B93439B83968444C1464B7E641FF93DD2C56A0264DD93E8D7DBD36FEFDAB34D6BCFBD3DD0FC88F44B5E028F00D1F75E0FA42C88CD788984B4216B5E72AC75E8257D9746A3BFAFF94A6B4FACF94BDA6BBFF26DC5032BEE2C6D5601DAD38A0EC0BCD8A6D1AE26839E2D47FAD2EF9FA713C8DEA13122E2E5D15CFA467AE3E9A337674B162B47F06C15910B8DA3914EA2907EC893DD8B8759F93D7924A4AFD180E46CD6182D579432693E14CDA7AC3596B497EB685FA5AFED3FB5B5CAE401C4CDC4D4C2F2E4E4A49D9F9F3FF9D71792CBBD4C7169F3C10B2879DF325CCDA1CBEF51D2AFF1F4120C09CF6158408A9BA8B8B0C67B6B35D2371A13DDABF244925B6B4CA46FD67DA448430B2D79AD150256116CC96DC918ADCD88DC525E34C07B6D911CDE3A6569A23AD1030DC63219ADD840BFEF5612233F115BCADAB7EC63ED43B4FF51F1DBD3CFEAA4944FF6411378945E6413D61E55111557A85D6BBE45DBD76A6C46E344146BA3F5B51015F016EDC80F56FC4AF53E0234A7B07C84D69691CB8A2B5A8E228BAEBEBFFC1E158A1EBCFD957DB4715A5F449F3C1F6FB565D75C9B43E4D3963E33F48DB899D8CB5F855D8ACAD6DA93E2F21CF170D3E5B8FADD336ACDF03D875031448B577F5A94A113F1E869CAA4639633F112DD91F1DA3DD96EEDAB95145874D0134D8F67A43F1299F51F09A2D129AED49328718FD6091983ECB9A507E8DE7A326A749031519B9409D1A98A5FD16C4CB37584B6B79E195B8C64ADB423F63F32578F76F5E947C427E3F351797B99507DD278CF0CD3C8DC32C9F6C89AF7F7FBB5CACE57CE499B63C5BF44F4254D4D07A52F47E23D626BDE3DCB0F4978B6648D437236AF2D1B173454E23332A7884675CE112D648D355D23080F530BCB43148B97F95F7CCE288E3C3AA3F42D873052E858F433CE0971BCA3278399F6E85EA68FD677946F95860CEAB34F07A33D8D0A85281142936944BEB5B00F1E5B84B587DA93BE0ADDD13EFB8097DC576849BA95C23FA23D42C7A35D2D66B4EFFB009AFC8F169556DFB573877D431EB8EC6B6F235B898AEFB552C911BB18E589B66F1D56D14C100B56FBE33D339E4A9E9C3CFDD7237A75AFC2760B06B22F47131543D67DF415DA35B1857DAA221B60ACD7AC2AA7EA5A801F493AB389DBB106D19938E41A1C9277D56691432E0B6B15C2D7FD50642DDE9943DF356458336E540F08E42B9F23F4B778F053CD333C1C73FCF7D0BF59E2CDF1BACE9FB85E58A5B01C2F2ACFC3E2262A247BA73D92A02090BC3C9E23AFB68E16CF923EE2D891C2A62A57760E9AF3B5785B7D2A7C3D39AC7B11A2B5AFACCD5A41674DBA96BD786B9B0DBC881FA8EA0822D308AAF3D90AE4FA208782913ECCF4836BD0EB69ADB147D9FD1F8D459E0CDAF7597CAAEB67C5812A66ED21B246A3F28EEA04DA7F6DFF13E53F0890FE5E8E90C93746508D6B553EC4F547FF4754E5BF7D6095BF0ABBC62BB1B31CAEE530D0F1599E9A53428BD00A5F2B919B11A0A3FBDAFC323C24ADCADEA0EBA9CDCD0A2E1E4D24B9CAE89CC727B3873374CADB1BABDDD2773916D9776F9CB737A8DEC9B1DE5E7BBAEDE98D94BF028F4E35D14113A7488F2A3A99E165CDAFB2E751BF4837515E91BF88F4C76BF77C0B8AC80EBD715E5B5617BD75B0F617B5058B1F42135977E4BE17632A3CACF15EDC8968593E702666C5AD91BE5EFFACDD4731CAE399F553591DD2E858F27AF72D1AD57843EC17FD1F5195FFF68155FE2AAC44FFD7603385E7211C1C9214207D2BBC91B188A38902A8F7BD2213D22F72869E63469C3612343C99D1E4024D0890C4279B544939ADFB950087EC8FD58EAE6B05B3138D5976B8F6FD4C10F71207D9E6D1F5FC87F6AF226BC4CBEB6BF547FC4664A3880EF7DF35BF92F51B5E1FD46FCE04BA06553ADE7A7B6B18F9C3915816C99AF1B3967DAC09D4A754E22F1223D038928D2B9E6C88DDA2BA3CE3010E3A57F4BEEC87C657C4177974B3BE95202CACFAFF58F68F5D737F0DB61F77F12FFBDBAECAAB869AF3F292859ED7E88FE223C710FD08BEE214A2B9797FD865F98ECC7D2408AC81193F3ECF0607ABDDA3D3AF6DFF99F98D4D948421C97744377B7F8DFDEE7D44CF43F2D2FEA884264FFF4744BC35887EFFEDC9A5F998196BA3D9F7BE0B9343241E884E46B6E3F9EEA8C0A9C8671527087A5F101534197FE515543D6FEDBB757FED3FF881AC63666F97FEA38587B727D6DF90D0E4D26C79B6BD797B14FD511DCBD778FB62D953947B49B9B4BE965D2C3EC0CB7D66F9602FCF1AE511ADF128ED59EB40DC4C4C2D2CA3C7AE99C7B05E30D38A19F94FEBD7D390F4BC360B961C9A4C28CDD66CA78ECCA73A170B163D4D8EEA1F15A8F4CDC04A8264201A493A47649781D6DAE3A888B1FA226687F49F1DC034DEF23AD233F43A2AD2336DD6FD4807963ED63E2F6DD1FD1988E6A4F1427C4D8F2589B3D6C7E31BD1F76C5A4B3023203E224307D16124C66574ADA72B93C3BE5DF24293EC68FF101B18ED8B8E9334B240FCCE825ECF2D1A9EED68BC671E0A6974BC18938985DEBE64E28ED717F5D39EBCD5B68CBE5936ADF5D3FA467611F952EB1ADD4BED7EB4C604A1612FFF8FE5A181189D17047A78491F2243EF48B504C6BA8FD044FBAC7D12A5ADB7361F242020EBD0F7E94F247B5A964C91ECB24DE3E3AD7176DD338EDC72FE525E4DB7BCFB1A0F394EEBA7E9B4A46FEDE7486044AE3DA06B1EC984B66783BEF7E405B10FAF5FC61746D7197FA4B5456BE7D95B647B116FED7E36318EECD01B1FB52132F4D79A7FB2FA2EA814E4883C522EADAFF44DA8FFF3F4DFD215C93B9A7776EF2C7A19BB88F204D947E39FF167E8FD8CEFF262BE157B3D5F87EC25DA6ED1F6EE6772B2AABFF5E489FA8CC450CF7F7AF90D4168388AC252330A2F891D098A11DF8C2C19DA51FFCCBC10DE9524A25A5457C7A0E3B2C96D96BE37AE9244B596D7D32841F410ED371A94BD84D5A39B497688ABF0FCDADA7A7E6864FD64665C9656C58610BA6B2053DCEE431EEBA95E5506C4CFEFCB3666E8C208ED35F98FA052484785D92CAC6DAF55D9D183923591C9B95860121A56FB7F2C67A00F44C8FBEAB2CF3EDF1597BC46795A05ACF6BD4ADF0AF4FD9A6BF3D1D6791FB064A8D289D6B8224F8F91A4C7D3A5CA9C470292965067E969A79D527766ECAFD73FA235A2C7FB7E0B009501590FCB8667CD29EB2346FDCA4852173D95478AA319886CDE92734D3D94F6E9FDABD0D4EE557C9F36E610B66DAD9747FB90B134D367EDB86FC5E6D93C519D5D7B5F64BC9F19FB235ED9B1041161A34F2CF5FFC7727670C83CB9D39ED48C3A23F924472B783CC72265F2C6CF7E9A8B3ABC684DB53E724FB435EAFBC9F97B32A089B61CEFC9EAE983A633DE53EF8A4E65D7DE5A5F39CE4B3822DADA9A4545A4F51D29DAB389B627DB721DF1B0F62B5A5F89C8D745FAD2F3D0F4D193DBF327DA586B4ED6D3786D3FA52D78FC3CDDF664B080ECEBD267F6618CE58B511D957DD1F94773467C93472BE2A9E9A6267F566F3C3911D9235F1CB545BCAD7B91AFD1E205B287DE3A45B6E6E5101E3CBA96DE7BF4ADB588D637DA47240F8A6C52A391B1738D8EC5AB6F477DA28528378CF2966C6C25888D169627ADB57338885D1A09167D561FCF517841BD022FA1CE38F6FE334AD03CA75FE12F61157FB28F841570D0758EFA550296463BD219EB9E17C4112CB22FE3AAFA8DF4C9CC11695F2B00A13245099536B652E4677523DB2FB2699456565F11A0C992BC37CA0FB9E71DEE5474D34AC22DBB1ED57F2401B4FA650BB0B593C5C846B27AB340FAC70C2DB48F57B869C8F878C47754D626636BC8384F9F227991F58CE4EAE5583E33324540721F6FBED1C1C94CCCCA5FBC3123318DB8B9D8F4ABB0ADE149B47430DA35C20BE15D2908B2E879F77359BE6B74B3457535888FC273B86B3A2D8F2FBA4F234F313C593479FA3D8F6440E49A257B6BB85D228892338B7F663E19DBA8ACFBACA75BD6FD2D05F36C51D77F2298E133ADFBDE3542574BB8AA7B23E545F4ADC243FB6EF5C9D2B480145FD1FC2C1F888C8B8AF005CB1EF4FFB2EBEEAD8727B797A320FB568D0316B4BC02CD89B2887200848F5C2F249E4BFBD5F6C4D21D04565C47DA2D5D9FBDCF595A33791137031B7D62A92728DA89906578FD38F9BD772A3DCDFE24CCA3E7052DC409541DB317A0AD844ECECF02E2C4355A1A1F640DE5D8FEBAA79709F4D1E97C4F4FE3E93DD1B4F6B5A22B1EB24E1CD1EF2C3DCF3EAAB4BC368D17425B9357CA99B1C74C81ABAD7B65BD25CD4C32B540DB2F34D9B54ED9AD364BB7BC6BCBDEA54C5216CF878DD896A61F922E72F023DBAB3E2292D9B2478B8627BBB77EA3B26AFC2DDBB00E1C22BFACC96AD1421372CD6E105F64CDC98AC5884C488E1221EAEBE50BF2BBB70EDA3D2F47D0648A7C2EE2CF24FF652C1ACB10BDE96968FD46FDBEFC1EED11229FD666ED8DE56B233B25080D9B2D2C35200EA0121010FA1E5DCBF83CFE0B4DB46F742F92CDE2EB396D24998EAEADC455F6459D68544868FDBD4F749C259BA6235E822CE9CC489411F9AC8300AB68B06845BA92A16BAD93475BEB87DA73A6CDBA87DAB8EC6FED7D561E8F47C41FE185D8229AC823FA69B567BFB7E6EB8095BC59743345575547ACFD40EDC2A32B7D91B73651CC9CA58F9ECECB3E08DD1199A3043BB38748B19F05BA86DE1E22F7AA7258F722BD45E25C261F88EEA3BE0305BA2F59F9235E483E24AFD11C26CBB3BFC70293D0B0D9C2D24A482D480547836525F94402A4276714BCA2A706116626A6A398996C6669EE1B51C2AA5D5BE35AF39F26CD4A5CB2C1369231B3066B145015BA339149AA33013FCB7F84CECC2243A2EA3711A0855295D6CC647476626BF54364F7747246E298F55BFBB4DF88177A509DA1994526861C03B4A264568C38240E1583B69A0F1137171BFD8DE585C7B10251F6B588CC18145A00465EA142E4F10270CF67744E590784F09D2197473BDB1F19B3A6CC11A2C305F9E9A19FC78C1353298B8619412C6337233CB4EB0C8F7DDB9B27C7ACA7DB0BBD51443E614DFA12914D657088240D3D489D15072AB268F6A4C5DB51D9B273B4FCC8C8F82C2FABAF5C9FCADA54FC249A4365750AE9B766EC989587687DB5BD8A74BE0A442F46EC699F318E205ADBF0134B09EDE98DF538DE2A28B513B24C028E3E35B44EE2B46261C689A9D5AF97B7F2B4CB5B638F87D63FF3D439736A6EF1B7FA793249FED61CBC93564F4732EBDE8F89E665ADBDDC3FEF894ED4D6F341D64DB355AD5D9B4F4FCB9A674FCF9B9B5C17EF5E0F6DDED65CBDB95B6D15687E4EAE49858ED686D0B5E6A5D9A4E64B2C1D91722073C8F864ADADB28E1A3DC44778E3A27B4822BF56319CB15F84D6026BED2DFA912FB1F601D1418D6F46366F8C9441A3E3E9A197E768F4119FEE01ED6BF9618D8E25573F26CAC1BC3C3033D69B879C8326A7362E6BEB9ECE79B1DFD3652F2743F4DFE2D7834F45090F1B2D2C4FDAF9634D5E334866DAB374E47D845FE5A4DD4B8E91F1B368A2EB80F2B79CAAB55E19A738D29E297AB53E564194A19781B54FE83A6ABA10250611BFA8AF350EA59FD54554960891AD6780264C9E9CE81E21B248A009A447074DC43C3910DED942DFD3EFEC6194EC1325969ADFCBFA184D668FBE6CF792E4AC1FD7AE33C93D420FE53F0AD45FA33ECBE291A11FD1CC1610285DAB1FAA8719786B121574593DAEEA9466C7591A513FC9A3A207A87E550EEA0962C1460BCBA7C8262BADD51D5856AE63A0A9F1A89EF8B516AFEDACB547F6F510CEAD1A14647B54E069D75559B2328DD243788DA24A672DFE4842123DE5F4688E266459BB1C4DB02A7C46F76624A98B0A2F6D7C3659AF160D1E2CBDB19EBC20FB8624F22388D621E237121BA27C62DF889E4A553043AFD640365EA07946C666F7B90EB3ED26C34FBB1EA14510196CF4379697D107C8E8958AE57ACD47F5FB36BA9393CBF391D77D3B82F3F3A7FF96EBFE9E25C3B162A6EC721FD682B5DF4B80927BB6EFFD416C60DF3259FC2A3E618DBEDABE658BFA4517B2733A9644C1F26D19CC2CE03C7F78A835D5E28144241BB2CE525FB766CFB3E859FDB435CAECB9C7CFB2E18CFE8FE400113DE4FB5A907A6721FB94324323BA97E9B3C814D1B17CFADA6B7ECCB91DB14D6CFE89E502EF551DD40168E3352754491866BD3E14F1F078CBEF51DF2C4F6FBD2BCE5C9EAC474F7032B2F67269FDB484493E551A0DD295A737954027F7C5D2054F2669131AFD4CF1A3C960D189D63C3AECF0E628D7C6DA6B8DAE26BB2567C5AE2CDA5A3F2F891CE11DF5EB6542F4C7A2D1D39981CA1C343F9F494E3D7BD2F4C3F3631A1D6DBD253D6D6EB26F06166FAD9F768DD8B965A712D6FDC8CEBDBE3392664D87ACFDC8FA366BACE56F2A761BF1EAC7C8B5F4D6B84714B3A54C951CC4E361E529A80E46B17581F73023F293964FF064D7F6C3F2A9914E7A7A91C9818EE59092381C8EA6B06C0D7304567F6B4C440749CE35A7ECF19855F879EB3112D02A41B992E444EBA5C962152D110FC4F9A3FA850496ACACD57D8F02F9883E658BEBCA9AA1E333E310D91179507E5A7B66DFB5EBECC159CF0B49F03CBA5A4213C91DB5F7F790830B24B196FB6C1D546591D59B281E7832597B6C259B11349F13D903120323D9AC7EDE7E597CB2C5AD75EDD1A8F87F6F7E5E4190952DD32713DBB57BD9BD8FFA593ED09209F555160F54AED13E485F2F07B27C42965E45D6ACCE44FD90FC83B8D9D86861795E4A0A3209C55A49670656F2A405AC4C928F3807AD7FE4BC90F5AD26C4997BD9F9CD1A5BA117150EDE297E35F023892092E0C9BE5AFFE8695A240F82CA3ECD4E3E46F85B6B9ED57B8D46D47F26EF917B957E5AFF6A019659B37DF45943E734DA337DF1A82C6B8EA9D0D8179F43F2F00A98B565CFE89CF724EE1032ED839FE69B3EE0E3DD0000200049444154B38762FBF42B0481E2287E632911BD5A64F599052DC93E3FBFFC2F3B1E71FC3C1D5A07DEBA6AAFEE54F7C14AF8AC820D69B3EE559F166781CA6EB5A336731D306BCDBDF58AF46ADF90B2669EDE1E0219DD5D0BC83A1CC266227E883CD93D3E847F18F5F5964FD47CB4165F6663E4907E0D2CBE69E6E1636B7362B4452BF20BA33A1A8DDF879E10C42C1C4D6129038CE7443C23D41CC668F0CA140195D712E5784F5EA4C0D01C7B24ABF75DAEF75AC90092D878FF3499BDB688AF57288DC0DBD728F8CC5C7754AF235B44D72FDA33492F53F4677C84357E862E65E1252E193ED15B06DA77ED1ABD97E181D0CCCE1DF1495E4CB168A2F697D1AF51BF93E151D5CDACADA236E2F9D0AC9C33E8597E66968D7B3E2BD219745D5139A23D41F614B54314887D69B25679237AA8F59D654751BF1971C4A395F5F7B3E21A71BDB1D157614F5A6BE7EDFCBCFE2A4D6F4CF295438F6E7F6F19E3BDB23823499234111A8B4CDA5C3C07829E86CB3588E48AFA79AF7D68906B6EB56530C3B1CAEF9A7E21BCAD5794343DD364445E6995FADBCB69BD762BE9594986942D5AC79104C8FB1EE9BA26379AC879FB8ACCC75A530BC8DA47B264FCA5B7B6DADA453416FE9E8E79F4347D8F9E887B7ECD933992CDF3519A7E79FCBDFED28F686335FBB5782D406C58F645F434EBE73CDF85D045F4D08BEF913FF76279366F40E44764EA7921FB6DF5B5F43CFBCA29E20710F93CB93CDADEFA45FE75D6BE7888E6BAF0CBCAE4C987D88115EB32BEDDD3ABEA7A11D71F9B7D62E9191F82C89023E71E199EEC539151A3D73B80DE2979AF8D78B2687CE467667DA2B9454F5A3D9E08FF9998C523A34B728C553C58AF06F509135A505889A5A6739A2C1ECD2C32BA3A8AACDDF79815382B7639E25BB47DB5EE23F2C8EF11D044DC1A2B7D5DC56F8CEC5BF575DC4A826E258E517B140F50B9B4E24BD38F513B880EA15068497A869E556C7BBE17B5378B5FB4FE9557D6337EADBA9F99C3068D1F2A5F74DF5BDB3E2646F1D3A25BB577847664EF1622FD5E3B7E6A3981D687202C6CB6B05CB028B9E6EC6562AD055C9990F7D0EE8D3A9A9EE6EC24054928A275EAAF5187A5CDA55FEFEC3CAD31236BB68C47DAA375936DD65C33B2A2C99FB5D6DAA735DEE2994D10A2B15170C9AEB3BCCEE8839528481F10F98408E89C2CF9AC44CFB309F93D637B489210F1B3AEFB764F0E44CE8A0FE961256E23FB85146515DA195FB07C7A7EA1BFB60E9E349A88BC916FB280FADCA52840FCAF27AFA70F19FB4451F1AD885FB37C14B2FF911C2345AE777FD9C359873EDEE1D78CBDB474C98B151EAD4A6CF4F84AD9B2313092418BED23791741486CF455581D96B16592963EF05A7D2264C68E3A9D08D67CAAE883B155D08F24555A7F2F8044C1B03AD6A3D7D3F502A9D526F96702C348B15309467DFF7EEED11A7872B476558F34F9FAF9668A9885BEF6DDA261D1B7644664906D912E6AFA1125731E4F8BB7268B76DF4AEAB57DAA40A3EBD98D3656D3233956D359441EAB4D93ADBA0EDEFCA40E6BED59BB9034B47DF66858F3AD145216460B24AFAFE57B115D44695A34347F54597B0F1E4F14A8DF8C64ADACA976C895C9DFACFEE89C9062B5A2EB963D5BF221B11591C3F3FB5E6CD3FCA515FB333E96205A3B92C2321364BCE45C0B161527954DB82D20865FA125AFE53DD4318C06770DD9A726166D241143128E6CF1ECD14603A0557469C540A4CBC8E9AC97FC584F482CF935DA48625859638B9645CFEB5FE5336BBCB65668428D2636ADE54FEB33B491FE95FB68728524C168D29695D1E31FED6B768D6720B3CF9502222B474FCFEB9B2DF63CB9505D44F525F2E79971B3FBA1B12663CB1919AC7DD6FA59C590571855E4AAE8FC0810DE9A9FCAD2D6DAAD436D6B7C94B378F15ACB5B09A2C7660B4BCB90A2626F1F3264651BA59BA12DE9540AA4E8158A990129A287AC5535D1C98E45E8217DBDE27241B6F8CF3EE5C81677119DECB89B8859EB801C38C8FBD5A7E119ACE51767C851D55DA4DF3E0AD87D61B67F1CE53FFA16C7ECBEC87894DE48418B62562199E517C574AFB86C6DBD82654BB1C8CB63B3721EDA6E09A2C7467F63A97B95FE350ACFF12CF733CE69C491F5BC2ABC5BC31CC32C671B39FFC829456BBF16B2B4A302790DDE95A7C1D181C2F289E8FD28341A593B42D7BD9F93762F232322533FAE6AA7599E33E86834B3F42B89C68C39C857DFB678C22DD7B8C7DA89AE07CF8EA42EEC5B1EEDBBB78E9584D9A397C1682EB0862DAF41DFE3919105691F95F9E4A456F4CED2899E46147F105B9BA19F5EEC9D61EB5BF4BDC4F5C4460BCBABA8269A565219DDCBF040E542794534345A9247E4901047EE3954AD28C816D7996242E36BC988AC3352644441678D20A38DAFAED32832F3CBAC5F4443D3A3E89E274724672F0FA2B3197E33E0F198BDCF6BCE055963CBE758F6EAAD0B62F79E9C9E8C083C9B88E8797E3773ADF1F46CC74244D78B4BE81E21FE3BAB9F99FE484C90F7E5D8486ECF0690B8E9D1C9C609CDA77A72A07EBCD247F68D0ED6515F929125F2ED5E5C8A6823FC3D594610F917640EFB8873C4F5C1465F853D690DFC7F2CAB81C3BB6FF1ED9D9E47ABBF8F2637C853ABFE7AE18138626F5EDA7864DD2D5E726DFAEFDAEF3CFAB96863109EFD772B18A249241AA82AC1447B0556BECA2AE9657F8B81CE53E311E990264B765D2BBA5581C5C79B036227167DB997DA38A47FE5099935DE7B35D56B43F6587B9DADEF5FF1DBDAABE0885FE875D37A9532D2D34C32DFD3D5FA59E33DBF67ADA5C76FE9AB25C0912E2272CF80260B62830B229F63FD7C0059434D6F223D40DF2ED164F2DA2C5E515180D2937433325563B3D4EF11BF9FF1039E1CB22D13D332B246FE7169D3F2238D9E261792BB79B12D9AF7486E46DC6C6CF689656F08BD315881A4877CCDC2A31FF59141DBC268B22C7949BED16B239A93B1FAA173EA81FC762242E420B57B9A0CA3F012FA99D0123EAB9F862889E9FF69AF52A37B8D262AB302CC1AC1C90AC8DA1E6774D95B3F4D8FBD8249BB8FD290B41079239F328248EE0AAF193A95D1F7519934FBCA1E1066FACD923B1A17E94C261ECEFC498767E3888C155966FDBED1EBB3E6419BB63E48BCC9BCA62A6351C4C7EAA3E95CE453511F2EC7AEB5EF5E8E83DA51C6C723D7968CC87D169244059B2D2C3D684E6F71D0F29EE780BC36C430B544D5FA6EF1F3E84B99BCF9551039108D9FBC17ADB106CBB167E7E2C957A11BE908CAAF357B0FE57D741DB4F58E304B372C9EB3828E561467FA23B432ED969E7BFC326B8D160AA3FAACF1D4E85413CABEDF2CDB4375BC6A031A6DCD87650BE34C5FD486ADF861AD916CF30E55E4778DB797F87A712E8B28C1B6F8697DFBEF324E7B3C357F87F8192B17F0E4EB7920B42DBA68DB825E56CF1F667445A3851635A3074052D747E28895CF44FB34AAFF485C42F7D9D2E98A2F45F59A20341C5561594D80BCE2A0BF5F495650DE6B1B68140411BE68728406764FAE28E1977D32EB36B2C65E80F1E85713F21E7D70CC2480E83A21F7AAFA5A59A328886B413BA31FE81C50FDB21289AC9E7A7AE5252BB3FC9835878A8E23FBA1CDCB9B87C74F1B8BFA1E3441ABDAAF944B7ECFD0CCEC6D344F6FCDBDBDC9F089E62B7D9BF6CFE365B521BC3DD933766FD14413F88816EAEF22CC7C33A1076AC788CC72CDD02212DD5F6D5CB48F117F445F111DB4FCA3C553E38F2092D1A2AF8DF5E81284C4467F638921ABE09E53F19C611F143341242387E668471D88F5DD7A7A31332021C125932CC976EB34374ACC22FA28229ECB7A6A7CBDF5AFF08F64D3D6AAD737EF097C569648DF466822FB9CE131322E1B78511B1DE5D5AF4BF5AD004F8F67C8EDD986D5D71B37228BD527B247B91ED17C320971668D513A195A7DFF4C1C1A45965F641711ADAC1E45FAA9F5ADEC654443B347CB467BC8F59819033599B55C09C9412C1ED9B884C8B916107BB7F2C019FA2FFB64D6CE1A83EE23416CBAB0EC9D6864707DBF656CDFAED1CEC8118D43929F11AC15E033346714D508AA09D921309AF47B7395071A23051312B02D2CBCF79D68126398B54F87F63BD964786662868EABD05AD38E66CD6DDFB6BE46523DAB1F3A3E1B53F755286D692FBDD8D8DACD8E333779EEC4F5C0665F85F54E58AC1F89CBE20EFD2DD3283C59502C897B7F8DF0A940F292EDBD73D7E6B3B4F7FF0E850AEF59F28EEE01421BE511EDC3218B0CA9530B3CFD417FA78340E3A1F990997ABCF593DC7DDA6E65BFD642A46BD6EF12A56FDC0A90B5B2FAECCB0F56DE5858C679BF85CCC83332D7EA58CFD7ADB527997891E913F9CF1932217432B4D0396ABE50EED53E72482F8F9C9DCB6E3D3E11C78D8D1696B6D6CF3688D1042B4A802D875575CA51716905008DE71A4F553DD9B4FED9006BADA9BC17AD7134064D04347967EA68FFB4119DD72C7DCE147DC83A21BA6BE97B66DE33920F4F3EB4208D12B3482E44CF113922BE6872658DF37820BAEBF5F7E610D1CCEAC11AC99BE58FD1B15A62E9F9A6AC0E64C67A716CA6FD797E20A2E5AD374A13F5791A9FBE9FF5BAA0B6A7DA6734261BA3229A3DDDD940655CEE6B6FEF587DABB220F72C9DD7FEC97EA3F2447A91B1F5C84F46B65BF535C4CDC4465F853D694D292E3D4596AFFB454EDD82E7D8E4ABB911A40C9E2CD16BBED6B5A4B1C6BBEF590726DBACBDD168C842CA7A6DD4E265D1CC8ED1AE23FD8AE61E7D47F56AA19FE9AF8D8F68476D928EB76FDEBA5BF73D9DB26867E4B5E6E0BD7E2DE7A8C1D31FCFAFF47C349A95766D9D101FA8D90CB29F88FFC9E86EC646A37590AFD9657CB8C5CBDA534F5E4D9E5164F45D6BF76CA0221FE24390D86CE9ED88EE58B2CE4A9A23DFE48DB164EBFB7836ADADAF6CF36CDB93C7B31B8D6ED6375BB06CBD322FED15DC59B9922583A5F3489CF1A0C50DC41767F2194DC766AD17717DB1D12796174083877C65A947A6D88A8A84D16083BCFE58096E6811A0F1D0F8687DBC35F664D1E82332A1630F854AC2807C6FEDEA6BE0F2553C4D9FAD7D59D6B65FE36C5266BD1A1D150FDAF708C82BE1161FEB7E4F13799D114DAC519B96B4A2401D5D6B4995475F7EB7FCA4C733BA977DFB01F1395944FA3DD3972CF222F3CEAEE58CBE4B7F54DFE577E933B2327849AD16E722BAA3FA65DD1F597FC40EA42FCFF0EA6544F611A1B55C47B0E28CB70615BF16C9B546FC8F0EF2D6E089F824647FBD3E887E463ABB8FB520AE3F36FAC4F2AA73D2143E2AA0B47BDE9314D9A6D1B04E93BC5326CD7011071DD18ADAE5C9784FBB5F0374AC755FEE51F51470D6E92152F87A7AE5C993D9FFCA7C3289085AD478FA1ED1CC8C456005F56AD22469B786056BAF708C8AAEA56D643D2CFB8A64B1EE457AAB8D896C3CE26BD9507F5FF3133360F9366FDE55FBCC16D2D983CC688DA2786025F29A7ECCF0D11A6F8D5EBF3F88DFB1EC16F585889E59FAAEF1CE26FD565FE9E3501DF57456A3397A0817F94AD456A4DE21056A46CE68DC92D378F6E0F9AC1178F62B6DC5CA2FFB3ED19E6AFB6FE9B217F308622636FDC4D24325111D090EDE3D2D39461C4235A1CBF41B59A728C1EEFB45EB8516C49AEC338A0E54268F27BAEFE8DE46454566ACC67FC6FA21EB808ED5D6C91B2BF5CB5AE71119B3E3B475450B5154AE35F4DDA23BE22BB43DF1F8A13ED5D29348AF91EBA84D5E8F1E1E583A8AE843D6CE223F3BEA0F2CDF8CEC0FB206D53882C49648364FC688BE75C01201A1EDADDBAC36AF5DF6C9EA31AA03A89D79F699A5E5D18FFC821C93A19B1983C2D3758D96173BB57E5979889B8DCD3EB13C39C93908793ABEB4F5B4BCA062C9E0F5D164D4FA4A9934FED669AB275FF56943351056F9F46DDAB5EC6B057DAB2F3A1FEFB43A72C2D675A44B51921AED6FD4270B6FBD2A856D440B496EB27A1CD1B4F678B9E7D9E36C44BAEC8DF3DE6AB068A34F2E11793558F4A2B71BA44C721FB47E19B924FDCAB81EDE93A26AE28AFA912C9DEC7864EC5A4F34AA4592D6C7D29FCABA8EAE29E24F967BB3F400954B7B5A3D4A33D36EF58BDE20B0F2B90548CE301A43513FE4E59E11EDCCB835E3955CCFC8B6E4188258B0D1C2F2A9B67A8580A5E4514216010D6CFDA7F55A5B94E45AF43C58F35B3341AE603459CA8C411362B4B81C910B012A6FF6B001E16725C7D984C81B9395112DF62A73D75EC1CAFA84ECE1C5AC44262B1352BC6613A0AA7C118D115A91FE66E286064D1735B9BD57FF2AB0F66594AEF7DA5D2407E22F91822A8BE88060AD026994CEECA7681A6DEFA0431639159FD2D3927C513AA3712AC3CF1BBFAFE267E60181675FD67CB4423A13B7086216365A585E6066C0DE070DCD38BD4416912772283269D6FA4A8793713232C1D842118B041FCF517A459BEC974996D00230535446D00A32EBE91C2AC35A41460B96165FEFE43AA2ABD1CEC815C95CD1B791240B994B96C7E81E7BFE4CB3AFAABF406DB507BA3F9E9FF368697490E22283C8C7650A3EF9BD7AE087D8AFB54F19FD44F7CA1A9B89A95ABB174723BA481B0234EE47F750BD8968A1B22263B58277F4B0071917C9B68F9CC6B22164ED47635A64BF23B409A2C7460BCB93D69CFFCBB235DFF17A494874CAD75F5BFD671A967502193980688EDEB5BC5749F6BD24054960D0C4288BACF38DC67A89859748C9FB5A419F29D691E24ACAEB2518DA58642EDABCACB978EB592982A2BD98014DFE4C02ADF593DFB57B0B2ABA3FA2F3B23DD2B3889FE72F105DB7D6B692E0568B998A6FB2E6DD5F5B6B5BF579997861C93A32CFEC7DCB3778B68416AA682C943667F91184A7D5E6C1F3936BF834B4E8D30E3290783852FC5490DD9F2CED2886597BB4CF433D946E94BB65682DC81C761237171B2D2C7183B50C3F5378696D9121A2C9250AE930B5E08F166C15DED15C64E1ABF18B02A39C87E7B43559A22468642F327B9971D291AE7949682F9B6C936323F991F5CC041CAB80EDDBBCC39A198925DA17B99F4D90AAC59547C35A2FAF4F44CFBB1FD198E1DBAC02DD2A0C661FD86562C0C27F5F899FD61625C7FD7D24D659887CA6E557ABBCD658534F2ECF3F489D1C3DCCA9EA92DCBFD93985045A9445715BD2B368467220455A54E078FD101F13E90DA2575EBB4547BB2F65F60ADC2A46E9B0A024106CFEAFC2F60E57BBD73B67EDD4ADFF27A1F5CFCA26C76AFC66254B11AC79F6A83806749DD0C4355A1B2FD82FFA602564C83E47D012B70C5D641F34787340D08F457501D507B4C0CBEA7E64BF3350B145741F46F64BD29190FE45F3319E5E22C94E756C4407B9BF76B161C961ADAB464B2B5EBC64B7AA0B3D5DEF7BCFCB92216A430EAD7AB9229E881C5EB1601581195FE6D143C67AB13C921585E787E43DD4F7C86B6D3F1199119DC8E81C0A2BA658763692A359B4347F1AED87D5179103B1478BEF0C787341C7108487CD3EB1B44E701623A8043CCDD96A46669D845A4917EA88E5782BD1414FE9BC7947B24627B58B1C9ED3CB229B18593244EB650555494FEE039A7065026E7412BCC6A964C4437E7AF72AB6155D237A1BB5F590074C9ADC1E7FCB1720BCFB7ED18188ECE79DA05BF73DDE1E5FD95FFB8ECC05793A13F90EF90420F2E95A0CF080F86BCF67485DB2FA45E33DDBF7F656EA73C4DBEB97F1B99E3FAAF8FE6CB22AF51EA5A7AD95E5DBB5B95A45A5C7D78A21FD3CB4B119DF87E8BC275B344704D95827BFF7D7B2DDB38FAC0C9E1FB37C0CCA0FE1EBE97236DE65FA79B990A593164DA96F910F5F2B67218E1F1B2D2C9F6AABA5D851D2930D6ADEFD918413A1278D389BD447B25989B4E61C32096DC45F9B8395E86692894AB0CE266AB310EDB5D51709186800D4F6D45B8F2CFD0899A2A0828C3E20E367C961DD43D77724015CAB5FA5B819A59DB5D96A229A9109B91FF9FC7D20AB4B6BFAC728AE65641D8DEF529EAA6FDA47723DB20FD5B955C648DDD10A6C34D6CF2A5C2CBB5BDBFEAA31349B7B79F99BC72F9333797D0842C3460B4B1B96E15927C20B2243E8E95682D6E86B1B68313823698E0A95D1A23DE28DF6D56458CBA145B4916270E9A7B5F76D51F216E932229F77DA98457FE2EBF5E9811C50204F9AADF599319F35317A38D3D3E90B730D2385D3DAD09E1E6E45360DD193DA7DC88EFAC24CFF19A8FAC8ECDA659F58A2F4509F2CC766F3014DD7BDA7E895E22FD33FBBEE96FC33728FA5BDF22680C40C5F621D2C2087EDD91CD3932192CB3B0039D4A1154158D8686179D25A3B0F5F258A122EAB7FDF86F48BEE59FC35A7A0C12B083C87A78D8F64F5C66834AC76CBC96592082FD8F672CAC2C60AD89E4E78454BFF04B7A715C91DC9EE8DAF9E487AE391420E3960899209B48FF5DD5A5FB44DBB672570085D2FB1F3E48D6CC09247C3210A2E6FAD320703DAFCA33519A1593DC48B92476F9C25A3650B166DCBF778C92DAACB088DC84FA187409E0FF0FCE88C4240A383EC256A63DE7E5BF432BA64C9EEEDA3264774ED01898F917CD6788D57B6F8B1D65AFAE391E257CE0BD1AD281E55E325221FCACFEA87E492ADC5B9C5216215715CD86861191B95ECD703495C338984BC87148B92164A332B8F771F49C0A22430E219F196096AB578D0024A451EA47D465F79CF2A627BC8F54175344A5450793D3EE83C33344710CDADC2C34A96227DA824B55A526A25AA19FB1F499CADB6A838410BA0882722139AC0CA35C9268FD15C3D199136AB4F76DEDADCAA3EBDEF871498DAF72C9F0C327B8414D268A22DEFA3078F957827EF6BB90162BFFD58B42FDA9ED1674F166B4CA47BA8BF95F7D7D4CD7EAC75181CF5A9C865F9662BDFC8F0F6F467460C27AE2F365B5822D09287C510B4247D34F19463671A97271BEA083285AE6C9B7502E5ADF3A19C5135C0676845B447E78E9C28CF42657E1A66EAED9AF2686D557BC814E0B3741219BF8F359EA18768316FB5CFB2850C9DD122690BFD678FD768CCF2B74BDB487CF78AF0481E49C71BEFD99DF5D4DA9215A15D3D5090F4B2FE221B33BC2778880C68C113C935C32F4A54E327FAC002D191EC78EB3E0B48A282CDFF7723114E4E2E1793F25E34764DCCA4DFD3EAE73C8BE712A82347EEADF1757B3D225AF3D9F3ED03AAB7AE1ADF7DC8370359994692BE2ACF8A2C3378ACB95FD5A47E145BD041CDAE505BB3DA2D7B43E63BAAA79ECC6BAE373ABF2A6DA4AD42A7BF6725E59A3EA0F3459EA0493910FF9EA53B03155D9A710837FB902D6387D67E7BB9E56C68B2683269B2CDE48F5E138487A37962299F48A2278D96A3F49CB677126A0527299F455BD2CF2063ECD66968E584CE727AFDFD688DE469680FAB7DB927F7307AFD43A3DD8FD5E4B5504D02B5E420EA5F79728C0404F404385A1BE4F457F6B5F65DCE379ABFA73F28BFFE53FA128BAE3637CFD667EF37D2CFB3B588A636776F5F2A4F4F3C1D427CB2B557D9B5CEC88BFACA8CDE5AF7237AD6FAA3458037578FFE08A49D454FD6B4315EBBA6BBDE3D84AFD516C91A8DC9E4299ECD587B94F54723B25BBA8EF887FE3EF2544CF33D553B8BFA7873F662478F8C9D7B742239BCFE880F95B24631D8D2C98C0F266E16365B5846C1C832B26CC189041AC4A0917E1E3D2479A80299AB5680567858D7569BD73E0356C01EE199491AA2A43A7A6565C69AC9442B4ABA2A6BE3ED3FCA279A2B1A8433F68FF2AECAB2002D883276D3DFCF1442DAA7C7AFEA0F4765D5E8C9EF5A81EC1D2CF4DF111DB5FA5B7DADEB594F5F2ABA8DDED3FA456B89D2418A039456D4E6B5CBFBA389B1162FD78C67927EC66767ED18A191EDA3153F685CCCFA1DCD17CCCCA7D0F619C5D7A8DC957837C38F1037131B2D2C2F2C3153E448E3459E4254512DBE229AB3E8579C03320659D335D7C56ADB87939B352FB400EB4F76B5601CC9E7253B33E731635D66EB4C166BEBAB6C9F99E4443467EE93461FBDA7F59B99E86AFE730666ED5166AE9978975DF3E8DEDABE75B430A9F41BA181BE5580A06A8323F3ACE6126BCB6A1594F2FB68AEB18502288A09D9B7673CDA5B982F416CFE3796DAC9629434687DAD31FDFD4C32220D78191FD189E4C9D0AF264F9940187D8FC61D12C87E2CFDB274239E1A2AEB9E0914591DCED05D6459FE2DB0F4548E95DF2D1E119DEA1CABEB32CA7736509D8EF629E2D17F8EC0D307A43F3A4EC23A7C41F91D13B62EBFB7C688EC993D1A5D0B2DBECEE06FF937D49E353A9A9DA24FFA3C5B40EDBF6A3BB26894BE2AE23913D6FACBBDB7FACC9227F293233E393366EBBE84380E6CBEB0B4E019A196EC2E9F56E0B078586311F910BEA3454F24BBB54EC849AD27A355E8F607015EE0B3EE45C584D62713043241C2DB732F18CD8276A862C9603DEDCC262C5192E28D8FF645EBAF8DF1E820324773887C80B7AF480260D9FB28D6D2B7C83ED175EFBF7BF6E5EDB1D766DD43D6C1D2039427C227D2ABAC6C9975F17CD5881CD6FD680FB598A0C9ABF5D7EE5BFD2C7AB21D5917C46F78FCA4ECD91881F84BAD6F442F9A83D6CF3BD8D6E87832A07E0AB5F9E5BB95E72172793C90F958EB88ACB98568CD2BB07456CA8CF099210F7133B0D157614FDAF9F979FA95A05EE1A3D7A13201384BA7E73D12D0E5AB12FD5CB5F1DE9CAD408F38680419BE51F28538E2D12012D1415E3745F9CAFD5BE86BFB9AA1872213D8657F647D326B3F3B28797A1DF18CF42EFB8A5BD6775874B471FDE9BE3737D467FEFFED9D3FB22DBB9297D78968A30D0CF0C0A3CDB619010C83080CC640300246C04498012E986D82D7663F03A3BD7EDEC6B8144F376FFEF9654AB576EDBDBF2FE2C459AB4A4AA5A4542A5355EB9C4A8E57A7BA9ECD812233F311517945B6A753B68EB379B0F5B3F560FFF67C7856C6D34D21D2BFBB1729EB693A27D9FD5D9FAFACDD537EA84A14BC40DC1B63EBC7BA63BCEB83231F3689872239D3D7F2A3184BAD5B1DD07A9C78A5B413637AED467391C58BCAFAED30E903C0A39F585E4EB97256D12B1577BE6FEE6D186B9B271D53D427EF1592CE6B2FF673D6A7A85F77243877A36C34D1E6D749D2A2F15CE5A8F2ECF82BF54EDBFF6E401331D133DB5C4FC8520EA62689996717EBF7C8662676E7F9CB8EDD55BF6FEA5CBF9BEE7A8A98AE9928619D96C9B0AFA42B4F042319EBF7489F9DA0F4C46FE5AABEAED7BD3766AA00DBF6F1E41E1E51EDDD8A9FF7F4CB9E7A756565BA7A2807038ADFC874CEEC34D3AB8A6B22D9A7F693DDF17F278ABD00643C3AB18CE82C34BB0947723A9B897A82E66D1C3B4EA25BB772C2A79293EE469C25CA9DB6A3F293E4570D58544E6E0656874CD73B82A249E01AC951E668723854CD9F52B6AA331DD328488C025AAFEE746EB320A1EBFF3A63ACDCCBCAED0474BBC1F825E3EEC0AA92DF5D07BBF3633FAB417DB7CD77CA8864EDFA9569B98E1CEB1B267EAB5BD6FA19D5EEDE9984ECFAE7CACF66F7B23F2B1D1FA4CC8582F2B459D5C95E7F77720B5F9B87BE0AEB536D7C1D39EA0965D64EC741DCC91DF2BBCE3793E33D71CEC6CA9E6067F3AECAAD74AC745AFF5E4FC2EDE70A9635C800002000494441548E8D7AF5A77D5088E6C2BBE7F54795BD32DD60BD7BD9B867F2AB6422EA67C7462F39AA0CA55C2761CBD684DAAE375ED57AF3AE4775BAC94A2573659D8FA85CD4BFAC5F15D5BA55EEAF786515BFEB95F16C74EA5B2672A2353CA9ABB4E9CD6557EFCC463CBB8AAE65BE2C6BD7BBB6EB57AA3537F55199DFB4E36FD77FE40F2A3915F629B9A787D74EF65D6DDFAEBDAA8DEEFE6A510EA6EC3877ED52950BB0F22512CB2AE05F515EAB516457F75454DD1507B8DB6EB4199E700E555270B2AD8E3ED1B8EECC6DC71EB304A9233B2AA73C899A3C59ECE8E2B59BB53F951BD9D8EE3AEDD4CFC666127C64495857EE24999C9457EC3FF301AFD75EE2ABE85895CF64ECFAC91D5FE3D9C394C9D8D9207427A959D90DA22765D524F2AE7533AD53C9AB125CAFED2C11DED1259295D94E27B9ECEA59E931DDDBBA4C0F1326EB248B1DA3FE76FCA537CF778F1F7C6D1E9D587A4E28625D4CCA1388DDE43373865540A15EDF3951EAC878A7935093AF8E8C530709537602261BC84DDBCED687D7C64E20EE25479D3A77F3C44D2F4BB04FAEFB9341DA9D9C48043BF24FC8DEF5E7A7EABD5EF7BEDD70F2D066DAEE45F76D02F5FEB4AC5777E7E04CF19F3B4981BDF759F3191D5EACDFEDBE62EB59D43570F741C869ECDB1727E3A11D9EB277C0F379EC6F2CA3A04B3D5DFCF8F8CB1FB57C07EB04BBED75E4AF6DDC21BBBA7E870E2A4F7766D364B0DAECAD3DDDF1045B65DDC0279B5876AAFE4E9BFAECD776A601CEFAB91AAFD56FDA3F9FC1678CF9CE418F77FF693EC8DAC467B4FB6E76DA3EBD375B54FBB0EDAFBEFDB37D53A5C769FD943DF01D7A28F2A27139A58B27FF5DF30070070F4D2CFDD51339E26AB1294F1755591D3287313DE5F402CD0951B0B95E8F129BCFDA10335D947AD9F78E73EFB6778A6ABC4F049C53196AF096C98F6C2CBBD6D1ADA3EBAE2DDCBD3626F2BB09D2A93E7C5622A492E9773AA9BCE3B0B31ADF2C48DD59EFF6B37AE0A1C83E15CC4FECADEB2B267AECFAE7DD43BACAF755FBE15392E15344FD55FA7CD7C1C5D30E1E00546E492C7F05BB4774FDB3B04EFAD4E28D9EB24EDA5336D76C933FDD37B5CD6E92A1DECB9C6DA77D6563B532BD76B26BDD76D53A557276A28DECBADAC74C97E9756F8EED7C4D02E4939BF79D4140F606C76EF2EB8DA757C72BEF959904A2AADFA874550245AFCEE45E54A6D3E7E85A9590646F0364B24F2409919FECC8EB8C8F6A172A955FDD5D4FDE35656D5572221FD865B77EA79D1332BCF1517F1EE55DFBF898BF11A796AFD6AF573F3AF457EA7675F1EC33AAEBD91F80C7F1C4324B2A3F3E3EC4E4F2B732ABE1DA57BC2E2207635F03EB0460D966EC2D4EE5F70D5139D559284F17AF6B4AA0B7DE8BCAAFF2ED2B75DEF82A4EBEDACCB3B291FC6C6EABF952C6BF0A38AB403A72DE59B0F07AE5AF30566313F5D10613D58651BD46A90425D5E615ADCFCEC65505089EED7AF5AEBADEF8458158B5BED6BA9E7E5DFBF1DAE88C5527D8AD74CFEA54F2B2A036EABFEA13223D565BBBE44EF7874C77FBBDB219AFCCA9577A3D9D3219D99EA032D1C96BB7F27FDE9875F6D06CEFF3EA44B22BFB517F03B93BEE55DD4C9EBABF76D67FD797DBF1CFE83CFD56DA5CBF47F1A627B3FBB3A86C4CECEBC1BB3F63E8FAA8ACCC7A6DC72EE1FB7334B1BC92C7ECBA9E5CFE05D519660BF1DA70D64042099895C0C7EAB1EA12E918B515E952F5AFC226D83B8E41F96D52B6595AA2006FBD57050BD55C548E5319D72CC08DE4AC73673768EFD0C3D37FBD660F13D4DFA974938F4C8E22AF13C866F7AAF1B1E3AD1C3A4572221993030D05CF9E1439D340A39BB8744FF32B9BE8244ADEBA8E74B765BB0175452437B32B651CA2C0D2B339CF57657EC25EAB74B2EDAC3ED35B47D1218D920866F73DD4C335F57E154047FBB69D17CF1EBB6B331A53ABDFCE9A5FFFF6DAF5DAAE0EDFA63ED1FA886AAD7612CDEE1AAFECB633E6D3BD772769F4D6A8172F550767D5810B49247439FAAFC27A49E55CD6EFFF7EBD6287DB0958946BD3E04E0D96EDF768A3EB6C564AF06CE59F7418DDF1C836E9B5AE973C459B4D163C45E3EF6DDAF6DE5AC65ECB7489F450FAAA041CDDCD364AC2A3BE44C16D26A74249E6AC3C35F956EE7551833DAB6335575960168D73964CA9F6A9AC536B879EFD2B7D5202E2894DABED2B3E31EA6744D74F45EB22B3976CED77FC7C743D4B8E3A7B42A573359ED3FDB2AAE38DEDBAE779F3A424B6D97EE5DDEFEC4F515B991F547D4ED537C5B77AEB63EA67D57D4BD5632DDFF5CB1DBDD4FBDD393ED17655BE6AAB63BB956F03F812FFDD88120C454CEB7B0B6DE7E4B06A4B0926B3FA91BCAC2D4BD6BF9D31C80225EFBABA119C60EA80271B6CD4C7AE9CACAC620BD9D87BAC07389DC0A6930C7A9C0862A6ED75CAAAC1FF54876A3D7BDFADAD75FC60774D4464B2D5A4D326B57752D9EF54DE4E307B376A007942B65276777F59AF658720F65AB7AF9335B97EEE246959B94E7CB01B4B75DA8AC653D17FF559916C45B713FE3893AF96EDD8E1555E6D7332BE53999FEDABE0EBF0D8C4F2B7D7653FFEFFDFAFD7F5B74FF45469D6B6FFBD0ABCD7EF9DF25EBBBB8BB8DAA814E7153D49BD2BC1BE5002CEE87BB5B19DD6E71D419742D6D79DB5E0C9CABE7BF79E70AAE9D9FBDD767C92D3C9EA5761E7006772AD2B772A6B5AA7227B9A3319BFD33A767DFB4EB9BB1390A90E93B64E7022E9D8696F52A79271EA29EA9D74745AF7CA771EB077799A3EF07B3EFB1F4A7DF07F37F2DBAA5A7F9B29D5FCF8FDDFF6F35D5C276C555B9E7EAF97E640AB364E9DB02BAC7A78ED2A6351C9DF2DF7EEB5958D47B78E9DEBAEECDDA785919C095150BB6B239EACC816A376DFE1274EAD8393FAA9BE2A2BB3A3CF89B5A9FA5C454E4627293B4565CF135F7342A74C8FCC979D6EFB4EB27E76EA7A6353B5F519443EE60EDD3A32A33D63FDBCBB2ED579C9CA9DB2EFCAD73EC156E06BF0F1F111FE79076F492CD77FB027FA077E22A2D704BC6B4A10641334EF7A07C519EC6C2A9DE0220BDEAD9C2C583A71C276AAFC09A24DC2B3854EC0160511AB6CAF5C962C7AF39DE9E4D5ED044199FD77020EE55A648BD99865FD3B195C2B814427B8F0FA78DAF62BBBA9EAACDF2BDB57E62CBAD7E9B7B206B336B3326AFB2B3B07321D1D545B56E7206B2BAA33B19F482795EE7C74EC47B95E31F5A5992C650D4675A23D6BE2FB3BF72A7F366D2BC28BFB266B53B5E9C85765F37AC28777E574D768E52332DBA9D6F5A9FEC3F7E3E8ABB0EBE3D7EBB3FDD760B5A4D27FEDD52E70FB0A447793CAAE7F7CC489DAE415BFAAEDEA771095DCAB5EB7FE2994E0A21A67ABBB77AF33C7D989A7B2B17A7696E95FC9F25E97AEF0FAECD94C97DD4DC31BE7E85AD71EBD60AA2AE3DD535F017EC7C6AECA526D24B32BE5302EBAAF240ED59304E5BBBD16E9DC9DCB1DEC98563F6588D661562F9261DB8FEA75F457FC70E5734FA2F8AD6C0CB3FD63EAC3A2F5968D9D9AD074F69FAC6D65CFF2DAEEDA63742FAB67DB5CEF577B79A67BF4BD7B4D95A9D2896DBC78CCFABCEC7BA6C32A5B8D41AA3EACF72A9BE15558C878EBBF0ADB7952D959FCDE7BF93B9BE224483A41E4083D94C021DBD82A277FAA8FD52664CB4CC67A320E0AD7187B8EBCABA3522E0BB477E59D94AB94EF8ED11D6B6A27D89C1C0228EB369375C2C694B23B6BEA04591018251DDD802BBAE68DF174BF50139A4E307A4A075B26E3A4CF555013DED74B1B632F38AF7C5F3759BBCA4E0FC914EE3C3CC91270A5AEF779955BD5F3BEDBFA27D689EA3FBB89F3846CDCEC35FB90A4D2C3DAEF699FE3E95EF507E0E2A1BFB1FC0D2FD1CA02BE3520F4924D8BB798ADFC9D056403D4EEA9929718797D8CDAA81C53C7295DED667DEA1E047873943D29E8B4D1C1EB9B6A2F77E992E9D8A967CBBC5EF3207A5A67770D9D2A5BCDE9447E9420A9F5A2439DF5BE97ECAEDF3D3F3845F19B9D44460D3A4F5125EECAB50E93603D5BC3531DBCEFD10189E22BDE89327ED97AC9AE4FDAEA921D08567BD9CE5C64FB84A75F37C9EDD6E994CF62ABE91C75FBA9EEA95939650E2B9F94C5533BFBBD27B3AB0709244C78F0BF0AFB47E7633797C949ADADAB2449CA09B7BDD649BE9460A8BBA1AEFDB49F3D3DA39347A5DD6833AD9E425CF7B2603C3B69CDE632A39B806481DB4AF524A6B2998E3ED97C657A74DAF2C6359263DB55E6CBD68DF4C8DAF76C20D3BBB2712531ACEC3D2AAB2482DEE72A385D39F5142CFB6EDBF17C4826230BC43D99D7F76C0E2BDF52CDBB62E391CE5E9FAB276EB6AE2D1F8D4B76AFEBD7323D94FAD59E680F443A07209D7590DDB7E3395D4BEADEA2C8CDCA44B6EDC5236B79CF2E2ABF1AB551ED59911ED9DEB0CAEDEAB3CAEFFAF4C9BE372D97C58CD77DD52F4C75530F3954BF1895C9E23280872696BF596BB5C9460B39AA97254351B9F5FB646353889C6626CF3A902A38ADF4AB9C49A5CF446647AF9D8D5D6D6BB7BCE2A4B3BAEB9C56C972672EEDB5687D5441C8E430450DACABB51EE994B5ADD4EB96ABC63D0A1C3A8172861AEC6649CE89B5E4056EAAAD4ED75437A88BAE4FE7B833769EDEDD03858E6E9339AD123135C954FBB1B3B6323D2B39553F4FE933A9D7951DC9CFEC423978BD236688CA47F615D99EEA2F3B367137D1BEA68CEDD4CF6432EF2E07B0F2D0C4F22F5867643FAFD857213AA7C0B6BDAC5C3730CC9EE444B2B2FEED528D47B40128E3B41BB84E928B6ACE2A79D953B0C8E6BA4F49AFB2990D7936921D94644C82A69DA0592D9FD5896CFEF4263649B4D43A770698D113A1EA894C57A79DC06657B6BAAE769EDC4DDA3BC149DB98EC6D6ADB9DFDED9DF66EDBD96DEFEE39576296EADE0976F7C7AA5E5786E2AB3AC964567E3AAE51CCE6C500555BDDF823BA368D03141D3C481E61CA4313CBDFFEF558C521660B702D5BD589DA083534BA5532A3FBD193A32811CD64674EEF6292142BD7A30474BDD79D2FAF9CA74735565D7D2A5DBCC42F6AC796E93A6B6F5C6D7B553FBA0180DD4895273D993DA8074291FD56C171B4863CBC36A2F6335DAB84BF1B7845735B61F5D9255AC356B768BC33FFEAD9ED5A7F5D239E0DDACFD94197329E998D45F5AA71C9BE4778FD500F9432FD3AC9A6AAA79AA478FE559D23658FB6BAEC06FF910CA57E6563DEBA890E8954DDA6FE564D62563951B96C8E4E24ACD1FD3B886CAFDBE74BC6DD64F6DE8DEDAA756AE576E368F8793C34B1FC8D3B0C779A007A65BA4160A7CD4AA6B7B0277AA89B79755FB9A7267E199D24E0223B683841958454F5A20D69720ADC09A0D500CEBBD60996EDE74EE0A3DA5D371153EF9DB2EB2821E9048C5119DBC6EEA191527EB2962B7FA5AC23A5DD2CB198F81A0F651EECF728F88FEAAEF695253A1F1FB33DA42ADF39E8B1F7B2FDC9F3C7CAA168A5AF724F497895FA0ADEDC64F53B4968A66FE66F3BECAE956AFD74CA67B6B996510E75B2C4E8444CE0ADF16A5E95398AF69BAE7D4C93E71D5B829FC5A313CB0BBB2857871D9DEA9E3A51E904103BB2AA7A6B7BD1C6D43DE93DA1CB44871364CE70A28392587BDFD7F1AC9E70794C02DF53E3DB0D1C26C15FD56EB6C17DC6C9F53BDBA882DB95AE4D7713F4EF443721540EE9A260304AEABA7A75EA2A4F322B760E9576DBEAC898D8ED9D7BD3EEDE69ED257B0A54B51125C83B8729134E8CEBD43E2259D5DA54C6F6FA3B4B44D7F2D9B877F6B9BB93B7537E0820E2B1FFDDC8954066495416D05B195E99F59A2DD77D7AA4CA5AAF7503035B6722E3F5FABDC3551245EF73A48F42365F3BD8318FC64AD13BB39D5D3D23B244C3DA52358653DBA8F4CBEC4419A7A98D28F53A6B7447D69D63ECD99C37F7957FB4BC332038E1134ECCE5C41E77ECAC3B1F5E80A9F82FAB43662BD9E72ED59EE695C9FC956AC36A99AC9D0CBB1F46EBACDA7B953E76E630935DF9A79DFB957CAF5C77DD5C63DE3998C9DAA90E703379D9BA5BDBF4ECA1B2F14AF76C5E33BB3BBDF764FEC5FB0E90F1259E585E281B4456CE3AB64A6E14CC4775956034BABEF324D1EA3039B15F75B0277495439C389D682E947B6A52ECE93699A30CAF4EF614B37AB29A8D75F477A65335B756177B2F9B8BAC6DAF6CA66F670EBDBAEB98644F5795F516D94CF5743AD377B5D9EC4D8B4A4E564EF51B951D7878E3E5D9B6677B51B9A87CA58B777FF729A512F4A93A7A6B2EA363034AD968DCBDFBD62E153CF96A6291D9BCB7CEBCFBD1B5A85F5EDDAAEF9DB557F91FA51F511F3AFB70A45B54D6AE1FAFFCE4C9785727E509F324DEA86285AEBF51DB5C51DE7C98C85DAF2B7D8CCA5463508D3B4F30C1E3A189656EAD59E0E8DDF7C8024475935450020FEFBE77AFE3E4AB363A322E39DEF5AAEDF55A2731B1D72689C7A9C05D91DB0DCAD6EF6A00DAD5C96B57D9A077E62A925505938ABD4649592701F1AE55BAA9E53AAF5765F25694846E953FD5A193FC28E375C7BACBC8F6037BBF1AFF28809A06D859303DDD7FACBCC91AF07451DE5CE9D259AB7797896CF4A44D46BEAC6B439D31CB64ECC44327934AA56E75B8B9D2B5AB5DFD323A872155DD899D28070277D93B80E5A189E5AFD7EBF5919E32578BAF7B02D97164EAC98DA25F24334A5C3A4FB822D420DFB6DDA51B98AB3A75E6327B32B796A982C9EA306307AF8FEA53ADCE93B7EADEC98DA792A5D842765AFDEEC4456147A74E70A19CBABF3320CC500E15D4F22A7705509DB558F1A4C06E77BCBC276BF69A3236D961AAEA0F77FA11E954C97CD25C7AECCC69757F27B953FCFB495F30217B6ABC13035431569428AA09ECEE01C1B40EC0EBF5D8C4D25FB4EAB59D36AEEBF614C8DEDB9593E9A3049897DCDDA7726A005B5D8F12B00E93BA59621595AFAEEF9C1E46ED4CC7244B1AABFE7AAFBFEC0419EA414E968C577232D9D5814F479ED5519551E9E295DBB5A16C9EBBFA9F264B06D6EF2BD5E14E96A85879DDB98B7C77B646A283AAAC6D7B7DB27656321FA71C804D0E9F3AEDD8728A2CAFFD6CFCAB757011D99EDAD76C4E2F39D5B87AEDAFB2B33D34D3CBB6BFD65593F788C9E19777BDAAA7B697C93A75B05BCD75F639AA73DA0F57F1A5527FB75CE69F012C8F4D2C1522C3F68C5EDD142BD9EAFD4EB94CD7F57BB57945014537308F363DD5A9660972340F9DE0ADFABE8B371FBBED64015D35FE76EC3E3EFE385E8A7D7832D7FB2712687B4DB1ED0BDBC74C6EB4C6A37BD7F54AEFCC7EA3B6323D95A0C0DA5777C3EED8A7B2965E2F3DD1B2753A4980ED6FE50F2A9B8874F2DA8CDAB065324EACAB682C55327FA0C8ED265E9D807BB2F7793A4D65AB6D57F6304559CB99FD47FE271B8F6E9CE3C958F5F2D64F47CE7A6D27B951D6D5B4BF519F7693276F6D653AAAFB5FB6D62BBB510E42943DF0C4FA80EFCB974B2CB3A0315AC817A716C63B1655B6E17792E26E9F3B1BE15456957878DFBD2054694BD54DEDD7A9B98F12AE2A21BABE9FB0DFE918AA1B7876B2EE5DEB042F914E36C856EB7A9F155D6C52B5F314A71B8856FA44F7A2846ED7574EE7ED0477F8E44CE6D41775835F45E689F25E9DEAA032C306A7D7BA54F7EF29D5E1D1694E8D733436AA0D5EDF77F4CB0EE495F9E9EC9F8A7F9AC8AFCA6707EDA7EC726213972EEBDFD97AC9DAAB92D269FC08A0F2D8FF6EC4B22E86ECB317847BD7333927F4F3649F7CAAE6B5BB432720DF7D6A178D87321F4A9D6E22AEB415D9902A4FBD96B5D5E9C74E82D36D572D9BE957CD81FA042692D15DEBEA9AAD4EF433BB59D79C6AEF0A6B20BFFEB16DDF15849FF0ABD3356BB1636C0F1F22DB509327FBDDB31B3B07BB6BD0EE6913DBF6FA1DAD31CF46D5B56C759CF6BD5A8FDE7847F73C3DBCF227F76B65BCB37B77EAB2CAB7635DD9969A74BE5EFE9867F3E1F9AE6A6EAA38A64AD4A335A5FCC9F0D690EAFB3BB1472667A7CC1DB12B7C5F1E9D587683BB13ED4C1CBABAE12AF7AB763AF527C949D66614484D36E2AC8EBDD709BA95C426DA10BCEBD1986775BDFB0AD3A7191DFBDB916D4F32A3E0AD5A47EAD876ECAA6B839D36A2B9ED0486533D3D99DDA026D221936DDBB1F7A2FA914CEFEF299D793845A7EF950E991FADF622B5AD6A8D65FAAD7402F1EE5874D75035969E7D2936983DF5CBFC44A64FB54F54F5BC362ADB98D0F51F91DF516C2C1AF32EAA6FF5C65DE9EFCE5876EE4DDAC9F6ACCE3E19C9ABEC1740E1B1AFC2AA9BC8857D6D405DC893A02C6AC33A4E6543BA3E47AF1A4D9C45A45BF6AA47B7DDCAA959B9B69F916ECAA6A4E8AAC899D271E8D15CAFFA4C12CAAC5E3456D99C78F2B2576A229D223D55A6F6AE9451C7AB2BB70A74AECFD5939FB55C47272BBF2AE7FDADE855E9A3AC83CA87ABF2B2B6A3570DB36B915EEA5C7865EC1AB79CB047A5FD4A8E67A7EA3EA7EA647D5EA5BB22BBDAEBABF550D94C567E3A2613A6ED7AFB8D5A77F79033DB7FB37567F7A2AE1E13DB3CC9AE5C6F0FCED6B3379ECABA55FD41759D5765C1E3A14F2CFF62AD5942F2875ACE1395CE2B9ED1EB51DEB5CA294FC882BE899C486E55DEA333966AF0DAD561A7FC3BE90434DEF74B867D55287B4AA8B6576D525E3DEF1566FB47693F0AAE3BAF60AB4996D7CEA4DE49D4A0F0D4BA5FAFA963779A68DCBB816E87B5AF1D7B8F649DD46992447974F7B60E91CD4CDBEAACEFA86E7420D9959795DD49A4A6EDBE03559FEA15D27724119DC459F5E94F9B0F8B1DDBEE582B6376CAB601141E9A58C6788B6E7ABA6665589413D6B5AEE720A2B6AA24214B362AF9959C2CA05D1D7114BC649BFD29BA8701D33AD7F7EA9A1A20DF31261D99D1DC9C0C90A376950D325A2BDEFDF5EF93EC1C3A75DBE894AFAE2BE3EB2505BB09CC2E9335AAC83B6523DD43CBE8FABB4EEF4FB5735A8E321F1D5BF4E455C94F74FDCEB989926F65ED4E75CB7CAB5ABFBADE4D343B079DD34396D3F3A8C468D15CEDCEA1AADB2A5F8D43480AE133796862F9DBAAC81CE724D0F3AE7592B5DD7BCA66A02471D6D15441BA2777F724AFDAF4A37155CA574E541933CFE9576D7492A36A0EA2CD60325719DDE0AB9275979C4A6E676EBC71CFDA50FAA40469133F7147D0B11B5446725499993FB3F7B3B62A3BC874A97C44A6B72237ABAFB4ADEA17D9EF7AAFD22FF235519D6C0D553254DF3C991F4F3F4FB6F7396A6FDABE953D91E3BDA9B1EB7FA275A4EE03D5DC7B322A1F51D9CB69FFE7E9115D536574E659F55159D9A87CD56EB7BEB2AEBBF6B9B3B6E167F0D8DF58AA415C57A67D27BD6AFBF58ADF795717765556D5CBEAD40D9456DDB36B95BE9D36ABF255DDF5FBDAE76EA0796A23EA3EA1EC047CAA4ED65E3A419562BB4A70D25903BBA8E3E4AD096B3F51DDEBBA9551AD272B377BA21B955DE74F9115C956EA547DB47ADA7A511DAF2F95BE99CE93B5E1E991F5231B83E92BA0AAED547662AFA93F5758CB4FF6D0E99ED6F15B56C76C5D66FB62563EB2296F5E3B096044B4863A76ACAE99091D7FA2C8EA96537DD3EBE51F7A2B3ECAB613F9FE6A0FDF19EBCC9ED5BD68B2474731AA2D1FC59A91ED2B4FE3012C0F7D62F917AC015B43F71691F7AA45246FAA4726277BD55495AFDEEBB411C9EA2424DD279DD71C9DE2B35FF198F64549483D5B8F5E67CCD645C5A9F978FAE6320D805EAFFB6C7C2DEBD5B3F7ED35657D5749632779C83E67ED76B8EAEE06749E1ED324A86AC75EAB82DDBBD64A2741EDB0CE8992107B7A5536DBB1C72EDE989FFCB9CCC939CD5E59CFDA89E29EAB9EADDF8D23A6E355F9884A8FC95A557DD4AA47D5BF9DFE57319532A7CADAB67DCAF6968CEA272E001D1E9F585E440BCE7EEE24992A9553C8DACDF4CDDAB3C18AFD13B56B7550E4DBEBB60F513FB2FB56072FD0B0FA47739925EA599BCA774577056F8EA61B57342E91DC6C7E2C934D620D56EE0806B3B1EA04B251796F3C6DF96C4D757C4865E34A1F76B9D65A1564783A66BEAA3A4CAB6428BEAABB76BA63A6AE73C5CE231BAAF4B2F313955965ACC170E477A331A9BE7BED453AD9CFDE7E94959B04AA8A4F55ED4069BBB376BDF51EC9546D2FF3412A95FD557BB52D9BD9DC3AAFDD03B6689D5589D7BA2775C9FAE7B5A3ACB7EEDCA8FEAEB3F764ED29BA64754EED4DF03378ECABB01E99712B2750AB9CABBC57CF26575E22E9D5EB38EBAC3D7B4DA1131444A7EE1D798A3ED1B865F2770207AF4D7B2F9B8F6C8C32D9954EF67314E4776CD893BFCA8964AF7F57ED4FF4C974F164796B2D5A5795ED64ED28E53A81DFAA4BB476ECDC4FC6D75B339EFF50ED535D07D513B8754EAAB594AD81CC2F667D88DAB2B22BFBCB64749290E85A642BD9184F7CB13726D95A8A7C51E4233A73ACEA3ABD5FD553F69915AF9F4ADFAE76D6843F93B37E577CC6DA46A64B9538A84F3C2B59B64C66E7AFD71F6D3DF3959EAE511C96E96D7D5B474676DDDEAFECC4EBBBDA96DACF0A756FCAF451E20900CBA3134B2F205EEF45441BA3E2F8B36B5140E6B51F958936FB4EFF2A7D3B723227E105C291CC6C6C2B7DAA8D31D259695B6D272A5BE9BE9B0CDE119C6532BD7E45F39AD9A91AFC661BABD2A67A4FA1B3C1576527F3A6F47562B79D204791579599DA6CA78D53B2B3B1B93B20576C45F5A5131439AADEAF57DFD7591BB47BB0A2CBB4ACD25F4FBF6EFBD37DE60E5F1FDDDBF59B2A8A2D55F372FDAD1CDC676F61A8DFEFA2BB86BD7D55895F553D26FDEEC67100170F7D15F62334DCEC695BF66AC50ED5E25C5FEBB08EC13BF9F6AEAB0BD5F675F729DAFA3D0AB0B37EED8C7356B77AAABA6E404FC08EC9CED864B22299555B6A70A28EFBB5D1ED0451CA38451B6D544695D39DA3EE5CEEAE8D9332A379EA8EDB04CF775C3A9D62F2842FAB6F596DFDA4DE1359A77CCC25EB1D9CD071775FEFF8C768BFEEB6A3EABCDBA7C9D8447EDE8BA594EF1E77241F77F8D4ECFA1DF164D55656E6AEB6014EF2D02796BF5EAFD76F16EF39FCE8346B12FCB9AD371CE209679E9D9C562759F67B74CA6C03BACE0976C5AA73D49E57D65EBFCADB79B67DAF74F46455C9D34A766A1A95AD7459F5B149B1BD5EC9F2FA67DBF2748BDA8EEAABB6ADDA9C1A60796BB99B5877E6DBB65DC95665557AD93A51DBD5497DB6DE145DBDF1CED65D54A7AAAFEA73D5AFCAD86B9D2703CAFDAA8F9E7D7BB69EADB9A8EDCCA757F52A9FABCC6B6473CADC477A77E7A8EB8FB23D47695FB1D76AFF8AEA2ABA57714054CFFEDDD947947156620F75AF516D40793A6951657B32B3F5EAEDBB914E91DE958FE8E83BE963369ECA1EA5EC4300170F4D2C7B01802AEFF5D236452F19B07413D92A40F1122AA5AEA293D276A74E24A7FAAC3857259850038EC9066FCB6401DE748CBA495325AF735FB1ADAA9EB2C97483C25375AB3A557F95203CF30F6AE0AC30EDF71AC075EDDDBBE67D9ED85E756FE2F354B9D53C4636D0F58DAABF52FD9F2D3F6D3793A1F8EE5364C1B8AA879AA4653E60721873D226D5B2D339F07CD44EB2AEB41725645656B49754B142A49362B33B7B9765E2DBEE5857911D7B763DB5C35D9F0C3F93C72696AF97BEC0D5136645A65AFEF27761BF0000200049444154F4223B114C77DA9A9C8E5A7692EB3BFB37D940153AC1FAAACB491D4E706A2C4E967DD7D8747C849A2474D80D4A94FBD3838A8ABBE7E829EBC3521D1CDC9D7074CB9FD8B326767A577B13AA3198EE459E3F8F12D3EE5E61399154AEDF4FF5F36EFBDA29ABC878AA9F51397500D36D0B40E5A1BFB1FC3A789BCAAF5FFD57D24EB4ABB06E329E23AA1CC9D5B7EC44FF3BB3EB68BBE3A5967FC73C28F65161EDE71DBCD35695F5F32E5DEEE0097A5BFFB3FB34AFC3770DB4EE9A5765BD67631AEDAF77E1E9EAAD592FA07FC2DA9892CDD367F44BDD6BD4BD64DA8777EEBF9E5FEBEC956B39EFF354164097473FB19C30DDC0AC8C6AB3DB795D60E724D373184A30BBF324B77232EBAB3697AC273CA9B3AF0045AF3F4D9E4476F05EBF8988C6307A7DC79659AF9FE88F6A6351DDEA69CF693D5F2F5F5EB46E3C1BC9E44CF439C509DD4EF89ED36BA57A4D4D59133B761AE95395B16D55AFD865324EFBCE688E3C5F9DDD53F7C2A82FAA5E5999CE5A9AC857DAACBE9FD2ADD249D9CF562673F019C965666BCADEE7958FF65DCFD75B3DA2F6B3355FAD01755D2BE31F8D41E51FA3F6BEEB81197C0E5F22B18C1C80FD7EC2D9DBD3C968C1654E2D73685394E46E6DDFABD309BEBABA4E13A728908A36CFCEE140F67754360ABA6C796F23EC24375579755388F45BF5B49F23995910DF251BEF2C41E826F93BEB4CB18D099DB5BAD20D3AD77A59B2ECD58DEE476BC0B3DDEE21DA6E407B7770BB72978FAC0E8C76FB98C9AE0EA3B2FAD91A8DEC59F91EF93D651C2AFB56386D5F768EAB3DD85BB7EBF548DE6ED2A08C51B607647E4249ECD73AEBB5E87E856A2FBB65BAF72771A2C2E958325BCF771FBCC3F7E3A189A56EC15170AE6C7C919CEABAE210AA32CAA69FC95EE528CE6C77D3AC9C4B375852821175DEEE787AB2CAEEE8EFC951EE45E5BB8714CA782A7A4DEC65126847D7BAE351E11D58A8F2AAB299FD554FB5ECBDC887ADF23A6BA6B2132599AB0E5822BA6B5925D3C7FAFDEE93A9A8DC84137E38B2BDC93A98F82AEF7E772E9504B49BE474FD6FE790D2DB8B3BE3AD2630D18176D767A8FA749FC659AEFA51721B25CB4ADBDEB5A9BD2AE54EF8A15D321DA283F7CFD0275B6B249BE0F1D8DF585E0E6C754CEBDF4A62E77D8EDA52CA796D787FD43A13BC4073957B123BE655006DC7FC6EA7A36C92915E761E9484B9A2333E951C4537B5EDACBC2ADB6EF8767D46F5229BC8D667F7A9D62ADB5B5F9EBCC9DC671BAFE7AF26F66FE5789B7AD4C74E82DBD5296A230A0EBB871476BDEEF849CF56D7EB95DD4E39E9EFAA71DEF14BD371DDED9F573FB2EFF5F3893D4E4D86A3BDC2D3C52BE3E95DE9A45ECF745598D850671D2A075E53AA4380EF4866774ABD4C0EC09D3CF489E5AFD7CB796AD939C9F3EA7AA79856CE7A52E4B5B11390470BDE063A6BBDB54CE55CB3A0FBA2EBE027098B721217B5939D705EF7333BE89CC0DA72DE587BF2A21359A5DD69029BCDE1AA7FE7C4DBB3E56AFCAA53664F07653C32DBAEECA973AFBB86145B9DA0DA7BD58EE753A293EE69201AB5A1E8E7E99595E95CCFE83E1DB1EDA94F3B2A1FEF958FAE75F5B0653C9BCADA887455E6CAB6673F4FC6361BD7AA7DB58ED7DE648FF3EA55639CED2B919FE9CC83C79DFEAB3B5FAADCD72B3E24BE88EC74A7BF51AC65DBEAFABB93735DE96DAF45DFBB324FCD2FFC0C1E9A58F69302B5ACB778B3EFBB273CDD04B4B36955ED4D1DD52EDEF8ADBA58A71B8DB79220A90174C7317602B25D073EA93749A6545BE896A90280DDB6AE72D320B08B17104401871DD7CE9339EF7B158474C7F54EDF5505735EB977CD5DA54B7558346DBB736F92BC65B2545D2A2ADBA9FCAD627B13DBC9EE2936D65DA777A0EC1B551C90C9CCEE67095787CA177B735BD589D641C78654BB530F74BCEF4A1B9E2E553BDDB844D5BB92D349CA27EDC0CFE5B1896586B7299F0C9C3F833B4E84AA4D76F789C68E2E3BC1AFA7F7EEC9EE1339994C9D90712A3851B09BDF3BE7AEB3719F4E9CAA80F3893C695D653E6F2DD379AAEEC958EB7CF661D267704A9FD3FB5EB60FA809C84E1B93726BF9D7EB9EB9EE1C2E2AB294EBEAFA9A262F13BB79C7E19652E68EA7BD5D2607524FF343F04C1EFB1BCB08C5F93E3908CB986C42EA75A5DC756D67FC9E701A7C07EFEE57B7BD77E977C24627F51559771CCC547EE689E3BEC3D5A753FD9AD8F11D63BAFB54EFABEE297770DA16D7646F2AFB5DF373773BEF3CDC85DFD88DA526ED3C655F89DA7CE721327C3FBE4C62992DFE3521F23EDFD16EA7DE499D3A7D9CBC9A578DB36DBFDBDE09D600649A70D8F951E626EBFB047543F3C6DE2BAFF453D169675E2B7B9C1C7C28F37267FB9E8CEEB84EDBB46B5DB155650C1479D57AEF72CA8EAEFB137DAA35A2D4897CCFAE4E9E4F52EA9E1A8777A3FADC3BDA7842FF5FAFBD98A0BB4F44F5EE46D9BB263277516299CC5FAAFB72D466F45D9111DDF3E8EC894F5F2FF035F852AFC2AE0B4A3D3D591784974465AF84DA0597BD4EE2C9523EAF6D5ED7D5DFA04465AAEFCA7BF5EAE6D4716E514056FD0EA4EB4027B6915DCBEADB5736B3BE79E31ED553F4F6EA557DCADAF15E2DCFD64FD48EDA5E173558F2E660B2094F13A1C8CFAC9F237BA864AB6D76E47474A8D698679BD198AAF6A494A97CB2E79B231DABF6BDFE7873391923653D47546B5B995F654EA6AF814E6CDFEA968D8FE253D5B98BDA53F55CAFD9BDBD9B2C54AF4E76E6C4FBBCCA8CF62B45A672D85BF9C9489FB5CC8EFD557576E8FA90C97EEADDB3E39E1D7C65F72B3C7FCA534CF0786C62A93AE20BE5B735BBC1432768DF796FBE534F0D184EC852993AACA92CCF81AAC9FF84C8614F0299A89E12789D4CDA3C79A782DA8B2A90BFCAD8CF77CD97A7D7092ADFD5D16D250B50D56426234AC222BCA0B9D3DE1D636EF5C8DABAAB7DB58D77B49FDDAFAE557E6A2711C9DAEE2485553B9EBCEC003892D191AF24BF1DD464BAAAA7B4A1249F8A9C699B99BC2A81B2FEC84BBA9E44D48FE98146F4DD5E3B21FB89E309CFE1A189E55F7628BBD83C47916D68AA6359CB6541EF753F7B3AE57DCF023FA5CDA86E44E6AC22FDADD3D80952957A4AA2316DBFE3109527A951507F225088F489BE477D88D644952C4C1289CAFEA340737210529D6C7BF5264F44323DB3137445AE1A0C56D8C4BBBBF17BFEC41BCF6AFC9440D49353CD7FD75F7B65239D56FFDD251BAB282054DBC9FA128D57F7694CD46E16CC46FB4065D73B3A4DEB654F1DAFBFDF1D0C7F469B15DDC3A315252EB2D7ECE79DB6145F7BCA062F3A4F4C77F757EF50D56BBBD3A7CC9F5607704FB35DF83A3C34B1FCF57A39FF8FE54AF7517C14085B19D1A998ADA326B64A194F8F8EFCECD4380A44779C863AE6D14633955B25009DD3C928E9E996AD0E0CB27BD3E0303A64A9F49F1ECEAC6523FBA992E14C2FDB86522F5AB7593B9E9D78815624B763336B7B53BA63A8AEAFEE5C550994573E0B64549D3BBE5D91D769235A1B3BFB8D775D998BC836BD72175EF96A7F88D8491022225D95C32A65DFAFD66AE503A3F1F3500EA0B2FE760F53BC5821EA4FE6D33C3FE8D5CD74C9EE65EB26F30F8A6FE9ECF5959EDD3872726F2D33D5391ACFCC1EA2F6AB58213BE0EAC6DEF0F3786862593B79AF8CB2D9A801E90947D3A1BBE19F5AD89324A32B3BBBD66D4BD1F72EC757053E5EF9CEBD68F355832485693D2BE3AE83899DC05169377A9A319559B577A1048D4AF2A0CAB0D74EFA0AFBB92A3B29B7ABAF970C9F6C231A53756F39950047F727FD5582FFB5AC127C2A72ED9829639BD1D93BA3B9C8DAAFF6CA2A61896CC44BF4BA7BE8D42F4672559F34DDC75FAF3C26EB24A0EABADA8D41262836AEFAE94AFF13BE2E92B1BB47C1CFE0B189E54AD78895139977EAF324764FDC2AEE1EFB4BFE1D8987C2579EFB3B38391E77257853EEE85B55E68EA79C4F194F8513C97576ED8E838B13871C4FC41BAB2A8951136B8B4DF6BCEB0AD343941381F72EEADED6E1D401CD9D9C3868CC643D3119F20E11DEDDF6BBEBC2CFE1CBFD7723D902FCF5EBF7E59EBE71ABD8BE5463304139E5DD6DE3B350F4ADCA74ECE944393BDE95FDBFC3DE6DD0D8B199EB7B57C74E79650E9F8C12403DBD0FA7B8E395CB4B6EE7C9DC9D9C3A68BB93E9589DD4EB84FFCECABC2B58F6DACF7CE2D4BF9ED80B4EFADD5D264FF1EC53E528E1CCC64BD9773B647BB7A793D501E0ABF06512CB9528E88ECA668EA32A37D948A34470D7497872EF4832BBED779DAFE2603B3A4DE4A8C95A742DB293EABE42A58F22FBAEC04E0976147DAAB5D7DD5CB3B9EC1CCC44F2BA361BB5D7B50F6F0C948048E1AE80A5E3A34EB4A196E9DAA55A379A23956C8ED732DEFC57ED7BFDABD65BA5A7A26B546E4A66EF27E98C812A4F8D3F6C1D4FCE548F4C96D553B5AB686EEF9EA3AA8D4AA75D9FBDB3DE3B367C72BEAB7B957DBD634EE1FBF0E857617FFDFAFD6B02D6F0BD579CECE74C9E95D9D1C9ABBF13A444BFCB980450952E91FCCEE974D5D775ACBDD759D476B35761321DD4B9EEDCF7EE45F6997DB77526AFC27437476F2ED671F5F4E8E815F5D59BBB6C339EDAFB8E8CCC5F787FABED65FE2AAA3BF151AB5D295436E2E1FDBE66C73F283EAE33CFD9EF7F221BCCFCB83716AABD56F36ED79D572792DF59F7D91ACCE44FDF5EA9FC712467E70972D6EF6C0EED1C677EBC6A77C74F66F7BBFB7A54365AAFDD7E2AE3139589D6A7E2BB4EEC09B6CCAECFE98C8BEA4BAABA99FCF5BE1A9F466594FADD5794E167F1D0C4F263E44CB2DF774C368D2CF8A9E44C12D88E8E8A9C4EDB6BD9DD77FEA380BC131445B2B2321DB93BECCA55F4F77E67B43337CA9C547A659B8EC7A56B16E875D89DC32A81BC9BC97A58A9C6AF934074CB9C5E4BA7C7BC13B02B75BAFA65F26D403691BF4BE463DEB11EB2243ABB7ED5F5FCDF8964E3AEFDE1E229BFA39DE870F2B0D3DE8BF6B1EE3E3739E0FA0C141D761234259EE8C680559D278C2B3C97C7BF0A6B933CEF7DF9130EDC935B6D846B5DEFBBFDDBB6D50DD2A33F196AC0135DB7E39E25EF5DB2FAAAECAA9C773F9A8FA90EAB8C6A9C1499953D557514BBE860EDD40BEC223B89BEDB7BD1F877FB1EDDEB8ECF09DB5674AFDACB7C47E5B3A2B9BA9B1D5B3C5176EDF3A9C4E994CD646DEFF89B5DBA36EA7D56ECBD33F61DB99E5EEBB593FED0E2ED975EFBEA1A57C87C6CB77EA447B68E3BF6E7DDEF1C2EDC89AA7BD5CF1DFB5274E8AC81936D77CB01BC5E8F7D62F9EBF5F1FF2C3972DA1F1FB34DCA7B1A9995EBDE537488647AF23B72BDBE457295A7489133CB12A5E8A9D6D54ED49E370E6B9DAC2F912EEB75EF8042A91FF545210BC4BCA74BAA3D7BE352B569DBF0C6742D330D7676CA566B32B2EBA86E67AD7B36A2E856D9E13B36E46C4D78653D1B50BE5B19D9DAC87C867288A6DAE0B4EF9E8E2B9D04B0F334B09255F986CAC755EDAABE3C3B38CA887CB74277DE157F1CADE56ADD467BA9D24EE65BA33E7AB6A9D86A26C7EB6736FF93EF8A4E13149F63CB757CC15A5EB5E9AA6C36DE8A8FA86C7F674FAE6CD7F31DCA3A01F0786862F9173A8BFE94CCAACC2480EE3A2FE5351E250056E47602AE8A894E6AD948EEBB36BB930EB593BC54F53BE310D5EDE8A1067577329DF3ECDA742C14A2C4D75B9F93606E2D170507D1BC2B41AE2777A2A35AB66B5751792FE1ED3E155193864ED9534F2EBD7A77FB29EF9EEAF7AB83C6137654C9880E452A19763E4F1FC0EDEE095EBD77F9E76A5D29F6DF9D939D03D5BB50E776579F1DFF98ED319D580D20E2F1AFC26654C1C4573E6DF9F8B847D74BAE27FF447BD909E949F95F651E77B8E335C677059D4FA4339EEF7825EB64206965ACEBDBAEF59DA4FCABCDF9EB75EF81C155564DC0A6BC7BEC77DBCBDE82B1416CD64E771D2A4FC34F717A3E76FB7A726F9CF8BF8ECD5436703A317E9AEFF20EEB2EAA7D6AB71F4F1A07F89E7C99C4324B16D77BB65CB640EF0A1E23C7304D146C3DAFBFF65E97CA91676D7689EA9F9A8FC998284F8855392792173BDFD5F8DF91845A5DEE3CBD3C6153995D45E39971AA8F2793D993737CB7BD4CDAE8AC3345BEF7A4407D7A5805A3DE5ED3790DEFB3128048CE1DF677C9DDF14FDEBE7E92682EB2586342C76F4F9F862A639DB5E97D57E44D500F77D4B9E9EA54D9A6B2EF76DBF36445F67D62ED747553BF03643CFE55588FD5E976164D95345D741CFA5A370A62EC26313D59CC02E7C8F99E3C75CE0246FB2A8CEDBBD7E76C1CD67B59FFD6FA6A7FAB71B43A47656CDB511BD9EB5E9EBC4EE2EDB51B8DB72DA3B6B1D279CD2CB2FBAA6EB4BED5B9556DDEB3B1CAB778F3A3262AAB7E8AADD9FE78C1C774DD7B6BB91AFB68BD5576E995AB12BEC88E3CBDB335198DB1BD16F96A0F35A8CDD658B62E547F60E55572A2B6141DD7BA6A90A9EECD27923A558E9D6FEF73543FB3D9CCBF673A2BD7267214D4FD44D5C18E857AA8A3AE37BB3ED7F6BCF5E2CDF1641C3B7B6C6587EA78563A667B6C150F456391ADF948179E7E82C76313CBC851ACF7D52728D986985DEB0480B6DEF55D6D5B09203222871505C7EBFD2CF9DD693F73A6AABE8A435682CD6E30D4D980D44053F97E2268F3E4798175976C23C9E6B363DBDDB55AE9B252254193B957F5EAAC8FCE5CD97B8A1F54F5AACA55BA75DAAEBE4FD798EA83A2EBAACFEFDA45B62EEE18DF4ED0DC6DBB223B18D96D53F1FD9DBAD3B6A272998CEA7A57A749FDD35463AA5E8B129FA87C24EBB43D2BFEA4BBE7BD5E5A72ADEEB11D5FE7B51395F90C7B82AFC9435F85FDE32AB3A754AF976EE8CAA9CAC7477D429B05ACD9759B00676DA93A46722644FD5BDBF0DA7BFA69D53B1C613466BB44633F953D592B9EFD5EB2EC1FA56DCF7E4E8D5745D46EB576A3EF4A7BA7E74A91B9AEE5756E3E2B2888743EA14F669FA7B873DC7665EFAE9D894DEF96EB2642D17E57F99DCE814B85BAE6A6F5A79CEE93E723ABEF764EEEE6DD31C7DDFBADDAC6AE0D02BC93873EB1FCF5BA924B7B7ABCFEED9DDA44787532E7DA5DA86A80AAEAB406E395CC28D95E4FB1D4A7776A82EBE99B0590DE535FFBD993B3D6F1FAE9C9F36465E3E9E95CF525BBA6B4939D745775B37E7AF26CBDB50DAF6E7678A01EAE64FA2936BDD6ABD6B647775ED6B189C8EC306AA3F227DEBA88F48AFA549D907B739E7D5F657AF2ABF518F5D396CDCA293AAEDFBD72517251AD8B6A1EB275DB6D3FB3FBA80D4FB7B55ED66EB51E2A19EA7A8C64A8FBCBDA4667EDDB36BA75159DAA359FED6FD7FDCA5FABFD50F65CAB7FA573267F2709AAFCD4AAE72451EAC66ED5FE69CB29546B5E6D33D3A3F255599DECBE67739DB809E0E2A18965DF495C65771C5FB74C87538EABDB8EDD483AC1D64EBB51FBD1B5EABB9AFC289F2B3A9BF874EE7665297D53DA50DB5482EFAE7E4A9BD3FA93B19C8C57940074F4B1417BD4CE9A6066EB4A3D3C53CB9CB423AFAC92F074EC74FDAC1ED0557E32D3216A47291FDDEF5CB7F7A3E4AFB3EF9DD8AFAA31F70E2C94369471E8CC5F371159DBC8F6D4A8CD77EE2FA7C654694FDD13A26426BB3F891956543FB08B3AB727C6BB23C75B778A3C124A98F0D8C4F2427186AB43AB9EE47C958572979E776E2EF07DE9046ADF85BB135AB57E162879653EC3773C516E24BBDB5E27213B29F39DE53F839D832355F61DE5ADDE4F5B179F35F73B639EADD353FDF90A6B42E18E3D06E0240FFD8DE53E9357297E32381BA8F8F8B83F98BA83F5D5AAE96B564FE12B8DFB5786717E0676DDDEB17699EB3FF24E1FF98EF1678E73BEF29E08CFE34B2696D522B04F30773724A53D5BA6FABDD33BB9ABCD776CFA3BD8DFA659BB7822EB58DA3FEB7D5BE7B3749BCAC8E42972A76DEFD43F41A78F51B99D04FFA976FF44D671BE0B6F3EBEF21C9DF20F993FB87B7C4ECA57C6E1A9F33DF1CB77EBF36E794FEAFF4A150774F6BAEFE683E0F379FCABB0AF57FF3710F615D82CC98BCAD9DF0C44015E56269267DFF7F75ED9F5F4F47E7310D5AD74519804F8D1EF26ACCED7BDEA7357E7A8AD2CB9B4B2A3EBB6FEAAEB3B4E44958DC41B634F4E3517519BB66C24CBDE8BF4F5745BEBEED841A4B36DABFAFDC964EDACB2A2BE54F2ABF537B55BB53F13BB8EEC25BAD7D5A1D2BDF28DEA3595499F3C3D6D3DBB2E2379D9789F20DB7BA2F6BBB22D76ADD8F9540365754FEDE8A6DCB37ADBEBEBFD2C26B072BC78A21A8F537BBDE7974FEF794A2C33D9B3ADFC6C1F8AFA962597D9BA50E2CBACCFDE5A50634EFBB95A473B6B1960E5A189E587E4E8222762AF5F8BC893A9047B990E114A623AD1274B904ED291192571D9E74EB9F59A1A1476F4AF828B4C96320F3BBF3D8964AB763B29A78C9D1714A9B2A2C0D1D6A9D68722DBA3B3397B74DACDD6C4AE4F88CA9CB07DAF5C746074A28DCA1E3A6B5C994FA58C921C4EEE4DF4EACEA9174466816F9630647B4F57978BEA002C4A38AD4E5599CC4ED518A3AAAB9489E4EF5EEBC649D93A5B896CC58BA3B258CCDEEF8CB99AF847BECFEB833A27131F3A8D2F3B7E6427D6DB891923BFFF8E0375F87A3C34B1FCF5FAF8F8489DE0C40158AAD3A0DD45933D09E9388CC8C15627505140E195F3F4C8023C6F33E906F595CE938DD993339511DDAF36B44A46359F1EDD2759EA187A6D64FAAE7A64F397C9B79FBD72D3A4B1B289A87D754CD5642693D1BDA7D009BAD5E0CDCAEA0626D593A7EBF32411F4E47B4C02FE0E953FEBCAB2A8F69C8DA91AF8567B6AF7E9D82AAF5A6FA7E6A44A822A9403E1A8CDABBEA78BA79BAD5325AB1DFF911DFC797A5BDD95EB769CAA445025D3FBF48196955DC550277D47A58BD7DE3426EDC6B5D1DA7957FFE16BF3D0C4F2374E9E8664C1F15D6D6672D553F9A87C75EFBAA6247FAAB350120365FC2A3991EE938D422DA324A193F6A6A7989D76A224FFFABBBB3975E656BDD6253A18C802377BEDD42698F5513DB9AD12ACEB7A148477D67F76A0B5DEB73692ADB72C813AB1E63DB9951CEF7B160476F48ED66D9504543EA0EB6F543BEBACB9CEDAC8F60FD58FAC416A960075500F523A8970265B3D88C964296BA0D26FE2073A096A47A72871EED4F5EE777DCB5407F5BE3A6FEABAB8CA7A3EF5AE78B42B275BA777C5C8F07D786B62F9EBD76F4F22CFC9EB957FF282389D442BF7BD8D3272704F65BAE17B72EEA81305EB4A60744A8FAF3297963B8380AC5EB481EE24D1DE61C93B12F5AE7ED9B51363DB6963A59B8845B23A7A7B7E254B62149D267A74CB4F9396959D834EA5ED55FE6ED09A1DA454897E47B6B786EFE0B4FCD33E2592D13934A96C6B1A83648702773359A34FDE9BEF4A72E1FBF3B6C4F24A2A4F2797EA4915FC91C8B93DD9814401C8E494F333B86B938773BC2B10F9097CD689FB297EAA1D9C4C2ABD44019FF77DB92369F5E83C9DC4DE00DEC75BFEBB913599BC92CB5D70143F9BEC551A00801DA2032082D519279EA29E84B90300B8872FF9FF585E644FADE07B130578040C0070822B91B40925BC8FEE3FA4F3D5C1CE7E1EEB6F90AB7F7009E02BF0E87FBC6725FA07483AFF104D54C77BF52D73F0A7DFDD57DB5ABF573226FF6881D7F6A48FD5EF36ABDF76564F23ABDFABD9D7AE14B9D93F9A72E23790D57C9C6AAB929DB515FDD6A9A39337CF1D39D918ECFE5E2A6BD39317D9A96DFFE4015765C7593D3BBF16CF6F55BA57BE69F2538448A6628FCA3FD4E2F919E55A86D76EF58FD0A8F277C6AEFAC73F325F18FD1EADD273C74F55F65C5DF3F6FBCED84E7C53C7F6ECF7CE7A5AF552C7572D5BF9FB0E93F5B3968BD6A9527722FFBA37C5CAF4DAA97C4D87BB92CBAEAD647B1140C643134BEDFFB1FC5D8D2241F0EAD8FBD986A0E8E0E9A2DC9BB615E93B4D04BCF626CECDDBFCED75A54C247312804EE466F56CBB19554096F57D12B867B2B3B6A63614B5D591738D4D567E77A39D1C4629654F06001DDDBCF5AFACDBCEFCECDEDFA933D5D3FBAC5EEB50ED17D3759095AFAE2BF6D929DBD14141B5CB2A5954F692AA8D891D2AF7A324536DB3BB7F77CB45BE36DB47335F33D563775C561D4FADE9AA5DC59F7475E81CF4EFD09DA36A5D91683E97133F37DCE1A189E5EFFF1FCB28F1F1AEABD7224E2E964CD6A976BA72BC0D25B2C1A7398E2AB95ECBBC4BF76E3B53BD4EF4275A334ABDB57E95EC4C79EA9C65BCC3DEB236DEB946DFBDB63E932A88F202EE77ED1D1527F499FA8A5D9476D5A76377949DD0792BE05D6B2C926FAFAFDF3FCB1EBCB6D543884ACE6731595F4FD11D9E4FF60FA4BE23E97C4B62B9FE6BB09D7F15F61D89D94FE33B8C5BB6F941CC4E525B3D09FBA973F08E7E3F656C9FA2C73BF8ACC3C8139CD0E7B3FAF41907AEEFEE2B718D8E9A004FE57C164FD307E0246F7B6279C77F35023F0FCCE7F3610EE0A7C31A000000F8236F7D1596A412E06BC2D205000000808C2FFDDF8D000000000000C0E74362090000000000005B9058020000000000C0162496000000000000B00589257C19F8076400000000009E0989250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058020000000000C0162496000000000000B00589250000000000006C4162090000000000005B9058C2A7F2EBD7AFCF5601DE00F3FC33609E7F06CCF3CF81B9FE1930CF700A124B000000000000D8E296C4323AF9E044040000000000E0FB713CB1CC92CA8F8F0F924B0000000000806FC6D1C4F24A1EB3EB2497000000000000DF8BA389A59754020000000000C0F7E6AF2695BC278E24950000000000003F935162F98E2492D7657F0ECCF5CF8079FE1930CF3F03E6F9E7C05CFF0C986738C128B1BC1B9E7E02951070B5000004E34944415400000000007C1DDEF2FF58AEFF604FF40FFC000000000000C0D7E4E813CBF531FAF5D9FE6BB02495000000000000DF8BA38965953492540200000000007C3FDEF22A2C0000000000007C5F482C010000000000600B124B000000000000D8E2718925FF8FCED7E6D7AF5F7FF863EF47F53AD7E1F3383587CCF9B3F1D62E6BFB7B11CDE5752FAA73E23ABC176FAE59D3DF8B77CD27F3FCB944F3FC94F5FCA8C4F2FA576331DAAFCDC7C7C7EFFE5C44F3DBBD0E9F47E6804ECC2D73FE0CA2F1676D7F1FAE39B8FED88483F5FC7DC8E69A35FD7D88E6F2F5624D7F27B2797EC27A7E4C62B9FE572418EDF7239ADFEE75F83CA2FF2EE8D4DC32E7CF209A67A53CF3FCF5613D0373FDF559E78435FD7D51F6EB77CFF363124BF85E788FE1E16BC37F17F433503629D6F6D787F5FC73604DFF2CBA8783F035C90EFB3F733D9358C271D6D76ED8AC00BE0FACEDEF0981E8CFC1CE356BFA7BB13E7582EF4B34CF4F58CF7FF529ADC2B785E004E07BC2DAFE9E9054FE1CEC5C33EFDF0FEFD000BE1FD1E1D013E089250000C00F84C0F3E7C05C03C03B784C6219FD7014BE16D9BF2679E207E3F03CEEF8C70098F3E7C1DAFE5E4463CF7AFE7E64BFC5F260AEBF2677CF27F3FC0CA2797ECA7A7ED4ABB0576730D6AF8B7DAFDBBE76E3CD6FF73A7C0EEBBC5E9FAD23DA9D5BE6FCF389E699B5FDFDB08108EBF9FBE2CD356BFA7BF18EF9649E3F9F689E9FB29E1F9558BE5EBCF3FF1DC8E630BAD7BD0EEFA79A8B5373CB9C7F2E93F59BDD639E9F09EBF9E7C09AFE39BC633E99E7CF673237EF9AE7C7BC0A0B0000000000005F13124B000000000000D882C412000000000000B620B1040000000000802D482C010000000000600B124B000000000000D882C412000000000000B620B1040000000000802D482C010000000000600B124B000000000000D882C412000000000000B620B1040000000000802DFEAA5BE1D7AF5F7FB8F6F1F1F18732EBB5B5CE753D93E395577552CA77B85BCF53E3090000000000F059B4134B2FE9C9F092A28F8F8F504E54BE2BFF1477EB796A3C0100000000003E8BAD5761BDA4A64A8C543917DDA4E9CE24EBEE24EED478020000000000BC937162192541DDC4EBAB3C71FB0C3DBFCAD80000000000C0CFA6FD2AECEB15BF0EEAF1F1F1113E75CB5E2B5DEBABFAA8E5BB787ADA7EED8C8395DD9143E20900000000009FCD28B1F47EE3A7BECE1A25453669F3AE77F43989D2DF899E19913C7E630900000000004FE3E87F37F2EBD7AFDF3DDD038D2C89643C0100000000E0E9B413CB28C1B9FE8553FBD4B17A0DF654FB59F99DA4EC949E5D39D1780200000000003C8DD17F37B2F3DBC2EA378A99FCE96F1D7792B277EAB9A30F0000000000C067B1FD1B4BE57EF7BF12C9AE7BAF8D46E54FFDFEF06E3D4F8D270000000000C067E026964FFF3D5F47BFCFECCBD3C7110000000000E004BF4B2CFFFA6FFEF6F5EFFEEB7FFF2C5D000000000000E030FFE37FFFFDEBCFFFF3BFBDFECB7FF8B7AFBFFDDBBF7DFDCDBFFE9BD7BFF9F7FFF9F5EFFEE37F0AEFFFAB7FF9AF5A6DFCE189E5FFF8DF7F7F467B000000000000F874FEFCF7FFEBF5E73FFFD3EB1FFFCF3FBEFEF40F7FFAEDDA9FFFE9F57AFDBFA4D2BDFFE7561B7FB50A030000000000806FC83FFEE9F5777FF777AF7FF8D33FBCFEC53FFF17AFD73FFEE9F779A0B9FFD7FFECAF5BE27FBD5E2FFE25180000000000001873FDEB32249700000000000030E2FF02B08C8BB0E05DA1F40000000049454E44AE426082>|png>|918px|457px||>|EEG
  recordings>

  A smaller time window of the recordings is shown in Fig. 2.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      hold on;

      for j=1:n

      \ \ plot(pdata(1001:1512,j));

      end;

      hold off;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      cd /home/student/courses/MATH547/homework; print -mono -deps
      eegwin.eps;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D494844520000031B000001B90806000000E69529050000000473424954080808087C0864880000001974455874536F66747761726500676E6F6D652D73637265656E73686F74EF03BF3E0000200049444154789CEDBD7DCCAF5B5AD7B79E616B9E23A33DDB4E0CD4583BB49202D25AA695E25012C7B4E52524144A9382FD03DB6A7DC1C402265A6B2A084929B4D2A07F580163756A51461B5E2CD019D22133475BE69C543A1C0AC89E8669F6B18CEC4738B87F75B6ECFEB1F7BDF77AD65ED7B5AEEB5A6BDD2FBFDFE7934C663FF76FAD6BAD7BBD5EDFF5729FAB94D2E30400000000003096ABAB94D2E30FFCEC2FA4D7DFB849F73FF630DD9C4E5B67EAA278F5E76ED22B3FFC03E9FBFFE817A697DFFA72BABEBE4E2F5DBFB475B60000000000423C78F3417AC767BD23A594D29D94527AFD8D9BF4575EB9F7E4D7470F53BA83B3BB16AFFCED0FA6747A901EDC3C48D7D7D7E9FACE754A77D293FFAF707A841804000000807D727DE73AA59BE77FDF4929A5FB1F7BF04464A4944E29A5EBA7FF869538DDA4D3C3534A8F527AE9CE4BCF45474A4F6BE8298F52BA4E7511722B1C00000000C0469CB2935277524AE9E697523A3D7AFAE3A3945EFBE177A7F4E889F39BD2F2FF0A77524AE93AFD2BFFCEEF9991DFF3E6E3A7944EA774F3B19BF4E0D73ED9DDB89BEEA6D39D53BABE739DAEAF9F8B8BD3E9F4646723AF8FA7BB20D7D7D7080E000000808DF9C66FF8C6F4F0F4F099CFD63A95B29C6AF996FFF25BCE227E7A54111B0F1F9D9E8B8DD313E7F7FBFFD2B7A7573FFA20DDFBF953F31EC7EB1F7D905EFB6BDFFACCC6085EFD935F94524AE9B3BEFEFBC719DD29A7371FA4AFFDAE1F48E9AD2FA774FD724AD72FA574E73A7DE08F7FE93311F18E6F78CF1391F1F1D31321B8B0847BEB93BB1ED2F12B0000000098CF83371FA4EFF8F3DF610EFFEA6BAFA66FFCFA6F4CA7374F6713FFE19B0F9EFD7E27A527BB19A7A7BB180F4E29A547A7F4EA471EA4EF7CE5F5945E38B6737AE1D9BD577EE0C9512087D8F889AFFFA2EAF34FFF93B7C5C54801339AF21DCABC5B78FB677E4EFA9C2FFEC25BCF5EF9C88374EF47DF93EE7DF45EBAFBF2DD2782E3E129BDF79BFF607AEDA30FD2BD8F9DD2835F3AA5573E723FDDFBD11F48F73E7A2F7DF2DB3E399DDE7A7A72C19C3B37000000009BB0ACEADFBB77CF14FE3D7FE33DE9C1CD8367F10E1FFFCD53BA7958EC6C9C1E3DDFDD58B64A5EBF7F931E2EC7A8721EA594EE943B1D4F76431E062E2FBFFD8F7F8FEBF99E58F278EF9BBE2CA59442EF9F524AEFFB99FBB7FE7EE3C75F49E9CD9B74F3F3374F762A1EA5944EA7F4C18F3C487FF6475EAF87BBBE4E77EFDC4DD777AED3C3C49D1B000000802D787684C8B1607E3A9DD2C3E5FEF4CEE27FCAA77E4AFAD99FFAD95BE1CB67B7E23F3A3DDBE548E999D8787A8CEAD113D1707AF430BDF1E6299D4EE9F93D80474FFFFD28CB7CFEDBA3D82E8414E7FE373F71E03FF98F3E71E87FD527BC25FDE75FF499E9CB3FEB9F4D2FFF9A5F7D2BEC12A68C537BB6FC5DC6BFBA4AE92B7EFBDBD37FF8CE7F3EFDE65FFF89E9FE3F7C98BEE3037F2FFDC557FE5E7A6CFC2F918477618A3B184F8C3D480FDE7C90AE7FE9FAE999B987E9F5FBD9EED1A3DBE15E7EF3E574BA3EA5D3F5E9C54BE4DCE5000000005895C5F9FE8C4FFF8CEAEF1FFE890F3FFBF7A97265E1A1E3834D5AFC9EF497B89FF2A99FF22C7CEDD9ADF8B53B1BA7E5E122381EA55B1743F2C8B778E6F89E524A0FAB196DD18AB3FCFE07FFADDF9AFEE3CFFD17D277FCE84FA53FFDFDFF47FA935FFCDBD257BDF3B7BC60E3F1E3BACDF2D9BBFFCECFA63FF69E1F4BBFF8F0E329A5947ECFE7FE96F42D5FF659E97FFCDFEFA5CFFF6F7E307DF5BB3E3D7DD397FCB674FAFFFE71FAAE0FFCF4907731F14CB89DD2CDCDCD937B18A7EB941E9DD21B37A7172BF369B89BB7DE3C1315CF3E9FBB7CD56AC747D100000000CE8A8F3FFDFF96FF25F9D5D6F892BD81E97FF8EF7E387DC6BFF4445C94A2E5C37FF7C3559D707A744A0F4FCF85D2F335EF45583C3D3AF56CA7C343E018D183FFF62B6FFD7DF70F1417529EDAFC8ACF7E7B4A29A53FF383AFA59B5F7C33FD99FFF9D56762234FF7571E3FAEE7A378F6F57FF3EFA45FFCA57FF4ECEFDFF7799F9A524AE99BBFEFC7D22FFED22FA56FFFA1D7D2D7FEDBBF35FDBECFFBD4F45DFFEB8FDB5E66D87F03E3614A8F4EE95BFFC60753BABE9BD29DEB94D2297DF027EFA5D3BD575F08FDADDFFB5A4AD7F752BABE7E12F6CE4BE9FBFFD32F7C5297D7899D0D000000809559AE267CE8D50FA9BF5BFFB6A6678D6F4DFF43AF7EE8D97FA06FE143AF7E488DFFC2CEC6331E3D3942F5EC4894F52517911270B6EFFEDE3FDBB0FDC4E66F7CF913534A29FDFD7FF00B29FD935F496FFC838FBF1046FCBBF2ECEFFF835FB8F5F76F7EDBAF4D29A5F4A13FF5E5B79E7FCA6FF8758E72182336AE7FD3A7A7CFF99DB72F8DBFF6331F49373FFA579EA7F1F458DBF77DF7F7A4577EE67E7AFDFE4D7AF0E6C3F4DACF7C249D5EFF60BAFFF3F7D3CB775F4E77D35D3E8B0B000000B0369E3B1355DF755CFC0FFD6FB705CF3B7EFB3B6EFDEE4EBFF84D131E776EFFF0302D17C24FF9DD8C4745C8F2EF9439C05E8C5B3CFFCF8337D3A7FC867F2ABDEDD7BC94EE3FF8E5F4492FFF9A17C2FCCAE3C7E913DE7295DEF24FAED2AF3C7E9C3EF9EE27CAE9147FBF71F3CBE937BFEDD7A54FFF9ABF98EE3FF8E5C08B54D2E888FFDAFFF9915B3F9D7EEED5941E9DD2EFF9373EEDD917A7FEEC0FBF9A7EE427EFA7EFF85BAF3C0F77EFD5944E37E9E66337E9FA575DA7D39DD3932355D27F0C100000000086B138DADE9D89FC1852FEFFEFFC1DEFAC06FFC0073F608A2FE5E585678EF4DFF1DBDF21A65FF2C2CE467A784A299D9E7E9D2ABB98A239EBCF32E7FF0A522BCEF2FB5F7AFF8FA7FFE2DFFDDCF4FBFFCDCF4CDFF8373F98BEFA0BFEE517C2FCD4FD5F48FFE23FF34FA72FF8ACDF94FE971FFF48FA635FF2AF8AE9947F7FFB0FFE58FAAFBEF25DE94F7DF9BF9EFEC87FFFDEF48F3FFE4FD2EFF8D4DF98FED0E7BF237DF137FFF521EFD2CDA327F731EEBEF5E96EC5F54BE9D59FBB79F1DDDE7C981EDC3C78B6A3B1FC4702534AB7FE3B1C5A27E0BFD701000000D0817311FA85BBBFCE3B175AFCAA6031C47FE7E73D8FF781F73F1117CBB377FE8E773E7B568DFF94FAE11AF7B1A8270225748CA815E7E9EFFFF5FFF4FEF4B6B7FEEAF4BB3FF733D3577FFE3BAA617EFF9FFFDEF46D5FF505E9BBFE932F4ABFEA13DEA2A753FCFDEDDFFFC1F4FF3EF887E90F7FC167A79FF896FF28A594D22BFFD747D3B77DDF07C53C3E7CF79FB8FDF75FFADA94524A2F7DC59FD6DF29C2A35AF95EA7376E1EDC7EFE34DCCDCDCDF3E3534F77A2AEEF5CA787776E0BC89AE058C2BD74E7258E5F0100000078287608AC719E852FE2BFF77DEFAD46B9657F52FCF7BEEFBDE977BDEB77A5F7BEEFBDB7EC95CFB4FFD2F86D57F2E17387F6D631AA16E5E7580DBCF4EFE90E79F9FBC71FFD4AFABAEFFCA1F475DFF94329A5945EFEC4EB74FFBBBE36FDFD9B379FA5FBB77FE2A3E9B3BFEEBF0BA7FBDDEFFF70FAEEF77F58FCDD636B167FEE475E4BD7D7779FFD7DEF275F4FE9FEEB45A853FAD6BFF56ABABE7E29BB347E9DFEC257BD2B5DBFF464C7E2777FE7FBB28F02648D230FC7E5720000008018CE9D8DFC0B4E7B8AFFDE1F7AEF0BB66ACF96F82F5DDFFE8F4BBFE84A3E8D7873EFB5943EF29A238BD7297D7CD4D798EAFCB93FF025E91BFEEA7BD33F3A7D3CFD675FF6640BE7AF7FE0C7A7A7BB0BDEF6F6F4499FF3A5B71EDDFCF46BE9F4DA0FBCB0E3F197DFFD3DE97DAFDF4FAF7DF441BAFFE629DDFCF46B297DF4F574FF8DFBE9A5B7BEF4E488D4E994FEC237FD0931DCDD97EFA6EBB75E3F132700000000D0E6E1A387E9D5D75E4DEFFBD1F7D923DD797E0CE9E8F175B191DF4AFFB1F7A4F4E8E1F3D5EF4602698533FE1F7CFDFF4EEFFBA6DF9B3EE9D7FFDAF4733F7F93FEF45F7D5FFA96F7BC7F7ABA7BE1E6A70BF1F7C6EB293D3AA52FFDD7DEFEECBFADF1EE57EEA5F7BD7E3FBDFB7B7FE056B8D39B0FD2CDCD4D4A293D394A753A35C3DD4D771300000000F8F8437FF80FA5D39BA75BFF656D8997EEBC94AEAFAFD3E9E1F3C5E3A3C67FF9EECB2FDCFB2D76369E5E22FEADEF528D8A0CFBEF4CD4F9CB3FFC4AFACB3FFC4A3BE0A5F0F408D4F59DEB27BB104F8F4BBDF291FBC53D8E94D2E9263DB879F0ECEE467A7452C35D5F5F3F51A81CA30200000030F395FFFE57B603555876068E1CFFEECB2F2E54BFB8B38173792CB2FF5AF84B775E4AD77752BA7F53177DA7D3D3FF02F9754AE9D1A919EEE1E921ED01000000004CBCFCF2CBE9F4E66DFFF24557F28D7B6BE50746F0E8F45C44DC797AB1FFA75F4BE963F7AAE11EDC3C48D777AED3E9F4B019EEF4E894AEDFE4CE0600000000B4B9FBF2DD74FF74FFD6B317C4C6E9C7DEB35A86600CEFF96BB7BF4675FAC91FA9867BF7FF100B0700000000D0E26BFEC8D7BCF0AC7A48E6F1E3C7D333030000000000E7C1D5D555F5F95BAA4F0100000000003A416C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014EE6C99B8F49F350700000000807578FCF8F134DB9B8A8D94E6BE1CEC87ABAB2BEAFA82A0BE2F07EAFA72A0AE2F07EAFAB298BDF8CF312A0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262035681AF5A5C16D4F7E5405D5F0ED4F5E5405DC348101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053406C0000000000C014BAC5C6D5D595E91900000000005C16C37736AEAEAED2E3C78F111C0000000000174E97D82805C52234524A080E00000000800B272C36726101000000000050C20571000000000098C29D48A491BB1AD2512B764D0000000000FAD9F26A43486CA4743BD33DE203510100000000300FCDDF9E2D4442C7A81E3F7EFCEC7FCBDFCBFF2F19E64E0700000000C06533FCCEC62238101A0000000000974DB7D8A8890A84060000000000F0352A0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D800000000008029DCD93A03007BE4EAEAC5678F1FAF9F0F0000008023C3CE0634A939DEADB05757BE787B21CFF7E3C7B7FF17799FDE7218558E47AC8B4B63A96BEA6A2C799952B65083BEE787B2020F87DFD9C81BFCB2F27C75357E153A7740AD9D6C097BE415F125FFB572AE85CDFFBF5656D6B2B0A4A7C5D1D0F2AFA5552B87FC5D6BF9C8DB642D0FB5E7ADF8ADF29076658EDE16AD44DA8E64C713DFDBD6B53611A9AB685FD3ECACD55E3C7DC66B7369FBF9F87409FDC04B6D2CEBB1B54619F7B6D5F29D7BFBDECCF96D4F947EC111DF01D66573B1E199505A475B5A82C03B10949DC93310E561257B33911C6F8BD3591B08A572AED997FEB6949FD5E9185DBFD6F8D6F6A695431E57B3A9A52B954D2D6EFE5CAB3BA99C3DE5D4127C3DCEBB257ECD79F0A42D894929BEF6BBD6D62D7DC83356D4D21AE10059DE5F6A2739B5B627A52709F888E096C62F4BD98C103BBDE3FC5A4E695E7F91394A1BA37BC7E5FC9936D646C57E1ECEDBF724416B6957917E9E872F89D457AFA88A8EB370796C2E362CCEA8B563D4068D9A1D2DFDE5592D2F9E4ED41AC034A7CCEB084AE16ABF95CE41FE9B75F53B7F1FCFA4A239C8529EA5F7E819D0CAFCF7DA29FFED8D6B795E86890EEE52DDD5EC48F5EBADBFDC9ED407ADA246AAB39648F3085DA9EF4A22AF25EECA32B4B63B292DAB08D3E25BDFA326024A3BAD71C05376D67EA1A565B525B5472D4DAF388908242DAF1E87D49A7E6E579A0F2D696979F73AED925FA0B535EF5C587B9E876FF92352FA5A5DD59E6B6959E25B7E93F2DE1268560157F325007236171B39E5EA40FE7C94FD92D6C03112AB7D8B33D15AE5B1A4AF3921163C42C39AC735E28FB6B30523CAD032E1D67E8FA62DF53FAFD0ED69FB5EB1528BDF4AAB96DF32EF1E7A27F29A73ED15AB9AE32DB51329EE887E573A6811F11D29474D5078C5DA82A54D59E6C6D6782E092B4F9BB70ADD5ADEADFD4E6B2FADB6568B97979B67CEAA89004F5DE5F4889BDC86255D4FFC9AA82BDFA167BC0258D895D84869FD86BAC78EE119487BF23FC209D863F9818D3DD45D44E0B756382D71B57CB4E27B19B988D1DBDF47AD3AEEA9EDACB9925A73CEA2624DFACD63C3B34BD4B348E0DD59916C4485610F3D62BD26F2ACF51D8D2389448F8DC82247EFA2068046486C5C5566EBC759CBBCBABABAF53700C0487AC4F6250F4DE7F8EE5BBDD3C8859EA88DB59CC2A3E557CBC31A717AD3EA39DD510A8EDEDD54801184C446292472F1B1080D04071C15E9B8414AFE4138BA159DC7A71B5D06B38E8F5E3ABD7D70CF1CED9DF69ADFBD8DB3A37640F7F44E70D9741FA3CA4545FEEFB504476D22597BE0F09E853D1A1E27483AD3BC96932E6D21E7F989A659BB5F20B5BF323DA90C6B5BDDDA253E4B796867ACCFA54D5AE81D07BCF1A347BBA4361449BFE4C8F5DDDB76CB7E70CEA2036244E689969D4BA19C0B0134BAC4C6DABB17D2645ABB38376AE26D39AF926DE932DF168352ED0C682B7D6DE0D52EFB4961BD0EFF12AE55D69AB35E0E8435B150DAD0C8C34BE948B66AE552BEA714BFCC7FF9ACF6779ECFFC6F8BA0AABD6B8B5A7996F95F835EA156DAB1B68DC83969CDB6F70884A74FB6F223E115BA1E2CFDDC5397653E7A16A32EC5911CD96F4738A0DE792AC77BEC28FF7F6FBF5BE27A046D749CDD9ADA625BAF5083CB202C3696A353BD82C33AC0699DD13A9178D2AAA5ED1984A4897FF96DE6EAB32672F2BFB53C6AF9A8C56F0DFAD240DE7A778F88AB391692D3DE33404AE978260CE93DB5F852795BDF459B4CB5495313F939521EAC6DAF960FE91DA4B852B95AFBAEF60EAD3E5DC6B1F4B3567D5BF2AD89044D0097365ABF5BC756A9EECA7C95713D6DDF5297ADF1AB95A6340F78E9112B6B397135E7B747A846C657CD86E4D84AB6AD7D3D2AF42D8B42D131AEC5880595489B2C05461EBF47CCC36510161BE32E84E7BDEDF1D34E7055D88F3B71DA6FDAE0A50D2651A481A9FCDB23985AE948CFB481CE2AA6CAF2F3C48B4EC09203D72B1646B0E600DBFBFEDA4AB1C5B6A7EE6B6DBBD58E35273DE25C9442534A330F5BC6979C048B6090F2D3A2565752388B0D4DF858EC5BCBC023EA2CE1CBB0D218621D572CE55A9B2F6A0E5719C6935F4BDCF2F788E35EB3A7D9B50ADD25BE36E77804B3344F95E5DE2A0BAD7D5ADBBB946F6FDA655C69AC8D9475FEB77761C23236D5CA302AF2617B6A1F775A8BCD3F7DFBE265F3949E8B8E25CCACB4F5416E0DB4C1B57C363A6F92F8F2C48F888691A20D628CAA8368BD4704C312AF67BC941C45AF683A5A7B971C5E6FFF8DC693EC44D19C47EFBB78D3941C5FCD6ECBA9F4B63F296CAFA0299FD71C586F796BFDC6F3DEF9BF2D75573AE1924D2D7EF9FE5E315BFBB786A56ECB74CA7F4B82CCBA481759448463A06D0ACC1622E14FDFD6329D5F0A8FEE76ACDDB0F7D8917A45C0A87467C5391A3DE5CF806D27E22446C56EE908AC291EB64272908FDEEFB79A33226D278F57FBB727BE47EC587E6BA515B551DAEAC94F34DD85E8825AE4FD25B1D6CA67B928E04DBBECE7D1F6B5A73E0EC727FCE9DB5C05E5A2E2123F7B3BDBA1BCA0A2DC05B5093152C7B91D06EF39F43A3E5ABD6C556733C793C88E14C8CC6C7F9674D768A323ED6FDDEED616D6D1F47A77177AFBF9D6F504E7C7903B1B9EDF46A1AD90AC31006B0E692D4F165B7BEDE09E814F2A97A8931E5D65917604A35BFAD20A572D4E6D254A5A1D1BB173A9BD87B73E46B4C59E5D835E3C2B829676DCD3F6A26D7E891B2DBB358EA0AEC188E31C9E63436B33221F7B7997A3D3B3E332F38833F50BE7C2E677363C1389D4A96B67322D4E9CC5E1F23801529EA4E30B35BB5ABE22449D18CDA996E24B0EBC672BB8763E588BDFAAABD2766DB7C1730EB7B4674D5B8A6B4957A3769C425A35CDDFBF5557D17A6BB5F95ED16815BA523BF2A4590AC29E3ED38AA7095C6FBEF3347B857A8FD0EA119A79DB2985BEA73CA43120E24CE2F8D9596B91A1B5A8648D5F1B27AD3E496D41C93A561CA94D79E63B8092CDC5867522D13A7FC4A9909CB1324FD141487398B5F7F00E74B5F85A3E34D1A33986E5BF6B038F26C0A4957F29BC145F73AE2362A167D097CAC71BB707C9A9B488E1FCFFF3DF6B366B82BEB42DE5C133195BDBAF14AFD5B7224E80A55FD67E2BC54A69B7578C58C258C59E54EE56A7A226B46A6383F4CE523AD2F8E1117EA55D6BBF2F6D441DE851026C363D63616B2E8ACC679ABD96DD565FD5E24B69D56CD4C63BCB58514B27B2A850D223B25AE1B53E8CF880169B8B8D94DA9DB4D5F16BB62CE14A87CBE3AC79A84D98AD7C453A746B226BBD9F67226C390F96B81124C7AF572C1C9D88D8B138E81EFB1EB1175991949C006B1B6C397B96050D49AC5BFB9D77522EC703C9A6257DA9CC2D8B055A584D6849E399C771AC85B388164B5D6AE2555A9C8838747919441793CAFC7BF2A0C593F2E911745ADBB1949B96A6B7DC173B9A00EA192BAC0B1B96789E325AC269F5E81105AD714CAADF91BE115C0EBB101B0BD2C4BAFC362BBD59F6A3D42672CB40D4FB0E4771D8F754574766CB72EC11EE231C55AF506FC5B732AA8F4556446BE39D77FCAB8985C8B8E4114B924D8B7365C997B53DB5C26B8E5BF9BE3DABC3D22E522D8C57E0D7C247045DCDBE24D45B7646F5B548FB88F697C882444BE87917156AFE94B428B0C48B8C2B0016762536525ABF81EFBD43F53A3700E7C608515D4EC8DE55D3ADE9C943E9086DBDC8D0EB4CF62E1845844E497457382A1ACBF816C736FA9EA38EC86C3D9745DB796F3D79D25AE85D5089E4610FE31A9C2FBB131BF0220C02DB316AA2857D515B19BF0496773DA777DEC3BB6C21D8D672DEF7202CB784DD7B807EDEB27506E0BC90B6EAB7C49AA7C5F9CCFFF7F8F1F3FF796C9536A38C2ACFDE7C9C2379BDEE01EA673EE756C67B6ABF4766CD7691CF2F0097C2E17736A44B60A307E1C8C0702E1381750B59DAD2CFB19649EFD108ED229C76063E7226B60C534B2BB20D5F3BE3EC2D8FE8E54FCDCE9EE9DD895AB3ED5ADB8E95D1BB706BEEFA487DA6277DCBDD8ABDB7E7B51851263D4713A3F4E65B1ACBA363B4B5CFF7B4F13DB45F76FCC1CBE6622372294E0B3FC3418BDA68392E9E81C63B2859CBCB124F3A63BCFCE61123E57B4817F06AB65BCFA57C97FF8E964D194EBB84D9BA88E749473BE3DDB2A59581E5EE82B53E6AE15BF929D3F1BE8F64A37C66892BC5CF7FD344662D9F923DCF85CD5A18A9ACA47797E26BF9CADFA124BACB57E64512189672EEA9CB32ADC87822A5598B13119F96FAED41B22D8DF1561B52995AF23EA33DB5D269CD11AD77CFFBB97531A74CD3E36348F3A727BE94174FBC32EE1E0410EC9BCDC586E61C68E15AF6A481C33AA9D41C630FD6C9D0E3785A1D1C290F9200B20E789A836229274D50589CF43CCD9E016DD46058B3E32987DEF47A761B24A1D19A8C5A6DCA2236B5FC789C48CB4AAAE4C46A76A5FC59C3E6715A93742BFE929E64D792E75A1EACF9F28AA516DEF66571F62CCF6BE4E5E371D46A7D474AB37444AD63684B38E7EFA02D1C687346A4BE5BE16BCEBB652EED19CB6A696B62CA928E14BED6F6CBFF97DE571BA33C6554CBA766BF8C6F29272D4E8DC8F80897C5E662A3644623F50E34B3F251B3EF49C7E38859E3CF165596385E1B0C644FE82D879A6330B32E3C139616A674AA2CED579B60AD69CF0EEBB111CDC30847602F425F5B3C9991A7529C58DA5ECD11B5A4EF1102A5B8289FF532AABDD4160A46A521A5B9A41515C8653BF38C5196C5905A1C4D645A6C68E1B4B9B796E7569A96340052DAA1D898C9B97782118E3FC0DEA989A468FC4BE39CDE7DAB77890AF3681C4F5E7AFBC64CCA9D96B5F2B785B8F6ECEAE471CAF05E87DF2B6AA5DFD99D80D15C94D8000000806DB8340736BA2BD07BAC6CCBDD4B801A880D8002CBDD18AF2D066F0000B0C07C01E70662C388E772D5B939989EADEFDE0BFEA59D1165E8B9C06C09E3B9C857DBD68E889548DC5AFC888D2331F22CF85A47092EAD8E00F6C6DAC7868EEE231C3DFFB03E87171BD2975A467682F2F25D9E562D2FDAE54529EE687A9D7EC9616E7D79A5F55B2B0F6538CB1738CA3C4AE1A5CB933D97FFB470AD3C6BF6A5785ADBB63AAD9EFE116947A3DABD5738F45CAE94C27BF210C96F2D5CE4A30D47172C9A40EF7D8FD99791CF85D10B3C4710EAB50BD15E1BA59D489A5B2EC645D25DD246748095CDC546CF645E0B9F3B93169B5A3AA553EAB960E571342C79B596534B0CB5D2D27ED79CFC56BEA40B73ADF76AE571096319F4F2347BDAC8CCF3B0DA7B6882CA932F49C4796C468E9A59449A64C322745B6566116AADF6E769BB527AAD76D772B63DA252FA4D22EABC957DAAC7E16B2D20788572AF008D32C2E15E3BAF65F95BDF411B9397BFBD362C68739C779C2DC79B887068C52B7F2FE7240BBD6225DAA66A79ACF5518407D4D85C6CB426E8DA4AB4C59E752559B211595DF4A691926D653EFF7D21E270469D16CD967790911C0A0F9A83E689BFC741D1D3C667A7333A7E4F9AADFE6C5D081829D42C69F608DB5E67DB4F5537E000002000494441543BC648B62DE367592E9131574ADF23162CE55C0A506F1EF374B4328D2E24B5D26CD95BC24AF5A0BD8734F7D6D2F388668B132ED9F1209597F6CE921DEF62414B38B4DA9AC5DFD0C44A991F4B7CCB8289F49B146FA6DF04C76573B151521BA07B1BEFDA8E514F3A5E476264DA6BD96020821ED61E0B7A6C44571FA3E9697988E6233226CDECE32DB1306B0CADCD4BAD32B5089B487E73075E133A1E67594AAF7C576FDE35277C94C868A51B15FB3551E9596458B0B493E8EE6D195F13B59ABF51DBD5D2F22CC1FC0E35762736528A3BE000007B630FE3D71EF2309AB5DFA9675E1A9D578BF3EB7D6E49AF879A305AA30E7B172722423DB29B29ED0479765297F0B59D466BFCDC06C02876293600B6A67715B2B4C3C00D1A5B3861707C8ED64EF69ADF88686BD1132FBA1B93C7B7EC766836004682D8E8A0E6209CE34529CF3B49657224275D3BA3ECBDC857AE4ED5EC5AF212893B22FE1119D507BDED365AD6B523173D2B8B085CB8247AC638E99ED1D6F3D588A39323EC485CE2BC027D1C566C688D7DE416A0E73265E95C7A2F62CE60D440BCFCDD3A535AFE563B57ACE5A1762EDA93EFD6253C4BDA96F3D75AFE6ACFA4F6A9C5AF3DB75E22D4E297CF6B713D6794A5B4737A1CE7DE36EBCD43C40191CEA347DA5BA4EC4789FCD2D69AE354ED984D8DDEB100C7A8CE4887B9A7DFD5B0DE43F01C792AC349C798AC3622F1728ED02EB5B9A57C0690B3B9D8F034528B13B5FCA6FDDD4A2FEAA04BCEA5258D487A16DBAD72D26C484E90F47BCDA66520D7F2D4721A3DE752F3B4A53C58CABE96A7DA39592D7EA47DD6D2D5F2A7C5D79CE372C26E95BD256D6D1750B3D9EBF07B1D08AF0362116F56615E62150C5A5F8C0A96A8588B8885258EC749F4D6A3F5B75A3A5147AA77F577CDD5E3722CF3A6D7BBF8D7AA2FEB0280B7BF6BFDA68536567817193C4225B791E7D943540C6A738BF71DE0B2D85C6CD49C9B1ADAEFAD679A935086EF9D60AC4406238BCDD680604DC7EA58581DE0328FDEC1D2E2905A6D48ABA8DEBAEE992C3421E78DEB257FF7DAA4D31299917C58848D64D3E2B8B4CADEE20858C6985ADB694DC0DEBC4A36A4BEE615B6655E343BA5F3A6E5C3921F299EB72DF588096B5B28CBCEE33497E95BE6382D7EFE5BD4216DC58DA667E97BD17E573EB7F69D965F313BCFDE45068FB3DE336F7B17143CE3BD556CC165B2B9D848C9BE1A116DC01607465AA5D802AB1356E2EDE4D174F2B84BBADEB83D5805672BFEC83A3EDAE01A15D4A3DE335A079203EF6DB751C7CA2A6CCBF091BC9636A20B2035C1E0CDCF08C1D913A766A3365FF4D64D9947699ED06C58445BAF4892C2B5EA466AFBAD3CD7EC79DA636FBF2BF3E4095B96B97707C19B67AD5D59E25944B016574A43133ACBEF7998DEF1062067176263A1D66166EF308CB03D238F6B4DE23D795EAB7E600E47ADB31162B547006C31F98E74D06788FD2DB0ACCC5A6D44C27A7733171BBD735CE994F6EC7459D2AD2D4A59E3F6A63D028B4893E2D5848AC546745144131C96DD983C6C2B4C2BFE5EFA399C07BB121B29D95680F6446DD258D87BDE47708EEF1859956AD93AC7723A3233EB235AE76B8C1FE7D80EB77AA768BA23E6B8C82A7D1977769C9976D64ABB26B4AC3B463DED43DA45F3D8E8E11CC709D896DD898D85BD37F69A4351DB72B7BCC73939A4BD472CB6A6B5851DDD82F7944BCF995C2D0F5BB065DBEE4DDB5B76651D8F38AEB147C1B206BDABE8A3EDCC602F3B5E47A677BEB1C4D7EC968B8DE720CA34B69E4FE0B8EC566C4858569D235B885A7AE556B7A5C349DBAE5ADE6675E41103B25534D556EDBC4E578DA8D3E7B163DDA66E393016216A6D0FE5DF1EE769091B89D3B3725A6B6F2356FB3DC2BD27ED880321AD6C5AF2DF3A87BDA660D9DA3997EAAA751E5DB2655D85867E7A1D6F6BFD4A7D6AD4828E25FE12BE1CE32DEF70D405B9C8B13D8085CDC546EF0011F95D4BAF1626EF64DE41D4B3B2DDEB98D70682320F1667C26B77895373AE6B0394D56997F2D453FF239C51C911B24E365627B4E6BC964875DAB2AD4D1CA56327D593164672BC3D652D89574B78296DEF18D3AAD3D6FB68F91FD9565AEFDE8AAFD9888CD1B57C58E349EF91878DE663B1E5750A5B613DF9E811DCD17C78D2E91109B5B1D062B335DEE458C64BAD8D48EFE96963D1B1461A036AF9D1D296F23D9A5AFE5AFEC2EC3CC131D95C6C7806885603F6FE6E1D14A54EE6C1E3C85A9C9BDAEFAD32B23AABADC9BE4C4F4BB756769149AD25982CF6B441B2B76EBD4274D4601CB5A3B533ABC8F1BEB76592959E7B27F15ADAADBC6AE5213951B5F052FA791A91B8521EADFD3E5A7E96B45AE392F6DE11B16F156A2D1B9EF2F00A65296C442CF594974778591704B47E5AFEDBDBEF468C8D523FB5969D36AF59C71A4B3C6B1969365A63A934BED6F251B3DBEB7701A4B403B151D2EA4C23F10C3E6B521BF42D8E71E41D4638D95E1B5BA4393A1F336DADC508F1DC2376527AD1118D3888D6F14172026AF9D2F2BBC6A2432B7E4428F7965F6E43CA9714A7A47775B6F52E3D02508AAF85B7C4CF7F6B39829E7E9097817721A62C3F4B597AFB40D977D65A09EF118B4BB89EBE52D68BB54EA53CB6EAB636965AC75776276036BB121BB58168B618D86B87AA0D207BCCEB1679DA6339408CA8508D3AAB9258F508963D3042E445175BF622F46B4E77C4F69A8B25B90D8FD096F25073E047D5656F5FABD91BB550144D3F12471364AD7851F12B0948AFA8F78C8B0033D995D848A96FE03C47B61EA001F6486F7FD08E345C027BDDD5F522ED701C8191A26DE6BBB303BCAE28EF15A2007B64776223A56375AC35B61F8F541EE740EB8C73C41675B81FAC93798F03DB1B57CAD348CEA54DB6DE833E08BDACDDC668AB706EEC526C5818B5B5DB9BBE76B6D232409DCB0AE3C25E5618BDF75DCA38D2EFB533B1659C5A7A9173B3F9AE56994ECFAAD79A75B465DBD6D2B63A0F91B2AA9DA5B7C6CBF3172DBB7358111DB58893D7C5398DB3F08451751A1D13CB79662FF3DF2CCEFDFD601E9B8B0DCF60214DA2E544D27381CFD2997A2E7B690EC5ACC9B076C96DC680219D1FF6A4D7AA3B4F3B29D3962E55E679F7A45D4B47AA43A90DB4EC97B66BA243BAC4A8F505294E991F8F50D384D05A8E7354E849F13D4E6A19AE56FE9E71C7EBC0B4DE5D4B3FCF833446B5E2E7E9458F7F4A651D110B79FA3DE31F22A58DD6669667561B9EB12CD2CEA5F0D1765ECB8B6551CB92CE8CF811228B7700399B8B0DEB84AE75E0C844520B577318A32B6C9A23571BA0F2F4AC82C79A66CB81D09E6B0EABE448D6EAC3927E19B7A42C1BCB4AB036194457A025DB563BD6B4CAF2ACC5D3CA42CB4FDEE724DB35A1A6E555B3E7E9E779784D5469F92DD36E8529D32EE35ACAB395B614AE35B679EB4A4A5FAB3F492C7BEA4013DF5ABECABC79DEA39517296D8B80B08C2F165A7989DA19EDE845C45C991769F1C3EA804B73452B7E6B2E2FF3588BD3334E9476AC823DB298D2EAD3ADF76CD96CE5CD32A62042A06473B19192DEC9BD03A0279C34787B9CFE91792AD3CEE35A261AABA8D1E27B1C21CB40A909102FDA20EAB159D6F3A88171CB01D652BF9EDFCB30234494D5F15D7ED784622BBCC7B694C7DAF3DEC9551B77B438393547C65A3F521F97D2AA096A4948D4EACB2306BCFD57726C2DF66A637CAB5EB436A08DC75A19D49C6C49A4490EBC650146B35BFE6E5D10A885D184A2557479C732C95E8F2FE1152AB5F84B78EB7863A92BEB3C9EDB688DB5D6B4A4B8001676213672B455801969457E9B4D74E5A337CFDA443132BDB5F339332F10232A187A26462DBEC761EF6554FB8F2E88480EAE376D4F3CC9CE62ABC7A1947665AC7918B1A0156993B532B0D66929BE25C7D85BCE2DE7BC677166EDB1B657B494FD2C62271A765439F7B4698091EC4E6CA444C3CFF1AC5C021C99B526C6C8EEC21E893AE80B3D82616479F5D8F238E833D21F65A3B513148937D2D98EDA3807B678E74B2C67386F762936E0360C3CDB73E913EEB9411D9E4F199CCB7BEC15CA17007A416C18A9AD849EC3EA283CC7727EDBBB8ADA7BDC6414E5D199ADF3B3572827000080B16C2E367A27F75AFCD14E82F5EC6A4B9044CE158F604DA7297A7E5AB395FF1DB169C9D3F25B6B07C3724E5CBB5858DAB2E4DD135E8A9FE77B791E2DC7A3E0CD6F5ED6D259F8996530B2EF0078D97BFFAEF58FDE3CCFF2195A692EECB9BC0146B2B9D8E871826A97EAB40B7311A489BF7546B6B602DE7331B3C771F2A4572B3F09496CD5DE538BE7CD879437CDE197CA3ED24E4A0161D9E5D2044E6E43B3656D03D23B49E5D3B255CB5BA48F2EF122B63CED77C153BFAD7EEE19A32C7995CABF143C2D3B9ABDDE059CDC8E16B6A77D68698E74246BB623F95C9B598EE9C8F652DA1CB1F027CD9DD29CBFA41BC9EF689FC192A6774CDF235B0835382E9B8B8D94EA4E7AF9BBE6B4D61CAAD62EC4F2BC954669CB4A4B8CD456BCB53C6AABAC16E7B9147565BE2242C83248B7CA5DCB8716DF625772B4470DF492FD487CCBAA5DAD7CA2A2D222906A9389A5DD6AEDB4E69C5A84A0F47B4DF8D5DEA94CA7F50E25AD31AA165E7B2FA9AC6BCF2CE394D61F24C7AD35DE94CFCAF434A161C963AB0DF538809A23A4B547297F96F4ADF562895FCB53648CD6D291E6A8565BADE5370F5F6B175EC1DC1A9F2273A9944EEDDF23E7C092DA981E154A91783DE24FFBFF487EE072D885D8C8F138971E9BDA44900F90799A527E466299D4A5B09E89A18C9FDBA939B5D6BC47CA499BBC2C76A430DEBADAD3C0581357923390527D72F3D685D5B96AE5C3DA6E5BCF6A4EA096AE679297FA59A40D78CBD7D247B567B532F2A6AF09376B3E726A02B4D5763DCE7869B37C8796036C69BB5A5BAAC56D89E2D63BB7444DAB9E6B7DDFDBE72DEDA74CA726EACBB0B5BFF3726EA55B7B8F9EF1BCD5DEBD65A08D1F35DFC1DAFE251B129220F3C4F594436DEC92FA7E6D410760617762A3C68886EB75C2B7E82C1187BD67708EC619197F96AD7367469BDDA2FDD46C7904A767A22EE3AE456F1F956C45E2D41C852DF2D11B57DB598A3AA91E07B4258A6B71ACA2A6951749A0D7C27977676A61473891A5B32AA5358AB28CBCBB2CB99D96D06D89F1E56F29AC158B00B5B6E1325F9638AD7EC2FC0D1A87101B005BD2B312DEBB2B076D285F3BE752565BBE4744AC8D149CD6BC8C1A7B46E537E2EC8F4AB7F6EF487C6B78EB4E5C1947DB116909D05214467754016680D8E8C0BB1D49C73E06D26AA06525B3B4E3DDBED7F2D3BB2AD66B03E6C2180123D9635BDA639E66107DCF9A58B0DA9376BC1857600F20368C58EE7CD47EEF193CF682D7C1AE11D91188C4936C7905420DCF9675EDB88A77B5AB4C27326994EDEFDC4547CFB111C986D756E41CFD123E3A46E050C02532EA48D69AFD471AA3A4E38E11461C950418C9E1C58674116C5427B36E61D6E295F9187D8653C2730ED362C37AF6D77351D292B624D62C65A6E55F8A6F6D37A5E8286D5AB7ACB5F8B5F0ADB6DDDA49894C6611C73B729EBECCBBF76CB754665EE75DB3636DDF4B985619D7EC4576D13C7701F6CAC83B182DDB472D97A3E5DB3B6697F16BB4DA7964F7B96637BA7BED5D40CA6DE444ECAC81344E1FA96DC2366C2E367A56F26A713C9DBFE5EC79F3946339A359A6558BE77524224EA4E5DD2527CE3A484A69B4C2D676135ABB489A1D2D7D6F5DF7B6192D4F5A39B62662AB60EA11A5969DBC5A1C4BDE3587217F6E29B3DAAE52449048BB53ADB46BEF614D4F2A07CBCA681E2E32AED6EC7BE28D18CB7B6D8F12A0567A57D96B0B246B2D5095F6F3BEE82DEF9A0D8B1DCF82506BFE692DCAD4D2F12CC6486565794FEF22929677AFA33FA22F49EFEEB50997C5E66223D2C1CB78357B79E76FA55D865BB3B3581C098BC321D96BA51B7DF75AF9469C6C2B9AF049C937E8CEA8DF5E9B9EF85AD8517622715B75609D845B36A489CF627BC9A7275FB5F4BDFD24929E475459E24BF65AB6238B325EC7DBF39BC771B50A502D6DAB18F2945D2B8CB6DA6D5D48B32C28D4FA532934A2EF5FF6678B001831462CBF6BF366347ECD86F53D5B75E11138653EF3BF3DF1236DB7F66F8F1F0797C9E66223A7D5C1BD0D784BE7338A3639B69E8D4ACF1377F66A9B272FB02D6BD5414B787AE2F7A6BFC7F46AF17B16542242CDE2A445C70E6DDCF1BCA3255D6D45D762C7226C6AF39E45704BA240B259434B3777245BF9B7B2E66E8D24B6220B05DE36EB7DCFB28C3DFDAA6C6396BE578B6B4DAF057331D4D895D848A97F808075A15E00C6307345D0B2BAECB1D39B875E7B9A033CB20C6BCEF78C85AFA83DEDB893C5E69A0B72BDA2379A666F7C6F9EA3EF298906EFAE4FE468534DB433B7C348762736523A46236F6D89A6C4D6E251B11C3DE8B1B3453BD8CB0ED46C7A8E48D56CAD515E91636151F650FF7BD8953D62BA356AC758F6CC51F299B3F6EAFE889DC82D1715006AEC526CEC11AF13531B2CB6B817D2EB7C45DE5BC3EBA88F2827CFC01B397AE00D63CDCF8855DBDA79EC889D286BA6A79D49F6E421725CA64CCB13BE5C3DD78E435C12940158EF8BE444DA4C6F5B1B3DCE8DD89199493946D24FA1C5E66223DA493DE75F7BE83957AC3D9BB5FDAF393C9ED512C971B35C28D32606EB25B8C54E442CD5E258DEDBDA6E5A6DAC65473A2A58FE56DBDAB6948FF4AE96B3BD657AB5FC4961B5FAEA71FAADE9D77E8FBE73B9626C69FB9EA3089A2DEF711D4DE01FD50990DA534AF3174CF6C4160B542318D9DFCBBE6799E3662F2C48F1D75C48DA0269FE4170408BCDC546B4937A9C1ECDB9B3E46F065E675D722A3D8364CD192A9F6BB6CA702D4125FDE6718E5A1349F90E967CF54E305A5C8F60A9617142B5B096F4CB09DC93C7A8C86F096D6FFA5A1BD06C8D1000B98D561CAF08F1C4B7BCB7D709E87582462D1E9562AF0CDB3357ACE5C0F78A9CD65817C98F75A1C79B4E4B0078457ECB966571C1F2AEB5C5184F9EA5C51C6FDA3D42A5B77F6B365A69D51663BC7982CB6073B191525F27956C79078E3DA039E33D0E87965E7490A8891D4FDC0852F978F3E015062D3B799E7ADB9957F044E3F7D6418FCD11651E9D703507DE62C7DB676A0B1D3DA2B67C66CD6FF9B7A71C2DEFEA59DC89967D19272AB224E158B3518B97FF661DB3CBD5796F7AB5B43CC26109EF69FBD67A69D585B610119D3B22EDDE93666BF124DAFEB4C5308BE0D0EA6FB1A3C595C24417712CE902A4D42136AEB216FEB868695757572F3CB3D01A946638487BC4D3B9D7746E6B714739D9DE742DCF2276A21CAD8D1D9D51ED3662CF9BF68C3E1ACD6FB94060B15573405AF98938C25634C72CBAE8A0FD5EDA2EF360494F2AC3E8624DFEFE9E3AF5B47D49DC44FA8E2440678E9BA5A8F4A6A98933EF0283275E44A82CBFE775E5296FEF220A809790D828C544FEF7F2EF5EC1517BBE477A9C9673E01CDF7764FBDB428C419BD9F5E15D1C596BCCEB5DA41891A751364A873B6ADFBBAA1E4DA78CE7393AA3D968ADC24B713D697984D5A87447316261A2254CA578DE7C94F59AA7E915B46B2F8A00680C3D46950B8C5EC1B1775A5BCFB5DF60FF8CAA576935D0DA26A247D4ACF9598BDEA36A91F44A7A846224AED701D4DA5C34FD85238F419695604BB8BD3252B8CD7EFFBD96EF1A751F15B323775F110E7074426223222066B18513E5390F5CFEE639CB3C8A359D8F113B3DB563065E3BD6A311D630B5631092AD5A7EA5D541A98D482B6AD17288AE4EF6967DCFA4E96D4B2DA1E879E725BCE7FDCB743CF1A53617493FB7D7537F5B0EF3DEA3419A1D4F78D817B5BE58D6E988F66A15B65A1E7BF3E049732B8E2AEC617BBA7736A2BB17F1F46EFF5D73A2B40E1119987AB6433D698F1A34A5BCD40490949E74F6B335E86A3B022D1BB5F7F7AEF06B792D8F5D4457926B42C1E2DCD5044BED796DB5B26CE7564A1B653A2D7B5298B24EB47AAAB5BF561BA8E5D7523F9AD36E892F0906CDFE124F4BBB8C6FED53B3D297A8F5FBC858191DC36AE5BF3C1F2594BD0E53CF3BF53AA247114B96712412BFECBBDA38E399A75B0B819136666DA32316E4D6C2BA60BAE777807DD0253646088DDB0DF7F91F35BB5247F63A5116272B0F37AA23591CA596532489004B1AD2C4DB1AE825B1523A4E92B3534BD39ABFD2E96B958DE5FDA536E2ADE7DA4467B51159A51DBD6A66CDB3E6B0B5049C64479BC4B476A0ED5E78EABE86E6B0D7F26D2DC39E766289EF7977CD012FED7A8491542EB567AD31C1520716E755EB635EA73022BEB4B1D39AB6B5AE5AF9D0D2F52EE8D4ECB7DE65C4B89DFFDBD2463C6DBD16DF5B3FD67E562BFF5A7EB4746B79B684F5D4B5A59C22F982EDB82A2B6A45BABE46356247E376077F1C1E904A7B1107AA4C6FA4D0B0923B70E5B3F2EF1179F3949334485AEC78D26CC5F388152DDC68E7FD68F4E4B956863D6DC02B7C7A263769C2F78C2F791ED668FB65FC48DF93047BEB3D22624773FCBCE94BEF21C5B1D4A554169A8DD6F8534BA3F66F290D6B9D6A79B78C8D2D27B45CD08A88C35ADABDE3B687D63C6A6D1F11B15713DB4B3C4D24B5EC7AEABBB49DC7AF2D586E3DAEC13A683EFB6C2132E46B540BF9A5F0A8188974A8196CD9792C8ED01E3AF75679D8C3BBC358BC75DA23586B0E55D4D6568C16EC5EA11E7136F3BF47EC2A4AC2A9E75D2CF91955EFB545246F5C6FDEA5DF6B8B078BED9E32F6E46B34D1058D3C7E19C72B56B4FC48713C62DC234CB405A2683B04B032E4BFB391D273C534E2B3B72DE57D695CF2BB038C269F602F757C19B5C3B255FCC546EE9C1DC5091E9576CF3B5BEDA754DF213822D1B6510A00AF98F5A697D218313E333C8097295FA3EA395E550E70740200980163CBF1691D873A77D678E74B2CD79CDC2759AB2C2EBDCCE1FC18FADFD918C9113A9BE7BC241C87C8D104AB2DCDCEA53A4CE7486425583B4B0F32AD3E650D0BA041DB0188B35BB1D162A443184DBF35C96961B6CE7F9E8791E98ED86EAF9D93F5DA92CEE46B365B974E356A676C6BCF5B974247DF1F282F056AE1473966B3C49AC586761723D2863C71A4E33C967790DAA3F75CBF54F6473B2EA6BD8747BC49651AC94B8FF88B5E54AED9D9631DD6DECFFB9EDA65E5DCB6966E94487EA57C8CC88F35BDD96D610F7E0A9C079B8B0DAB431071965A48E7236B6978271C8FED5A1A162C03A45626DA1D99328CE6F448CE7CEBDDB5DFB57C79DA485E57359BD609C6EBE4D5C25BCEE38E74F0177B9AB092F2A1D9CCED96FFB6DA6AD5A15477D6783587DF52CF9AF82BEBAFF67B2D8F9AF3540B533E93C6A15ABE5B63807701C4924F8B0D49485BFAC4F2BB477C59F3E16D0B3DE2AF5CE8B0B6C9DC96D6E6A2E27AA4282FEBA97C4F291DEB58AFE5D5DA7E2D82BC35C78FF247CA3661492B8F1BED6F1ADEB1BC961E82044A36171B5607C7D2787B5623A4C92DFFBDE5F0F4E6A936F16A8E79CBE1B3A45F0ED6D24A603929B60624CB40ED71EE7B1D36C9E6A815A2596D6284CD56B9446C968E84A79D2DF1354A9B16475FCBB7D67EB4762009D5322F5ADA523E2258FB9FF45B44C4E7440489D4463CCEB6D4166AA252CA8714DF9266FEB735BE94074D445A6CD5C66CEB82422B8FB5776A39D252FBAFE5574AC7DA87A2BFE5E9B6DAC5F26FA91C226D56CB8F949EC59626507A0590E7F751F3289C2F9B8B8D92351BEB0C076D04D28A4F2BEC0C87599A307AD25AD3B15FD3D625A139129EF8391ED1E215FD5ADA11B1243D5B8B11EF1E711022E97A1D25AFDDE8CAFC398C435A3F1C515792A0DB53D9CD4A57126FB3EA7D8DF634ABDC9947A1C5EEC406DC864E0C97C256BB4397DAC7CEE5BDCFE53DF648BE7B993FBB442EF5BD014680D8588911AB41B02D91952DEA1D008E0CE31700F482D8301239FF9AC78B9C8F866D689D9DB5880ECB59DCC819796FBBE9BD3C7A34A2471DA472AA31ABECA4FB51D6B8DE38B07F8E3E67F4B6CBD6FDAAE825E8DCFEDAE54A5F854BE4F062431A8C467564EFC0A03975BDE7A5AD442E9AB5ECF5BC7FA43E3C97782DB62CF1BD17FF244740BADC2CA5B784A939BCA5DDD6574B6AF1B58BFF56CA09DED31E6A0E82E59994BE257F358744B2E9792FAD0EBC6DDFEA4859DB8FF4EC08CC1CC72D6DB737AD5EA757B2B9D69C61CD83275E4AB7FBA3A56F9548E39664D39256ADDFB7D21D4599FF687AB3E7C2329D9CDEB9042E93CDC54674C5B5E5407807B7DAA0EECD9327ACD5399006C696C329FDD61A3CA4DFB5D579ED1D3407D863CBBB9AA595DBA8DD26A9DCBC6D6089DFAADFB2CD58858564CBB28A5F8BA3A5AB398DB9236079E6C9B326EA5B366BFF6E9581D73192DE41ABABDA18D14AD3E39C5A449835BED78969E5A325BCBD76CB7656E2753A2D656475C2B4BE53FB3B5A26D6F78E8E9152B83CDFDEB658CBAF16AE3646B6D2F1D69DA73F4A36A30E7B6481A44CA3359796BF59C6871E9F092E83CDC546CB49AC3DAFC52B9FE70E416B22A9AD32ACB58A6471F4CBDFA3938134A85AE2472789DAE02A0D90DAC069991CAC712C939F975E3BAD49B416D63A71B6EC7828F359130BAD389E67BD79F694ABD76624ED489B8BE65D724E6B4EB89666CBB9F23A3135BB92632D8DD1165AFD5F0B2FE5D1E3E85B858DD7696CCD09967879FCD25EF94C6ABF5E07537A6F4B5C2F521EAD6969224C9B0B3507BD35AE597C9F5A3FF12CFC9436B477F1F413C405B4D85C6C946802206267B1E57560B6E83C96C1BAFC77EF603DCA491E11A7272F23F37114F690FFA8D0B954B61E573447D2125FFBDDEAC4786C7BC38DA65676516150DA6985F3D88F2E9C78F3E1155C527A3551338391738AC78F88B4F3687CCFC28F15C67218CDEEC4C6C2162B9147E49CDF0D00C6B2F578B175FA3D8CDA259B51066B96EB88B48ED80E3C79DE7A11EF88E50BE7CD5BB6CE0000000000009C27BBDDD9D81BDEF3C8525C3806D14B80161B9E76D07364A166E7DCDBE051DF930B96000070AE20360CE4E720235FA9A85D565BCB99D8CA8929C59937DD914EA3F78B1D0B91CB739630D677AB5DDEEC2947ED02E32CD63897BDA493D28BEF99D32B125B76A27DCD7249D762A304C10247A7D5A768F700C76073B111757EA20E8137FD7CD2F75CE06EFD3ECBE9D306E7DE2FCF4871A4F4A52F6368EFDCFA724E2B7ECB8E9607AB83D77A1FEB4542294FD27B6A6560D94591EAB9BC64DAF3D51FE90B2EA390EA2DFF4D0A5386D3762BB5F65DAB5FE9592BCFB5DF5BEDC062C3125F620F8B221291FCACB9E0D2B3C822B5CF9268FEA38B1523CA3C25DBE24A2B8E457C58178334A20B13DEB9C99B5E69A3A72D78E29717CF7B1713E1F2D85C6C58760C723CABC279386DE0969C704B3A51AC0EA7C58ED539683961ADF8653C4BFA3507D07344C9E218D6C295B646AF88E5E9D506608F8D5A9E241BAD7663A5CCFFF22C3209B5F23DB20F45FBA926B43C93A5345E68EF1D6D6B96B1C0236A3DA2B2D59F4A7ADA636411A127AC656CF5CC2F92C0F62EB2946DAB25329F7275F600002000494441543DF551CBAB268EBD6342EF628EB55EADBFF7A665895FDAB0F831D2EF5EFF67493B325E5BE34BE3644D68AC29E8E1986C2E3652B20D10CBEF79F8964DCBC06DB5378B88C3590B1F7D87DE7891F423696AC221928F51756E6DBB1E5BA3C37AEC4445CB5A8C486FED775EB35D48F16BA2D22B783CA2C72B0ABDFDD622247AD2B2AC7C6BCE65B9C8622D3FEFDCE61536AD4592DA3B4902BB66D792EF687C0FBD69497D449B67B4B9A0353F59EAAF66575B14B02C7244C2D6E662C405B4D885D858D03A5CC4993B620738DA3B6E9DFEC2D6F9D83A7D008DBD08AC9E5DB4D27ECD618EDAABD91F112612D663AF141CD1F8E573297C2F6B8E93A344BAD76E74A55FF277BC0BA66B2D000278D895D848495E09A23300001C9B9E1D51CDD6A5CE0FBD2BCB975A6E56B62AD71E014D9DC21ED99DD858D87B87596B3B18D6A7F73E47CD4EB45D5CB2231521725448B3B556D95FDA99E791EF77EE65059709ED1ACE89DD8A8DBD6175622C970F173BE7CC8895CB51789CC69EB3E09A0DAF33295D40ED112D9EF447D1DB0E227597C78B945D54B0D4CEC07BE2E57FF7089D3DF53D801E5AE316A71F008EC1E1C5C61A834DEE44B49C805EA77614960B8E1E5B11872F72E675D48E51E4AB1D96CB7FB53C5ACECB6A9364194E3A471D395AA889274FFC489A79F8487BF7088656B95B3F165186F1A45FB6B3567A963CB7F25BDACA6D44C7983D8895913BC747DE35BA64675ABB68BD208DCB910582DE5D506FBA9EF05B33AA9CE072D95C6C8C9C10B5C126BAE39077AE195BFFA32713AB3D6B792C76A2837C2D0F9200B1EE1859DFAB74D8CB0BA5D14B75D22A74D446997FE9B7489BD66C45E247FB515EFE5AD85AFDB57E8F5CA094DAA545686AED4612893D79AE0967CBFB44C6188F582AE38D1038AD7CAEBD4BE945EB1F9132898E515B13DDC96DC5E9EDE3655A797F8AF493D24EAB7D6A8B71A3177F6A3BB49EC53F4B3959F20190D20EC446E984441CC9DAB3E86AD6DAAB60AD3C6B1DBC656F4438297C4F39D56C79768CA2137AEE7CB5049495C82AB4C5DEE8B0A3E2F7A42939F89E09B7772573091B9D3023EDA6D761AC3951BD655613226558AB58597EAF0995567E6A79D2682D4AE4365BA2BD257E3D0B32B5F8657E5A8B2CAD76D5231E5BF9CBC35ACBD89A86F4EE963C4591CAB3D6D6A4450D4B3995F6A5B8AD3879985AB8965D8DD6AE8455D4D6CA49CA07E2034A36171B29BD38F85B3B9AC566342F5B501BA0BD03FF5A8CCC4FAFF089A6B7E53BC013468B97738E9BC7EF1DDF468815EF8E6669C31ABE16B6B56B61152EB5BCCDD841D0D2F28EF1D27C692D57C941CD17FE2C65ACA5E1F97D163344AD754732E27CB7FA59CD862688AC7DD2BB7821D900D0D885D858C807BBFCEFE5DF97446DE505006004A3C4CA568E89E418F7DA5F73ACED1DE36BF3A5375D4B9ECE65D53AB2A8556B575121EB4D3BA5783F5B7B010FA0C5AEC4464AB65D0E0000D88E3D8CCBDAB1954B618DF7BED4B24DC97EB46A8DF4018ECCEEC4C6C2113AD9DAE7500160FF4456D9B9741987728235A09D01C4D9ADD8D833D6CBEC96CB5B977C546CAF5844A4E502A114578B533BEF6B89DF62ABA310BD6DDBEBB88F2C3BEF4A662DAF9672D7EEA949715AE997691E6D8C1925BE1071C7A6D59F2F79576B4D2867E8E57062A3D7111C91EEC8339BD12F8058B13820F9B3D1E9E5EF65156952FC9E7CE4F65A715A6969E7C4351BB5F3D5ADBFA5F825161153DAA95D486C61A90F6FB968763CC72A5B02D0D28ECABC4BEF52BB386AB9C0E9717E25C122D9B5885F4FDDD5F230CBE1B05C4A8E882FC94E4444F60A66EF5828D959D8B3F3E77D4FA9DF59FA7364AC97F21BE56862DE82B74E003436171B9E066C75565BABC356D69868CB0B793D8EB567329326624B3EA5F46BE16AF9919C27CD89B388BDD664DC9AA0ACE5BE84AB39EB9A0DC9B92FDB80257E8967C25DDE3F7ADCC7D2BF4A7B659A521B6D958BE68C5ACAAEE594D7F2BDFCA6B5616FDBF1A0ED7A58ECB684666EAF3526B47661B43C4875BB3CD7FA5019DEE3BCD6F2E15DF8688D5B355B657BC9FB4EF9CC9A87FC796BC1C0D3A73DE1B53CE66997EFA9E1AD5FCB9829CD85AD7A6CD92DD3C8E35BFB514F1AD6F8D134A577F0941F82044A36171BD6C1DFEA84D71CC1085167AC176940B14EE6D61588D6845EE2752ECBE7DAE4A04DBA9A636FCD43F97BEF2A5624EDDEF07B49BFA77FD51C8A9A2362150DD6386538A97F79FACBD693694FFD95FDCDEAE42F613D0B00659CFC99968EE51DA4FCB56CD604A4164EFA5B2AC75AF8DABF35E74D4AB37CDE5AE8B1D07222255AF34C74AC18D5B7CA76D26A1BD6050CCB4291B57D4B82B696DF510B845ED16CB1DB2B58E1FCD95C6CA434C6911CCD969DC63AE849F166E47D6679AC3D1931206E8F24223DA2A137ED48BAE7404DE479CBDDE35C781736ACF9F088266BBEBC7918616F645BEEB12B39911141B7174A31E01D633431604DD71AAE141A96F6D5BBE8534B3BC2DEDB016CCF2EC4460E8DF6452813B804B66AE797D8BFCE41B0474506D89176028F4A8F009BDDCEA45D923538729DC231D89DD838378EB40A0400CF915675E9C7FB82FA98CBDECA77AB7EB9B772003812880D23D1F3AFD211B1D903D756AB7D386370345AE7A401ACB0CB729B91E5513B6654EBBBDEE35200309FC38B0DC9A91F35D0780582167E8D2DD996B3D44AAFA7EC96B4668AAA2D2791A33B127BDB651BED8878CE54D7D2B79E93D62E8E7AF3D08325FFD0A6B7BE6A17E647D4456BEC5EA3BEA369948EBFA58C25D1BFD0BA7F51DEE3912E58473E103192A388A2733A3E07DBB3B9D8E8E978DA176D3C5F4A29D3B77C0542227AD1324F4B8BE3DD3129C3B5566ABDABBB2DE7ACF5E58BDAF3D68460750EF2F09678D2EF96F2D0F26EA16C67DE0F25B426EA32BEB54D4B2B88B5FC5ADBBEE488E4F92B6D4AED41CA6BCD11AF113D272DD9B33A4C963662694BD2EA6E2D4D29AF6518ADECB455E51E67C4E30096CFA5D56DEDF732AD320FAD776A85CD9DDE16D6BEAECD55DEBE57CBBB65ACB6CCA565B8BC7CB53A2DF3D3A216A6956ECD76EBFD353C734B59D6523FB2A46BA1E5DB946996B4DA9F06C2044A36171BDA6A441E262559694B0E4AFE2C4F2BFF772DFD96033D9256DE73B4CE1E1D9C47E549B26F7116CAE792C350D677ABAD688E51F96FCDAEA53D4427FF3C7EFEFF521A9223E875FAADA2A82534721BD6894C73F03561576B0FB5F2AA399AB5B4A258DB74CBA96A1171BAB43497DFB5FE6571DCB53661A5E5C4D66C4A69D5FA422D2FADF2ACB51BCD3995E2D6F2A4E5BF165FCB9F672C6CA5A3CD7BB5383D8E793ED76A7147CFB72DDB353F62C1E254D7FC88327E59C69228CAC346A8B5078BD08AD846508087CDC5464AF6C932EA504B9D59EBF85B6019ACAD6147E1C953AF4D6DD0F708999A2D6970B7DA6DA1E5DD13DF33E9D79E7BD2F74E32F9BFF3FF6F89470F1687BD960FABBD5944CA726458AB1DADCD97BF591DB348DB6F8DE935675A1AB36BF9B5F4278D325D291DAF9D9AE0E8ED23D233CBBB7BEBAE254C2CF18F84C7E790845F64AC8A9453D9562D63E9C8F91B40631762A3C58C49970E739E6CE1CC8D6486D33A1B8B38827DA0D5C99AF535C2C19E196F54FC9A9DDE8589489A47B07B2E6C553ED40BEC9943888D3D10DDD6CC613038263D2B9B3DAB8023E25F123DF524D95BB3ECA96B80DB448E6B01C0FEB878B161D9CA1EE5048C76862C6994B4D21CE11C4BE91EE1ACA765726BBD8776EF40A3B60D5FC68F96DD1A6DAF4C6BCD3A97CE235BD08EA7799C9DE8F118EDAC76F43845342EC0487ADAA2763CB3056D1F605F1C566C789DEA96133C7AC2B7E669E4A0D8B2275DCECBB13AC796FB0365DA35FB5E07B1E5F87B2FA996B63C6774A50BB4E533AFD329C5B7D49F44D411B7DAD62E0E8F4CCF23007ACBBDF677ED12E8F2BCF6FE529EAC776E2C02C67A39588ABF077AFAADD576EF7D8396FD1696859E1176165B23DA40B4BCCA32F72CD02CF41CCFD4F25D9BDFBDEFA9F913DEB8B3FAA4343F597D1CEB3BB2230B1636171B3DAB8096700BD6B3CA6B761C4BA7D70607EFA035F23E404FDA925069D9919CEDE80A7AEFA09F4FA4231C9951F537222D2BDAFB47049725BDD1FDD363AF749E4A1BAD77F6B6538F80B13C6FD9B2E4A786268AAC8EA6670EF08C51B57EAAD11A833CE1F3782DF1D93B07D676E55A4E64AB3CA4C5214F9BD4C6FB5A981168EF6599632D6D405A88907ED3D22FF3EC154A1A527DB7EAA5270F880F28D95C6C58573E52F24D4AD1C6BE762769AD384B93C6D6AB09A3D2F63A7A23ECF4C4916C6C5D1F5B31435058D3DB8A9982B215A7F7FD7BDBABE6C0690EA8C5A9B552730C5B0EA3B50C5BBB8723E715EBBC57B3A5095E2DCDF2B9A51D48C251DAE5B3DA9A8D7771CD522EDAFBE67DCBB223598BB7FC2DF525AB1F60C967EB592BBFD1F870996C2E3652B2AD7C94E1CE156B47BE84B23812D4071C89198B312D877E641FA9398611C75DB33B9B3DE4D36B67EDC585ADF0EE22D6E2467631CB7FB76C789F036CC52EC4460E9D040000ACD456A6017A39A21804D82B6FD93A0347215FA928FFDF13178EC952879E7A8CC4916C808D91E545B9030000F4B3BB9D8D3D926FD3979761AD17BC977F4BE16631E268C12561B95418B9F01AB9945A6B3BDE7AB4B6D3ADE9BDF3523B4BBEFCDD8AB320DD05289955763DC7812EF5CED0B973F4F1BB37FFADFEB7D685F3911CBD4E01221C5A6CAC71BF239FC46B672A2D17BC6BFF9E35E048E95B9DCD9AC3E37154234EB5C546C4C96E61BD6C27C56B7DA5454BABA4F54592D685CCD6C55DCBBB7A56F235A7B8D52FA5FAF5D699E532B0A73DD6CAA4F66EDEB293CA4A133B16D1B1A5301ACD5A4EA3B5FF78859E44D44EB9A03562A1CA3BE7F4B4A7C845726B7AADB268A527F5BB1175658937B24EBD78DE73EF0B54702C36171BDE0E670D5F0EAC5647AAB6BAE9C17B19CCE35048E958F26B758E6A0E8FD7B192B01E71F138D3651C4FDDF50EA623C5A3A53D686D594B57B2D5EB60D5264DCD56CB0918D9FF3D61BCF66AEF6C1D8B5AF16AA2C9DADFA432F7385DDA738D9E9D15ADCD8F7078CBB8169BADF7F1CC439E85865A3C6DFCF5CC1BD639A74C3F7F666D4F523BF62CCE49B4C2680B17DAC28B67412EFF3D8F6F8D1359E8F20AF29E459D9ADD9EFE04B0B9D868AD2CE6BFD5E2687673A7C03341ADD95134876DF9BDC6484759FB4D737ABDF4946B64C29E999F59B6463BD0B3EC4893E6ACF446DA583B0FADFE343ABD32AE756C91C658EB02816717A9B4ED11A0B57CD61CC61E51AB399F9EB1265A2ED6F15912B2ADF8B970B03A8B6558EF1CD4BBC0E1C1FB5EB5DFACFD268F2F2D72F60824295D6F3E5BCF5B781733007236171B399E89D16A6F8D38BD1C259F7B86F200A863ED1BBDCE896765B6B5126C49A75C4CEADD5D94D25988EE78CF1C9BB45D8359F1D6D8F91F416F5ABD6DD36B678B45BC5E9877C1CAAEC4464A345E008073C4BA8B1DB157FB7B347B9E9BD67454F75C0E7B813202B8CDEEC4C651E09C22AC01DBD497C325D5F5A5BC270000203642484E81F5E2554A4CB67B66C4718CDE2F8D8C3E1E32FA88C95E897EBC40B2D553779E343D770E002E0516F500CE03C4869151170F737BE73C681ED5B96D7D6529A5F679F3F237ADEDD42E4C96F1A3E7AB73FBE53BCDAC979142C9F3CEAD3AB1DA2AF3EF497FC15367D29787221FB7A871B43E08B739EA58DA4B6B516FF41D4F0098C7C5898DC8E0344318F45C90D4D0BE30A2A56BF97C9F35FD32ADDABFAD767A9CD41C4F9AADF06519B7CEA2D72EB44A79D3CA3FAF9F5A1E5A65DD4AC7B333A7E5BFCC6BF9DC8A67B5BFD56EADCE7F99CF5A5F921CA0DA73AD9D68F6CA3C6BE1B4F4AD696D4D6BDC5A888AED1E1BD1747AD3D5C6D2A310CD736B87B2B57870EE8B796B7184B1038EC1E1C48665326A3952B5DFA44171E6A0657564AC684EF0F2BB34A9D71CD856DE73BBB5E7F9DFADD5282D4F5ADA395A599665A239872D4A4774A4A3D40AA3090D8F733AAAED95024A123796DDA2C55EF94C6A6BB5F82D5AEDCCD226BC02BAF6EE9EB26EC5B70A2D4BD8561F9CE9A85B4595351FAD95F185DE77B4EE5E59161AA4DFF2BFB53298217A5A588581176B9BD6F2152923EFC29425AE36EF5AF1C6ED192B6BFDC13AEE21F4A0C6E66263F46A77A4537B06FCD1B4C48D65C7A1B61ADB4A4B73AA2283ADC54996C26AAB54DEC9427BF752548EA8EB9ADDD9D4EAA955B79A9D1179E90D6B2DBF1979F64E8E1E5127A5E9C5B378D2B2A32DC658C7A312EB028294676F9BB5E4C3320E96B6CAC583998B0851015A2E72E4F65A76ACF12CF95AB3CF7AD1448EB77C6A616A766AF380B42054DACAC394B6A567B505A69C56BD49615B73B1243AD69C03E17874898DABABABF4B8D2B2A4E735A481F3459BBE413DDAE0B7EE28B55536CBA4B776BE47A6E7B5155D4D893A3896FCB09AD3C7966577C4B1A237EDDAEE98251D693CF2F6C9DEDD925A9F8B3A3B35A16E2D9F1E7A6CD69C4CEBFC28891C6DE7AC27CDAD88B6AB94DA62B6B530562B236B1CCB425864C143B225E5D712BF271F705984C5C695E0F92E42C32B389EC4B5AFB89D33D2C0724965E065EBB2D93A7D002BA5C31971CE2D71A3BF79F33143EC1F65CCED71A83DCFD7DEBDDD1A4D4C4777B23C713CBB5C23E8B573096D02FA08898D5C50D49EA794DC82E3499CF58F31F5D2DA6DD056DF580D0709DA468C4B72887A3817E78271741D2EB17CF34550C615803E4262C32320FCB6A7991E86F51E85767FC47A146136B3D23FA7C1D9735FA6F6CCEA0CB5CE8A976978CAD623728F5A77797979CF6ACFCC8B35DD358EEE9C23DE7E7009E57A29EFB9069423ED09FAD9FC82B817EDC2A126025A3B0CB99D56DA1687ADB5255ADBA65FAB434B4ECD885DA5D286A79C47ED6A69E791AD4EFF12561285B5F72CCBD47379AED676A536DC12AA5ABD2EFF96FA43999E8496B75678EB59FE569A9E3091D549CB38923F5F6C47EE12B4DA8F078B00DE332DA1E811EFD2F3489946C743A9BD8CAE0B694CDA12EB3D84D6F8AAC53B423BDFBA2EA26DBED706C0C2E662E376835EFE588E62D95628CB5D046D37A1B4A13966DA2036A3D369EFEB5D8DF61EEFCAE32EF12D3B38B5B46A9381943FED6FCB0A7F2D1F9AA86CB5935A58E99DCAB4CBE7E5BF4B87B7D6D65A0256CB939456CD6EEBF7258C471458C3B7FAA79497D6FB58C47FAB5D599C9E9A8393DBAFF5AB5AFB68D5BF3426B5048F94774B5FAED16A27512451AFB545693C9168B5A5D6B85FA65DB32F09C45CD84BF146D58536269561D7401A77B5BC697DA8B4AD2D9444CB7614AD76923F93E2B6E6A832BE672C6B958B14AE568F702CA4BBD66BB0B9D8B8DD616E8B0C6BC3AE4DD0B5789667A553A2C59D416BA2AD852F9D1DCD96E5B7FCF7D68027E5A3B4A395732D4FD2C453D64BCDA6F4ACF64E523978CBCEDB4EA383B635BF1127CC13461289565BB5894CB32385977ED7F22139612D019E8793DA502BFF917CD7F25873962D79F738629280B596B5655EB3088D5ABE5BF9B1F46D49744865DC72BEF2F7B5F40BAF8091F22EA5537BA732FF5ABE3CE393F41E91BC59C612CB78612D5B2D6C0B6DE142B357B63D6941C1E2F87BC632A9CD5ACB348F53B35D7B57D80FDA1588D94264A8D8C82F857B2F873F895FFFF7166C9D7E8E36687B07EA91694B6123F6ADBF472642C9E69675BCA7F6D5C3A8F7F0DA1951FF519B9A831F4DDB1B5F134D161BADD5E15AB832CD329C94574B7E2CE12531159D235B4E708F808E2C942DF12467508B6749A3B46B11D296B42CF9D5F216A93F4B3C6DBED4160C6A61737B5E61D0CA9B6791AEFCDDDB3EA471239AF785C838049745F86B54E5BF7BBE4205712EB1982FF19D617F6CDD0E7B05976525D2E2C4F48AFF5E66A43D4A14F6C61BF96E9ED5EBFCDF523BA9D99AB1E034325ECD896F39E6B57FB76C46F2B4565C4D64AF990FB82CA67C8D0AA1F1225B4FC80000395BED4AC176F438A7D2AED639B3A7D316004766F33B1B47C17AFE588AE7DD668DD2739C017446D69F457C8E3C037BEE4E42E4FD2CC781A4670097C68823AC116AC7966AF9E1280FC07E39BCD8685DA41B69DF1A36A75C19B15CEC2B6D5ADF453B7B5ACB97554069E1A4AD662DBC96D785DEBA1CE17C2EF1A4C94E0BD7C262A7756441CAB3949E14AF968E96C796ED16A36C6AEF1029975A9BACDD6DB0B65D4FB9E0283D61AB72E8196F5AE363340F7B10B9D13C4416BD2CE528DDB958C258EE31490B0A6B2F02968C5E90B4BEA7F4AC963F6B7A973E8EC18B6C2E36BC9D4BEA4035A7A00C13C1D3692C61BD4E9F9677EB8A4ECF396B8F6365091B15262DACE78BCB38AD0152BBBCD70AD7A2B51356CBEBA89D2BE96844CBF9AEE5D7DBB746D9F4B4770B96B3CC5A3DD4C2597FF7B4752F3D13FF5A0EAF77BC8E3AF12D7B163159DA6C8D79565B16E1BB846BD54BAFA0D716372C4EBC65D12B22A896DFCB45BCDABF5BF3661E4E5BFC29F1B4CDC862A5C75FB1F807B97DA9CC2DF56059F0426480C4E662C33A799771B4BFCB67B3572D7AD006C7DAC09AD3D3C9ADE1AD83BF37ECC83CA4344F708DCC63AF9D196DB837BDB5F3B40746B4094D548EA667272EE2C4B6ECB716066A7F97F4CC1796B0DA78E2994FCAD56AAB43AB3DD3763EB5F839AD39571B47ADCEADF6BB55D4F5E0EDA75661E16D9B91F1C21AC7DB1625DB9EB17E0F3B6E703C36171B29CD6FAC47E90CB304C325D0B3BA0FB0366BB6BD513B7192AD1A3D2BE023F31145DB698A8CD3239DEBA8B3D8137E54DC9136D660EFF3CA16E57894BA837DB10BB1010000EBB1E502CF919C9535762C4166D4B15100D816C486919E33C4232F7DC1E5316A45F4DCCFD68E7EBFB58F5FEEF9B827D860AC7F4EE4685749E4CE84252D005817C48601CFC5E71A9633CAA3387787722B4696AB77522DCF7DF7A499B7C5BDB50F4F196B65D87B693D72C65ECA93275E2D3DCFB1254F9A308ED685DBDE3A2C6DCFB6A1D9EA394637EA82B1F50EDFCC637C479867AD63895456B58F36581655B5B4E072390BB131CA21902EDC792EBE59C3CD5801CB0703CDE1D22E164AE1BCF9186DB3270FB5C9CD7319B00CDFAABB88D3D91216F9B9EF08659ADA45CF28ADCBA3D672B1BCE7E8633A9E8F33441C7B6B7FD41C310D6B5BB43A8052DA6B2C9294698D182B3DEDD2EB8CB7EE5058F26F15FFAD71AD954E6F7EAC63A756266B5C30969CE3DA586E71A44B1B4B1AF9DF79DA521C2DBF9EB45B7134B1574BBBD5D7A572E2B2385839ACD8B04EA235A213F348AC13A965C2979C5309EBE038CAB1D56C4627AE329CB67BA4AD3CB6EAA136686B71A28E91A53D8C6E8FA3ED59561347AD5C8EC69366247FD177EA2D0BCBB8E8D9C189889F9683D472606B427B8473B6D82CF3EA1993ADEDB9359E7A17ACAC63E9E8FC78DA8AD7F6682C423277A02DF56A996BCB453FCD5E69D79AFF48FDF52CD0E48B2FEC604084CDC586A7E1CED86DE88DD34B6BE09726C856B8569A23C27889AE9E7A7668AC83AC264E5A71F3DFA24E9066F3A8F44C66B00E9A13D913BF4473922279F22C26596C4BBF69ABB6169B917C44D8729C39525FF6CC7596BAB7D88C38E41E116EB5398B23D53FEC87CDC5867570F76C731E8D3DAE0AADC528E1B39795630098EF24ADD1EFE8DB97CB1EE605DA1F9C139B8B8D1C6DEB928E0700000000702C76253624F62234A2177FCF7D6706E641BB01000080237308B1B107AC5FF028F15E4083FD32E2AB38A5AD05ED42ED887673EE5F0DF17CCCC07A79B376D1530B0F006359F38B6800308FC38B8DF28B25AD5D04EFC5AF115FD1D12EA08D1E38BDBB2F3306F31197377B8938D7967C5BBE7062B5A3C5A95D8EAD7D3DA7B421D9D5BE98E2C9778DE8A5DAD6D7BCAC824CB22F2189B99AB0D3FE1EC90C218B53065B136D8B5ABCC8F80A00DB7258B151FB2CA2B48B50E21122B306AD32DF3D58575DAD5FB28A3ADD963C94E9B41C4D493CD69C4D8F732AFDEE159565DBAB85B1E049B7F521058B5D4F580DEBD7B8B45DBF9A435F6B1BA37617CAB879B94ABF95F9F33841ADBC4A3B28D6F8B57852FFDCAB13268DDBA3DAE94C22C76B353B525BF00AEAAD77D3F33C68FDBF8696576B7FB08C4523768AF7D61E177AE6E7238D1D700C36171B1E274FEAE0B57F473AC6DA9D4972B672B44978F9BD164F4ACF9AAF1623449234194ABB555A1E5BF9B13887D13693D7E11A6DA877228E84EDB5D1DAF58B3C1BCD2C67CEE38C8E5CC9B5EE2679D26AEDAA69BB552DA4B8DEBE5EB3E921B24BD65AE4B186D1C27BD3D21673AC789C6A296DA91D8E984324AC42A65CA4B4101185ADC54FADFF48762C8B8423C7136D31D0121F2E9BCDC546CB598B0C0647C2BA621F997866322ADD969364158F5B8ACB736E9FF0225EA13F42948F42DB41B1A465D955F3EE46687D471A1F6ABB61B53C78CB4EDA55D3B0D4BFB4BAEFB553E64773544B7B5AFC327CCDA1B6E4DF2A22F6B278202D68B59C7D6D81A0B6536969FF2D073EB7A3ED16957990C278D11603015A6C2E3652D207F64B6BD07B5AE9053BD4C7E571E43AEF75385ABFCDDE619356A797DFA2738667B53A627704BD2BF3D2CE91E66C476C1F859A3893CAA50C27D9F3EC08D5D2EF156B33EB21DACFE1B2D985D8C8C1B10600002B1167CD6A73EF58777E5BF17B6C9C235EC1508B0F00CFD99DD83802962DCEFCEF5A1C062368B1F551B923429901C008184300C6717162433AAFBAFC6D8DA785A99DD1DDDB9D8B321F3923F2A4BDDFDE8FC5696D247F26BD5B89A55D6967AF35A16AB950683D436F49A7462B5CB4AE5BF7B8A4B023CEC7E7E978170A220B0B5CB204B88DA70FF7EC42409BBDCFD9B07F0E2B362C5F54484977165A1701A5CB735A5AB57F6B615B4E46E42B1916B477932E207AD3942EBA690EBC949F51656075FCB5B4A50B851E0152E649121AB53C6B65A7D96EE5C9924E494B544B694969D76C59DED77B1CC49AA7DA186129CF9620B4DC2F880A578DD1C26F349E713D6AAF55D6DE771C9DE7DCA6770E6AEDBAAF4DB4EFE7CF25BBD25861598069D91F8D775133722A62543BD4E66C040744D95C6C781CA7329CC5B6E7AB0C16A7623496896FD6646629176975D79AA6358DD685BC1165D05AF1AEC5D59E5945A147A87A45AD250D6FF82DC2680E4034FFBD79AA8593764E5AE55F738EBCE3534AFEF62BC5B7382C657F2C1DDFDABF47E075AABD8E992640F23A698D7DDEFC7A1783F2BCF68C81AD0581D66252C43995D26AC58FF6CBDAF3D6024CB45E236DDD92AF3CAC65F1A2958E44F4BD67F92270196C2E367A56B1BDB6D78ADB8B268266A5D10A37B33C2CEF3B22FD35DF017C1CA9FC22791DD5A647892CCBE281B6CB66D999994964E5D7F27BFE7EDE5D85689AD678236CA414DB19F5D8F732ABED7817604A66ED12F52ED06C59DE471AA7615F6C2E364A68CC00007319E9F06C3D66CF5C8CD9FADD66306267F412B8D4F70698C15BB6CE000000008908E33D000011464944415400009C27880D000050F1DE3900000058D8DD312A387FF8AA055C026B7FF5A6E7D2B4C56EF40E43EBD2792DBCF5722EE3481DC65800D813172B36BC9F959C91EEECF43C13CE5A93D3F2FE4C863E6639AEAD2F9B58BE8CD6FA528A96E7F2BD22F64730A29F488EB0A5EEBCEF255DFA95BE7C5586F5B6A3F20E4334BFAD7C7ABE7EE7F9CCA996172D8D964D4BBADA17B1A40BF9D63A92BE56D5FAA2D1168CCACFDA227E4D7A2EE3CFA8FF35FD15386F7629367A3E7D5A627190A47467119DB0F3F8D2A762A5AFA9B4D2F77ED64EB2AFA569712C6BF9F4E2B1DB72103D712DE99578CB3CFAD9C5C8E712CB365673805A8EED12C69ABF56FC59139EB71EA4DFB438BD9FACCCD1FAB5E56B4C5E67564ACB8B76B13CCF93F702BB279F2D21661D3FB4B016012E892DABE06A89134D905AE85D90D39CDDC85856CE3B96F82377F8AC44E605EB18D79A6FCBF9DF9A2F4F7BB3C4439840C9E662C3D250A3ABE0928324B17607E97D276990C9FFB6AEAA79F293A76FADAB5A9AAD41B5478C69B49C0DEDB788E33B4A54F588AF485C4B5D799DC2489835FAA5278DDEB21C41AF3DCBE282C7F11F414F3AA3EA6F463BF0F41D4B9FAB8D419E3ED6B348E2199347F769AF185DE2D4D2EC995F5A58457C642EB1CEB7D667B99D5618A93D202CC0C2E6626394B33232DE9E694D4633CBB38CEF49DF9BE6CCBA8B4E82476D875BA70FFBC423CA613F8C1ABFB748BB8791227FEB317154FA5BDBD9BA1CE1386C2E360000607FE0480000C008F8F42D00000000004C819D0D000000D8257C1109E0F820360C8CBA50C740795C46D7A3F7F399BD69CFF812CBD69FA0ECF9BA93E7CB2A5EDB00299DC7E5D9E8B81719BB2CFD79C417002F89ADC7688085B3131BD1CFFB79BE4AD4B295B3E6A7F7225F0AB10EF0BD134D2B8D3DA039A05A3DE6E1ACE4652B7D1258FA1A96372DC956F97BF45394E52738A5344BA28E43AB8F7B3E5F5AC6B3E459FBAC64AD1C675CC46ED5A7356D0B97E0B0F42C266865DFFB89E1D2DE5A76165BDA38A5A51DFD92552B6F3D73716FDA35DB2304D468468CED12D67A3DE7B102621C4E6C589D088F23233927A3BFA0E411341E6729E20C582606CD81B2E6CD9A8FDE01D15BEF9A8D9C9AB330F213809288D1BEF43562C5D4FA09458F1D8B28D3F220E175DE677E59451A2F34A138AA1C72AC65D272846B36246725EA3859D38930CAF92C9D6A8F63DFFA829DA54D8C1212165B96B228CBC0D29E67F5CB08B3FA94B430544B5F6B1F6B7F7A7754D9232C20CAE66263D60A84A7036CD5596AAB46B5DF6BF4EE927827865965943B323D69CC5A7DB5DA1B91EE9A69CDB039ABCDEC6D326B39979EF033F26009A7EDCED4E28D70602DE978F03A6C9E79C3BA081215A8BDC2BE87D6BCD21A8BF7D61F4711D92DF4F42F2DADA370D47CC3F66C2E3668BCDB4E3C7B604D471D00C68BA22D167766F6796DA7AAC7DEDE394A3ED760ADFE0070096C2E36000000F6084E2300403FFC773602CC3A6B0900000000704EB0B361C0FA7587D6253A56C98ECBA873E6357B92CD916D68F697D0B6C07A96BEF7AB57AD700030872DBEE60400E339BCD8F07EE9A5741A6B4E647939D07ABEB9E5D0ADE1F0452F6A4A613C698E70F04650ABE3C8D75EF2F6601592BD8EADF61513EB85D85A5E2D6D31BA63E76DE7BD5F0CB37C8233220EAD0270C4D7C0A4F471A08E8D65EEB8243C775E2C63601E1621D266F422194094C3890D8FC3DEFACA93E44446BF90E4FDC293C5BE358C250F56272CFA85B0999F73F4E625B76F75A4CB78D284A709CDE8806EB9901A719AA53891B628A5E5DDE5EBFD0291B79F59F17E59C82AAE5BCE93F5CB479A4D6F3FF29451EF0E5BCF9863D945F6D0FA0A57C4B624DC2D4EB366A7642D1B9A3DEF1854FB12978655A479E6444B9A1EB4859AD6D7A97A9D7FAF3F90A73362AE9DBD030FE7CBE66223EAD88E08A739916B74168B931071947BC278C28D8837BB9C17FBDE7466879F6967CD7A18D9EE46A5379BDAE4DD12F94B98D6C41C75E67A1D260DAB8361B1E1DD4D95DECDE2E048613407BAB5C864751ACB71475AF4F0081269E5DFBB005786D304587457B2672E5D7B0C8C949FB4A055FE2EF5538F002BF316159423CA1561015136171B97DE50D776D600600C11F13E43946E21F2D75A90F0384E56A751CB83451445C45D2D9E77F7BCE5C07A6D4404CB39CE45B53AC99FB7CAA6B6A0551375A3C6812DEBE01CEB1FD66173B1010000D0CB5A3B68A384D6083B5BE7E5DC680986881D00406C00000000DC02C100300EC48691E8BD09EF1965D82FDEB3D59EB0D28A5A49B4DD8CBCA45DDADC435BB65CD2ADFDBEFC5BB2E93D130F000000B739BCD8B03AF3918B6D793C8B83E1B93C35CB51F39CE11DF5E512AFC31C49C34BE45CB355505A2E9EB6CE7EB76C4AC2D57BB1B7F7A2A7C5BEE72307AD4BD2D17C4967E15B178CB50B9723CED95B912EFFEE853DE669EFCC682747A3A7DD78E6A7DEAF3C9D232C92C09E3894D88838F3AD70A3E245C3B6DEC9328896614638FA3D8EADC57E9ECE08A4F4B5D5ED9A0D6B5A259263D163336A6BC98FE6ECCCB8A8ACE52517262DE77F649E2CEFEF399F5FB6A5E8579DA4BE621141B57C45BF0E65C122845A5F78AAFD667D570DCF2E63196FD4AEB3358D685E4B9B511B6B3B9BB5AF3479F0CC4F799BB2EC5896E94485616421ABF55E6538EBBCDA0A27F5E3DA828A8436F721F8406373B1119DAC47861D112F4AEBE855641018EDB0ED2D4E8D96B33FBB5EF736B8EE293F963AD8537E5B442656C939AAD9B6D8ED5DB58C8EBB5607C82A3E7A1DBDE8EEAC269A3CCE979646FE5B4F5ECBFCB5B03AA34BD8D60240CDB6271F33FAB6A5FF784E3D78FA7464712FD29E7AFD80965D6931CE33EEE4765A71E1B2D95C6CD0385F64F66AF43942D9C09A78DBDBE8F6D96B6F767CEF6ED18C3C44E27A57937BD35BD38E7555BA15BE371F6B61CD634D14791CFA5963C12C3FA0B678B0759EE0FCD95C6C000000EC894B719E46399BE7C6A5BC27C05ABC65EB0C0000000000C07982D800000000D898FC6ECFA88FA700EC018E519D29DE33C7AD4F858EE448E77E2F915AFD68970AB5AF9E48F6A5F8D62F1FB52E664A971FAD68F1CFA5DD7AFAE19A7DB635069D437DB4FA53E42B47167A3F2430F34304791A9631227F3EFA6B57655AAD7A92BE70D54ABF75693F6AA31547A3A73D02486C2E362C1D778FB4068AFCDFD1C1C862BB157EC13A688D287FCD41B3E4BFE55C7ABF9621E56FC457343C4E7824BE64530A5BBEA7944E0BADCD96FFDFEA07D26FB5F8F933EDB2AE36F9E5F12393A4165FCA9BB7FECAF4F2772B7F6B8D1FAD722A299FB7FA612D6CB43F4A6D327F6611925A1A79FE34A7292A56478E91527FB2F49FE5DF1E2C36CBE796F8129171B535C6B4DA90350DCF38D8AA27A9DFB6D297C22CCFADC2C083D71788F805081328D95C6C583AEE1E91F2396A3092D24C29564E96B0D601AE85E44458D36939561E4744B26F7198AD688E4D6F7C299F9A13B5BC63CB89B7E44B7A66692B96DFB4342CF968A51B69CB5A7C4D20598446CBA1B3888A3C9CE6786A63542DBC259CB79DB79CD5327E640C6A8DC39AD3A48D415AD98F98A36AEDCCD276A30E76CBA6678E98C9A831C6928637ACB59E5AF64795E3C836500BD33B96022C4C111B575757E9B1A3651EB1417B56242283512BCD3D9753EFFBB6E2F7BEBB67328BDAF4DAD5E24BF96C39C5521AD0874584B59E456C4BCF5A6391F5B927DDDE761EC98F07ADEF449D2D4FFC99CC2C2F0080190CBF20BE088DABDE7D660000000000383443C546BEA381E00000000000B86CF8F42D00000000004C01B101000000000053D8FC6B54F5A356B76FABB5BE787229B4BE4E722EF45E56F47CDA4F8B77F47657FB2212F4E3F98A93F52B3FDAE75BAD79F07CFDCC93CF115F7F1B15B6D647F748CF17A346A69FB3455EAC9F17B6C6B57E4D6C6F44BF3E19793FCF98313B2FB02FB6BCDAB0B9D82885454A75279086DE3FE91F85DEFE6071066B8E5CF979CB23B7BB237E4EFA2878BECF6F157A9278F03A62164A91D1CAA79607EFE79D7BC3D6FAE81E2905DD56E9E76C919756DB8908EAB20D1C81C8824F749168C6A2A4372FCC37FB44FB4AEC6C2132546C2C97C2F3FF6FC7B1D81D90B933E052CA61F67B5A3E797BF4B23ECA67928F88F7D3B1D1F29FD53EA5B6E1B53933FCB9CC0B7BCAE35EF3D2D32EF6F44E2D22791DF97EBDB68E54D6B03F86DFD9F0080D0000000000385FA65C1047680000000000005FA30200000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920366015AEAEAEB6CE02AC08F57D3950D79703757D3950D73012C40600000000004C01B101000000000053406C0000000000C014101B00000000003005C40600000000004C01B101000000000053B8B37506F8BCDAE5405D5F16D4F7E5405D5F0ED4F5E5405DC32836151B8F1F3FDE327900000000009808C7A80000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A9B890D3EA9767E4875EA7D0EFBE7EAEAEAD9FF6ABF4971E058E4F55CAB6FEAFA3CA15F9F37F4EBCB63EB397B13B1717575951E3F7E4CC33D23B4C65AAB6BDAC07159EA6EF95F5E87D4F77991D773F9A972EAFA72A0AECF0FA96F53D7E7C71EE6ECD5C5C6F20229251AEE9990D7A9F43CAF6BDAC079427D9F37793D52D7E78BE474A4445D9F3BD4F565B0C538CE9D0DE886FF38E365417D5F1ED282029C17D4F365211DAB01180D620300C2E09C9C3FF96A17009C07F9D11AFAF6F9A3DDD958833B9BA40A008707A17119D4CE73C3F941DD5E0ED4F3E5B1F538CECE0600B8C13101383FF2954F56BB016014AB8B0DE9120A9C1F960B47B481E321D519F57D7E480E27757D7E945F26F25C1CA5AE8F05FD1A525AB7BE373946B5BC080DF63C283FA396D28B135559D7B48163534E56D4F779529EE7CEEB8FBABE1CA8EBF3827E7D59ECA1BE37BBB341833D1F5A7529FD4E1B3826D4F765A1D51B757D9E483B97D6B0B07FE8D797C5D6F5CD9D0D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A880D0000000000980262030000000000A680D80000000000802920360000000000600A77BC11AEAEAE5E78F6F8F1E3177E5B9E69CF3DF6BDCF67707575F582EDDA33296E495946353B529A351B00000000007BC22D3652AA3BB8A553BCFC2D3DB7DA6E39D65AF8D978D2D2F2D92AABFCB9B73C0100000000B662D7C7A8BC8EF44CC7BB14163D6949E221DFA9919E03000000001C85B0D8B8BABADAC401DE22DD9AB018213422B08B01000000004721748CAAB6326FBD576175965BF7238E789CA8B66BD16B6FEFEF0C00000000978B5B6C58EF5B488E75D441DECAA91EE9D08F1447080D00000000D83BBBBCB3B1A7BB1A8BFD5C3C6D0D4203000000008E805B6C48CE76D409B7C6EBB1DF2310962362F9656D6BBADADFB9FDD6A570EDF81800000000C05E091DA3AADDC1F03E4FC97787217AF7C31BD64AF9E9DA3C1DCB17A5F23CD53E7BAB3D2F850BE20300000000F6C8B0FFCE46F4B9E74B4FDEE7A377014A81A085F37EC1CAFA6E080B00000000380A55B1B1C5A7658F687BCF6903000000006CCD2DB171FDF64F4BEFFAB6F76E9517000000000058890FFEE4BD747AE53DE91BFE83DF993EEDD33E2DBDFD9F7B7B7AC7577C5D7AD7577D8DF8FB277FD227BBD2786167E3833F796F4CEE010000000060B79CEEBD9E4EA787E9E66337E98DFB6F3C79767A98527A2A34AABF9F5C69DCC98D0100000000C00571F3467AEDB5D7D2FD37EEA7BB2FDF4DE9E68DDBDAA0F8FDFAADD72EF35729256E1C0300000000C070961BCC080E000000000018CAFF0FA1EF1D670D3E76550000000049454E44AE426082>|png>|795px|441px||>|EEG
  recording from time index <math|i=1001> to <math|i=1512>>

  5.a. There is interest if activity of the brain in a new time window is
  different from that in previous time windows. For electrode <math|j>, and
  time window width <math|w=256> we can form a matrix with <math|p> columns
  in which each column contains a time recording window.

  <\session|octave|default>
    \;

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Construct a table of the norm of the projections of the next <math|q=16>
  signals (<verbatim|data(p*w+1:(p+q)*w,j)>) onto the column space
  <math|C<around*|(|Aj|)>> and left null space
  <math|N<around*|(|Aj<rsup|T>|)>>. Interpret the results, asking the
  question: ``is a subsequent signal indicative of normal activity or
  abnormal activity''? Repeat for two other electrodes, one close to the
  above (<math|j\<pm\>1>) and another one further away (<math|j\<pm\>16> mod
  32).

  <\session|octave|default>
    <\session|octave|default>
      <\input>
        octave\<gtr\>\ 
      <|input>
        j=1; p=100; w=128; Aj=reshape(data(1:p*w,j),w,p);
      </input>

      \;

      Let j=1. Then create a matrix named 'new', containing data from the
      next 16 signals.

      <\input>
        octave\<gtr\>\ 
      <|input>
        q=16; new= reshape(<verbatim|data(p*w+1:(p+q)*w,j),w,q)>;
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;
    </session>

    Perform QR Factorization of matrix Aj, then obtain projection matrix P
    and orthogonal projector O.

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        [Q R] = qr(Aj);\ 

        k=rank(Aj);

        Qh=Q(:,1:k);

        P=Qh*Qh';\ 

        Im=eye(max(size(P)));

        O=Im-P;

        \;
      <|unfolded-io>
        texmacs
      </unfolded-io>

      \;

      \;

      Store the norm values of the projections of 'new' onto column space of
      Aj and left null space of Aj into matrix C.

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        for i=1:16

        \ \ C(1,i)=norm(P*new(:,i));

        \ \ C(2,i)=norm(O*new(:,i));

        \ \ C(3,i)=norm(P*new(:,i)+O*new(:,i)-new(:,i));

        end;

        format bank;

        disp(C);
      <|unfolded-io>
        \ Columns 1 through 8:

        \;

        \ \ \ 220.08 \ \ 250.54 \ \ 221.89 \ \ 428.31 \ \ 311.22 \ \ 184.70
        \ \ 150.81 \ \ 266.38

        \ \ \ \ 30.00 \ \ \ 35.35 \ \ \ 31.32 \ \ \ 27.45 \ \ \ 26.98
        \ \ \ 24.68 \ \ \ 21.99 \ \ \ 23.44

        \ \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
        \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00

        \;

        \ Columns 9 through 16:

        \;

        \ \ \ 418.28 \ \ 182.44 \ \ 206.67 \ \ 182.07 \ \ 198.83 \ \ 204.95
        \ \ 236.09 \ \ 216.56

        \ \ \ \ 24.70 \ \ \ 25.73 \ \ \ 28.36 \ \ \ 25.27 \ \ \ 30.33
        \ \ \ 24.65 \ \ \ 30.61 \ \ \ 34.95

        \ \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
        \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    \;
  </session>

  Let j = 2; Repeat above process:

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      j=2; q=16; p=100; w=128;\ 

      Aj=reshape(data(1:p*w,j),w,p);

      new= reshape(<verbatim|data(p*w+1:(p+q)*w,j),w,q)>;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [Q R] = qr(Aj);\ 

      k=rank(Aj);

      Qh=Q(:,1:k);

      P=Qh*Qh';\ 

      Im=eye(max(size(P)));

      O=Im-P;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      for i=1:16

      \ \ C(1,i)=norm(P*new(:,i));

      \ \ C(2,i)=norm(O*new(:,i));

      \ \ C(3,i)=norm(P*new(:,i)+O*new(:,i)-new(:,i));

      end;

      format bank;

      disp(C);
    <|unfolded-io>
      \ Columns 1 through 8:

      \;

      \ \ \ \ 204.99 \ \ \ 161.25 \ \ \ 198.91 \ \ \ 282.60 \ \ 1090.18
      \ \ \ 731.81 \ \ \ \ 94.77 \ \ \ 143.45

      \ \ \ \ \ 34.06 \ \ \ \ 30.45 \ \ \ \ 36.27 \ \ \ \ 34.57 \ \ \ \ 32.08
      \ \ \ \ 36.92 \ \ \ \ 21.09 \ \ \ \ 43.07

      \ \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00
      \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00

      \;

      \ Columns 9 through 16:

      \;

      \ \ \ \ 209.08 \ \ \ 215.56 \ \ \ 123.22 \ \ \ 131.93 \ \ \ 225.19
      \ \ \ 258.48 \ \ \ 253.40 \ \ \ 292.72

      \ \ \ \ \ 34.22 \ \ \ \ 27.18 \ \ \ \ 18.36 \ \ \ \ 23.59 \ \ \ \ 32.95
      \ \ \ \ 18.09 \ \ \ \ 21.55 \ \ \ \ 33.39

      \ \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00
      \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00 \ \ \ \ \ 0.00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  Let j = 17; Repeat above process:

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      j=17; q=16; p=100; w=128;\ 

      Aj=reshape(data(1:p*w,j),w,p);

      new= reshape(<verbatim|data(p*w+1:(p+q)*w,j),w,q)>;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [Q R] = qr(Aj);\ 

      k=rank(Aj);

      Qh=Q(:,1:k);

      P=Qh*Qh';\ 

      Im=eye(max(size(P)));

      O=Im-P;
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      for i=1:16

      \ \ C(1,i)=norm(P*new(:,i));

      \ \ C(2,i)=norm(O*new(:,i));

      \ \ C(3,i)=norm(P*new(:,i)+O*new(:,i)-new(:,i));

      end;

      format bank;

      disp(C);
    <|unfolded-io>
      \ Columns 1 through 8:

      \;

      \ \ \ 290.96 \ \ 275.88 \ \ 206.70 \ \ 265.03 \ \ 449.62 \ \ 333.15
      \ \ 192.56 \ \ 270.27

      \ \ \ \ 23.01 \ \ \ 29.52 \ \ \ 26.65 \ \ \ 21.87 \ \ \ 26.67
      \ \ \ 24.19 \ \ \ 27.60 \ \ \ 25.95

      \ \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
      \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00

      \;

      \ Columns 9 through 16:

      \;

      \ \ \ 357.38 \ \ 217.53 \ \ 250.50 \ \ 287.23 \ \ 300.07 \ \ 247.17
      \ \ 202.77 \ \ 200.94

      \ \ \ \ 33.26 \ \ \ 25.53 \ \ \ 20.18 \ \ \ 26.99 \ \ \ 26.73
      \ \ \ 18.55 \ \ \ 25.58 \ \ \ 20.28

      \ \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
      \ \ \ \ 0.00 \ \ \ \ 0.00 \ \ \ \ 0.00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  For j=1,2, and 17, the projections of the next <math|16> signals onto the
  column space <math|C<around*|(|Aj|)>> and left null space
  <math|N<around*|(|Aj<rsup|T>|)>> are both non-zero, implying that there is
  no solution x that satisfies Ajx=new. Thus the subsequent signal indicates
  abnormal activity, as no linear combinations of Aj can reach the next
  signal of activity represented by the matrix 'new'.

  \;

  \;

  5.b. There is interest if different electrodes show different activity.
  Over time window of width <math|w=256> form a matrix containing <math|n-1>
  signals and compute the projection of the remaining signals onto the column
  space and left null space. Do this for all 32 possible choices. Interpret
  the results to answer the question: ``is the information in signal from
  electrode <math|j> already present in the signals from the other
  electrodes''?

  \;

  Because n=32, n-1=31. Thus take each column of the data(of window w=256),
  with the column representing an electrode, and project that column onto the
  column space and left null space of the data without that column.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      data=EEG.data'; A=data(1:256,:);

      for i=1:32

      \ \ colRemoved=data(1:256,i);

      \ \ A(:,i) = [];

      \ \ [Q R] = qr(A);\ 

      \ \ k=rank(A);

      \ \ Qh=Q(:,1:k);

      \ \ P=Qh*Qh';\ 

      \ \ Im=eye(max(size(P)));

      \ \ O=Im-P;

      \ \ disp([i norm(O*colRemoved) norm(P*colRemoved)
      norm(O*colRemoved+P*colRemoved- \ \ \ \ colRemoved)]);

      \ \ A=data(1:256,:);

      end;
    <|unfolded-io>
      \ \ \ \ \ 1.00 \ \ \ 49.64 \ \ 521.53 \ \ \ \ 0.00

      \ \ \ \ \ 2.00 \ \ \ 65.11 \ \ 249.74 \ \ \ \ 0.00

      \ \ \ \ \ 3.00 \ \ \ 30.64 \ \ 547.29 \ \ \ \ 0.00

      \ \ \ \ \ 4.00 \ \ \ 34.83 \ \ 482.02 \ \ \ \ 0.00

      \ \ \ \ \ 5.00 \ \ \ 49.95 \ \ 491.85 \ \ \ \ 0.00

      \ \ \ \ \ 6.00 \ \ \ 69.45 \ \ 295.29 \ \ \ \ 0.00

      \ \ \ \ \ 7.00 \ \ \ 30.93 \ \ 502.19 \ \ \ \ 0.00

      \ \ \ \ \ 8.00 \ \ \ 22.36 \ \ 428.39 \ \ \ \ 0.00

      \ \ \ \ \ 9.00 \ \ \ 50.02 \ \ 595.75 \ \ \ \ 0.00

      \ \ \ \ 10.00 \ \ \ 40.06 \ \ 293.51 \ \ \ \ 0.00

      \ \ \ \ 11.00 \ \ \ 60.47 \ \ 428.27 \ \ \ \ 0.00

      \ \ \ \ 12.00 \ \ \ 28.57 \ \ 491.35 \ \ \ \ 0.00

      \ \ \ \ 13.00 \ \ \ 34.93 \ \ 385.30 \ \ \ \ 0.00

      \ \ \ \ 14.00 \ \ \ 32.48 \ \ 433.27 \ \ \ \ 0.00

      \ \ \ \ 15.00 \ \ \ 54.38 \ \ 309.62 \ \ \ \ 0.00

      \ \ \ \ 16.00 \ \ \ 23.15 \ \ 440.83 \ \ \ \ 0.00

      \ \ \ \ 17.00 \ \ \ 24.17 \ \ 437.32 \ \ \ \ 0.00

      \ \ \ \ 18.00 \ \ \ 24.79 \ \ 420.25 \ \ \ \ 0.00

      \ \ \ \ 19.00 \ \ \ 33.75 \ \ 328.25 \ \ \ \ 0.00

      \ \ \ \ 20.00 \ \ \ 35.58 \ \ 417.24 \ \ \ \ 0.00

      \ \ \ \ 21.00 \ \ \ 19.61 \ \ 425.15 \ \ \ \ 0.00

      \ \ \ \ 22.00 \ \ \ 27.12 \ \ 423.51 \ \ \ \ 0.00

      \ \ \ \ 23.00 \ \ \ 22.26 \ \ 438.71 \ \ \ \ 0.00

      \ \ \ \ 24.00 \ \ \ 32.32 \ \ 402.32 \ \ \ \ 0.00

      \ \ \ \ 25.00 \ \ \ 27.95 \ \ 368.07 \ \ \ \ 0.00

      \ \ \ \ 26.00 \ \ \ 38.81 \ \ 559.99 \ \ \ \ 0.00

      \ \ \ \ 27.00 \ \ \ 28.88 \ \ 407.45 \ \ \ \ 0.00

      \ \ \ \ 28.00 \ \ \ 26.58 \ \ 457.45 \ \ \ \ 0.00

      \ \ \ \ 29.00 \ \ \ 27.67 \ \ 369.87 \ \ \ \ 0.00

      \ \ \ \ 30.00 \ \ \ 18.21 \ \ 419.46 \ \ \ \ 0.00

      \ \ \ \ 31.00 \ \ \ 18.93 \ \ 408.78 \ \ \ \ 0.00

      \ \ \ \ 32.00 \ \ \ 22.04 \ \ 363.98 \ \ \ \ 0.00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The calculations show that projecting the signals of any electrode j on the
  left null space and column space of the matrix containing all other
  electrodes is non-zero. This indicates that the signals from every
  electrode cannot be formed via a linear combination of the signals of the
  other electrodes.

  Thus, the information in signal from electrode j is not present in the
  signals of the other electrodes.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|8|Homework2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|EEG recordings|<pageref|auto-1>>

      <tuple|normal|EEG recording from time index
      <with|mode|<quote|math>|i=1001> to <with|mode|<quote|math>|i=1512>|<pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>