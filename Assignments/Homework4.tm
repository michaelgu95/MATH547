<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for applications>><title-date|October
  21, 2015>

  <\title>
    Homework 4
  </title>

  \;

  <strong|Due date>: October 28, 2015, 11:55PM. Since multiple submissions
  are allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  <strong|Bibliography>: Course lecture notes Lessons 18-19, Textbook
  pp.340-365.

  \;

  <with|color|dark red|<em|Save this file as Homework3Solution.tm in your
  MATH547/homework directory before starting to work on the solution.>>

  Questions 1-4 will help you learn determinant calculation rules. The
  computer application 5 highlights \ application of determinants as a way to
  compute volumes within irregularly specified points.

  \;

  <strong|1.> (1 course points, 0.25 for each case) p.353 of Textbook,
  C21-C24.

  <with|font-series|bold|C21: >

  <\equation*>
    \ <matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|6>|<cell|2>>>>>
  </equation*>

  <\equation*>
    det= 2<around*|(|1|)>-6<around*|(|3|)> = 2-18 = -16
  </equation*>

  \ \ \ \ <with|font-series|bold|C22:>\ 

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|2>|<cell|6>>>>>
  </equation*>

  <\equation*>
    det= 1<around*|(|6|)> -2<around*|(|3|)> = 6-6 =0
  </equation*>

  \ \ \ <with|font-series|bold|C23:>\ 

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|2>>|<row|<cell|4>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    Using Sarrus Rule\<nocomma\>,
  </equation*>

  <\equation*>
    det = 1*<around*|(|1|)><around*|(|1|)>*+4<around*|(|0|)><around*|(|2|)>+1<around*|(|3|)><around*|(|3|)>-2<around*|(|1|)><around*|(|1|)>-3<around*|(|0|)><around*|(|1|)>-1<around*|(|3|)><around*|(|4|)>=
    1+9-2-12 = -4
  </equation*>

  \ \ <with|font-series|bold|C24:>\ 

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|-2>>|<row|<cell|-4>|<cell|-2>|<cell|1>>|<row|<cell|2>|<cell|4>|<cell|2>>>>>
  </equation*>

  <\equation*>
    Using Sarrus Rule\<nocomma\>,
  </equation*>

  <\equation*>
    det = -2*<around*|(|-2|)><around*|(|2|)>*+-4<around*|(|4|)><around*|(|-2|)>+2<around*|(|3|)><around*|(|1|)>-<around*|(|-2|)><around*|(|-2|)><around*|(|2|)>-1<around*|(|4|)><around*|(|-2|)>-2<around*|(|3|)><around*|(|-4|)>=
    8+32+6-8+8+24=70
  </equation*>

  \ 

  <strong|2>. (1 course point, 0.25 for each case) p. 353 of Textbook,
  C27-C30. For each exercise: use row/column operations to create a row (or
  column) containing as many zeros as possible, and then reduce the size of
  the determinant. Repeat this procedure until you obtain the determinant's
  value.

  <\with|font-series|bold>
    C27:

    <\equation*>
      <with|font-series|medium|A = <matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>>>
    </equation*>

    <\equation*>
      <with|font-series|medium|Performing row reduction to obtain an upper
      triangular matrix: >
    </equation*>

    <\equation*>
      <with|font-series|medium|<matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>>
      <long-arrow|\<rubber-rightarrow\>|2R1-R2\<rightarrow\>R2>><with|font-series|medium|<matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-2>|<cell|3>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R3\<rightarrow\>R3>><with|font-series|medium|<matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R4\<rightarrow\>R4>>
    </equation*>

    <\with|font-series|medium>
      <\equation*>
        <with|font-series|medium|<matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>>>>><long-arrow|\<rubber-rightarrow\>|-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|2>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2+R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>>>>
      </equation*>

      <\equation*>
        <with|font-series|medium|<long-arrow|\<rubber-rightarrow\>|R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-5>|<cell|3>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-5>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|-3>|<cell|1>>>>>><long-arrow|\<rubber-rightarrow\>|<frac|3|5>R4-R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-5>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|4/5>>>>>
      </equation*>

      <\equation*>
        The matrix can be reduced to:
      </equation*>

      <\equation*>
        <matrix|<tformat|<table|<row|<cell|-5>|<cell|3>>|<row|<cell|0>|<cell|4/5>>>>>
      </equation*>

      <\equation*>
        Of which the determinant = -5<around*|(|4/5|)>-3<around*|(|0|)>=-4
      </equation*>

      <\equation*>
        But since row 2 was multiplied by -1 during the row-reduction
        process\<nocomma\>,detA = -1<around*|(|-4|)> = 4
      </equation*>

      <\equation*>
        \;
      </equation*>

      <with|font-series|bold| \ C28: >

      \;
    </with>
  </with>

  <\equation*>
    A = <matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|5>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <with|font-series|medium|Performing row reduction to obtain an upper
    triangular matrix: >
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|5>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|2>|<cell|5>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|-5>|<cell|-1>|<cell|2>>|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1-R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|-5>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|5R3+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|14>|<cell|7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2-R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|14>|<cell|7>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|1|7>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R3-R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    The matrix can be reduced to:
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Of which the determinant = 2<around*|(|0|)>-1<around*|(|0|)>=0
  </equation*>

  <\equation*>
    Since row 4 was multiplied by 1/7 during the row-reduction
    process\<nocomma\>,detA = 1/7<around*|(|0|)> = 0
  </equation*>

  <with|font-series|bold|C29: >

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>>
  </equation*>

  <\equation*>
    Performing row reduction to obtain an upper triangular matrix:
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|2>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R4-R2\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>>
  </equation*>

  \;

  <\equation*>
    \;
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-R3+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|-5>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|-1/2R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|5/2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R5-R4\<rightarrow\>R5>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|5/2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1/2>>>>><long-arrow|\<rubber-rightarrow\>|-2R5\<rightarrow\>R5><matrix|<tformat|<table|<row|<cell|1>|<cell|-3/2>|<cell|0>|<cell|-1>|<cell|-1/2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|5/2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    The matrix is now in upper triangular form,and its determinant is the
    product of its diagonal elements,
  </equation*>

  <\equation*>
    det<around*|(|rref<around*|(|A|)>|)>=1<around*|(|1|)><around*|(|1|)><around*|(|1|)><around*|(|1|)>=1\<nocomma\>
  </equation*>

  <\equation*>
    Because of the row reductions\<nocomma\>,we have the following
    relationship:\ 
  </equation*>

  <\equation*>
    detA<around*|(|-1/2|)><around*|(|-1/2|)><around*|(|-2|)>=det<around*|(|rref<around*|(|A|)>|)>=1
  </equation*>

  <\equation*>
    detA = -2
  </equation*>

  \ <with|font-series|bold|C30:>

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    Performing row reduction to obtain an upper triangular matrix:
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-5>|<cell|-2>|<cell|-1>>|<row|<cell|2>|<cell|1>|<cell|1>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1-R5\<rightarrow\>R5><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-5>|<cell|-2>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|5R3+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|8>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R4+4R5\<rightarrow\>R5><matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|8>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    The matrix is now in upper triangular form,and its determinant is the
    product of its diagonal elements,
  </equation*>

  <\equation*>
    Thus,det<around*|(|rref<around*|(|A|)>|)>=2<around*|(|0|)><around*|(|1|)><around*|(|8|)><around*|(|-1|)>=0
  </equation*>

  <\equation*>
    Since none of the rows were multiplied by <with|font-shape|none|a> scalar
    during a single row reduction operation\<nocomma\>,detA=
    det<around*|(|rref<around*|(|A|)>|)>=0
  </equation*>

  \;

  <strong|3>. (1 course point, 0.25 for each case) p. 353 of Textbook, M10,
  M11, M15, M16.

  <with|font-series|bold|M10:>

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|2>|<cell|4>>|<row|<cell|3>|<cell|k>>>>>
  </equation*>

  <\equation*>
    detA=2k-12=0\<nocomma\>,
  </equation*>

  <\equation*>
    2k=12,k=6
  </equation*>

  \ \ \ \ <with|font-series|bold|M11:>

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|k>>>>>
  </equation*>

  <\equation*>
    Using Sarrus Rule,
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|k>>>>>
  </equation*>

  \;

  <\equation*>
    detA=1<around*|(|0|)><around*|(|k|)>+2<around*|(|3|)><around*|(|1|)>+2<around*|(|2|)><around*|(|1|)>-1<around*|(|0|)><around*|(|2|)>-1<around*|(|3|)><around*|(|1|)>-k<around*|(|2|)><around*|(|2|)>=0
  </equation*>

  <\equation*>
    6+4-3-4k=0,4k=7,k=<frac|7|4>
  </equation*>

  \ \ <with|font-series|bold| M15:>

  <\equation*>
    B=<matrix|<tformat|<table|<row|<cell|2-x>|<cell|1>>|<row|<cell|4>|<cell|2-x>>>>>
  </equation*>

  <\equation*>
    detB=<around*|(|2-x|)><rsup|2>-4<around*|(|1|)>=0
  </equation*>

  <\equation*>
    4-4x<rsup|>+x<rsup|2>-4=0
  </equation*>

  <\equation*>
    x<rsup|2>-4x=0
  </equation*>

  <\equation*>
    x<around*|(|x-4|)>=0
  </equation*>

  <\equation*>
    x=0,4
  </equation*>

  \;

  <with|font-series|bold|M16>:

  \;

  <\equation*>
    B=<matrix|<tformat|<table|<row|<cell|4-x>|<cell|-4>|<cell|-4>>|<row|<cell|2>|<cell|-2-x>|<cell|-4>>|<row|<cell|3>|<cell|-3>|<cell|-4-x>>>>>
  </equation*>

  <\equation*>
    Using Sarrus Rule,
  </equation*>

  <\equation*>
    detB=<around*|(|4-x|)><around*|(|-2-x|)><around*|(|-4-x|)>+2<around*|(|-3|)><around*|(|-4|)>+3<around*|(|-4|)><around*|(|-4|)>
  </equation*>

  <\equation*>
    -<around*|(|-4|)><around*|(|-2-x|)><around*|(|3|)>-<around*|(|-4|)><around*|(|-3|)><around*|(|4-x|)>-<around*|(|-4-x|)><around*|(|-4|)><around*|(|2|)>
    =0
  </equation*>

  <\equation*>
    Expanding,
  </equation*>

  <\equation*>
    <around*|(|-8-4x+2x+x<rsup|2>|)><around*|(|-4-x|)>+24+48+12<around*|(|-2-x|)>-12<around*|(|4-x|)>+8<around*|(|-4-x|)>=0
  </equation*>

  <\equation*>
    32+16x-8x-4x<rsup|2>+8x+4x<rsup|2>-2x<rsup|2>-x<rsup|3>+72-24-12x-48+12x-32-8x=0
  </equation*>

  <\equation*>
    -x<rsup|3>-2x<rsup|2>+8x=0
  </equation*>

  <\equation*>
    -x<around*|(|x<rsup|2>+2x-8x|)>=0
  </equation*>

  <\equation*>
    -x<around*|(|x+4|)><around*|(|x-2|)>=0
  </equation*>

  <\equation*>
    x=0,-4,2
  </equation*>

  <\equation*>
    \;
  </equation*>

  <strong|4.> (1 course point, 0.5 points for each case)<with|color|dark
  blue|> p. 366 of Texbook, M30, T20.

  <with|font-series|bold|M30:>

  <\equation*>
    Let A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>,B=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>
  </equation*>

  <\equation*>
    A+B=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    Then detA=1,detB=0\<nocomma\>,det<around*|(|A+B|)>=0,
  </equation*>

  <\equation*>
    detA+detB=1\<neq\>0=det<around*|(|A+B|)>
  </equation*>

  <\equation*>
    Showing det<around*|(|A+B|)>\<neq\>det<around*|(|A|)>+det<around*|(|B|)>
    for all square matrices A and B of same size.
  </equation*>

  \ <with|font-series|bold| \ \ T20:>

  \;

  <\equation*>
    Given A\<in\>\<bbb-R\><rsup|nxn>=<matrix|<tformat|<table|<row|<cell|a<rsub|11>>|<cell|a<rsub|12>>|<cell|\<ldots\>>|<cell|a<rsub|1n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|a<rsub|i1>>|<cell|a<rsub|i2>>|<cell|\<ldots\>>|<cell|a<rsub|i
    n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|a<rsub|n1>>|<cell|a<rsub|n2>>|<cell|\<ldots\>>|<cell|a<rsub|n
    n>>>>>>\<nocomma\>,
  </equation*>

  <\equation*>
    Then detA=<big|sum><rsub|j=1><rsup|n>a<rsub|ij><around*|(|-1|)><rsup|i+j>*M<rsub|i
    j>
  </equation*>

  <\equation*>
    where M<rsub|i j>is the determinant of the submatrix of A obtained by
    elminating row i and column j.
  </equation*>

  <\equation*>
    Thus\<nocomma\>,by multiplying any row of A<around*|(|say row i|)> by
    scalar \<b-alpha\> we obtain:
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|a<rsub|11>>|<cell|a<rsub|12>>|<cell|\<ldots\>>|<cell|a<rsub|1n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|\<b-alpha\>a<rsub|i1>>|<cell|\<b-alpha\>a<rsub|i2>>|<cell|\<ldots\>>|<cell|\<b-alpha\>a<rsub|i
    n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|a<rsub|n1>>|<cell|a<rsub|n2>>|<cell|\<ldots\>>|<cell|a<rsub|n
    n>>>>>>
  </equation*>

  <\equation*>
    where the new determinant=<big|sum><rsub|j=1><rsup|n><around*|(|\<b-alpha\>|)>a<rsub|ij><around*|(|-1|)><rsup|i+j>*M<rsub|i
    j> = \<b-alpha\><big|sum><rsub|j=1><rsup|n>a<rsub|ij><around*|(|-1|)><rsup|i+j>*M<rsub|i
    j> = \<b-alpha\>det<around*|(|A|)>
  </equation*>

  <\equation*>
    Now,instead of multiplying just one row of A by \<b-alpha\>\<nocomma\>,we
    multiply every row by \<b-alpha\> to obtain \<b-alpha\>A
  </equation*>

  <\equation*>
    \<b-alpha\>A=<matrix|<tformat|<table|<row|<cell|\<b-alpha\>a<rsub|11>>|<cell|\<b-alpha\>a<rsub|12>>|<cell|\<ldots\>>|<cell|\<b-alpha\>a<rsub|1n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|\<b-alpha\>a<rsub|i1>>|<cell|\<b-alpha\>a<rsub|i2>>|<cell|\<ldots\>>|<cell|\<b-alpha\>a<rsub|i
    n>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|\<b-alpha\>a<rsub|n1>>|<cell|\<b-alpha\>a<rsub|n2>>|<cell|\<ldots\>>|<cell|\<b-alpha\>a<rsub|n
    n>>>>>>
  </equation*>

  <\equation*>
    Then det<around*|(|\<b-alpha\>A|)>=\<b-alpha\><rsup|n><big|sum><rsub|j=1><rsup|n>a<rsub|ij><around*|(|-1|)><rsup|i+j>*M<rsub|i
    j>=\<b-alpha\><rsup|n>det<around*|(|A|)>
  </equation*>

  <\equation*>
    Showing det<around*|(|\<b-alpha\>A|)>=\<b-alpha\><rsup|n>det<around*|(|A|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  <strong|5.> (4 course points) Many fields of science require estimates of
  volumes. You may be familiar with the use of cranial volumes in
  anthropology to estimate relative brain sizes between species and establish
  evolutionary pathways. In the computer problem for this homework you will
  learn how to use cranial landmark measurements to estimate volumes.

  The <verbatim|det> Octave function computes the value of the determinant of
  a matrix. Example (p. 253, C26)

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 0 3 2; 5 1 2 4; 3 0 1 2; 5 3 2 1]; disp(det(A));
    <|unfolded-io>
      \ 29.000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  5.a. (1 point) Use the <verbatim|det> Octave function to verify your hand
  calculations from Problems 1 and 2.

  \;

  <with|font-series|bold|C21:>\ 

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|6>|<cell|2>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3; 6 2]; disp(det(A));
    <|unfolded-io>
      -16
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \ \ <math|> \ <math|> <math|><math|>

  <with|font-series|bold|C22:>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|2>|<cell|6>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3;2 6]; disp(det(A));
    <|unfolded-io>
      0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C23:>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|2>>|<row|<cell|4>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3 2; 4 1 3; 1 0 1]; disp(det(A));
    <|unfolded-io>
      -4
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C24>:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|-2>>|<row|<cell|-4>|<cell|-2>|<cell|1>>|<row|<cell|2>|<cell|4>|<cell|2>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[-2 3 -2; -4 -2 1; 2 4 2]; disp(det(A));
    <|unfolded-io>
      \ 70
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C27:>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 0 1 1; 2 2 -1 1; 2 1 3 0; 1 1 0 1]; disp(det(A));
    <|unfolded-io>
      \ 4
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C28:>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<with|font-series|medium|1>>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|5>|<cell|3>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 0 1 1; 2 -1 -1 1; 2 5 3 0; 1 -1 0 1]; disp(det(A));
    <|unfolded-io>
      \ \ \ 7.7716e-16
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C29:>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[-2 3 0 2 1; 0 1 1 1 2; 0 0 1 2 3; 0 1 2 1 0; 0 0 0 1 2];
      disp(det(A));
    <|unfolded-io>
      -2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C30>:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|2>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 1 1 0 1; 2 1 2 -1 1; 0 0 1 2 0; 1 0 3 1 1; 2 1 1 2 1];
      disp(det(A));
    <|unfolded-io>
      0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  5.b. (3 points) The Tarheel Linux environment contains Java allowing you to
  run Java applications. We will use a Java application from NCSU
  (<hlink|http://www.3d-id.org/|http://www.3d-id.org/>) that contains various
  cranium geometries. You can type the following instructions in a terminal
  window, or, as shown here, in a terminal session within TeXmacs itself.
  These will update the course files and then launch an application with
  cranial data sets.

  <\session|shell|default>
    <\output>
      Shell session inside TeXmacs pid = 23791
    </output>

    <\input|Shell] >
      cd ~/courses/MATH547
    </input>

    <\unfolded-io|Shell] >
      svn update
    <|unfolded-io>
      Updating '.':

      A \ \ \ lessons/Lesson17.tm

      U \ \ \ lessons/Lesson16.pdf

      A \ \ \ lessons/Lesson17.pdf

      A \ \ \ lessons/Lesson18.pdf

      U \ \ \ lessons/Lesson16.tm

      A \ \ \ lessons/Lesson18.tm

      A \ \ \ lessons/3d-id

      A \ \ \ lessons/3d-id/3d_id_doc.pdf

      A \ \ \ lessons/3d-id/3d_id.jar

      A \ \ \ homework/Homework4.pdf

      \ \ \ C homework/Homework4.tm

      A \ \ \ exams/Midterm2015Solution.tm

      A \ \ \ exams/Midterm2015Solution.pdf

      Updated to revision 1243.

      Summary of conflicts:

      \ \ Tree conflicts: 1
    </unfolded-io>

    <\input|Shell] >
      cd ~/courses/MATH547/lessons/3d-id
    </input>

    <\input|Shell] >
      java -jar 3d_id.jar
    </input>

    <\input|Shell] >
      \;
    </input>
  </session>

  Pick one of the demos and save the data to a text file in your homework
  directory called <verbatim|cranium.txt>.

  <image|<tuple|<#89504E470D0A1A0A0000000D49484452000003210000025A0802000000B71EDF120000000373424954080808DBE14FE00000001974455874536F66747761726500676E6F6D652D73637265656E73686F74EF03BF3E0000200049444154789CEDDD7F9C1D657DF7FFCFD99CE859A19A8D3F100B7283908AD6564D44305F020457527EA8A5C6B67273B79A35DC34B5D592BDBFAD8B77D5107A7F9BF8B5F68EB5A4EB8FDE1668D912DA0422704808C1248221212286021228E846099E830476C8CE9E73FF319BC9647E5E33E79A333FCEEBF9C8238F7366AEB9E69A399B9D77AEEB3A3395E79E7B4E00004022C37F3EBCE62B6B9A079ABB1EDCB56EC33A11A9BEE78FB26E1472A12FEB060000009410190B000040BFCA73CF3D37FCE7C35937030000A03CAAEFF9A3AAF5EAEAE1ABB36D4ADA1ACDC6EEDDBBCF3AFBACFE5A7FAD56AB556B59B708000094D3F291E5E6F7FFAE6ABF6F341B19B6266DFB9ED96718866118FDB57E11916AD4060000001D98CE1A13E644B6EDE8820973424C11536A55473F961DB64CBF6D886200002091A34284611A22B27BF76E319552D7C2B317A6D52EED4C11539A079BB55A4D0ECA2C99252252959A4C872DC334DC31CB5A4BCC0200A05B36DEBAD1989CBE225BB1C4CBEA28B974F1A5392C2FE6916C7524414C6F698A9872DE79E7051CFBB4E6C1E6F67BB707ED2C9F0CC3D8F5FD5DD67C2CEBB8179EB7B056AB89C8E6BB378BE93E77D6DA5A9598050040971813C665FFEDB2F032E34F8FAFDBB0CE308C3C96370C2B5AC8918C654EFF6D9886D583D53CD80CA96EEFDEBD565DE19EF9C9330FFFE8E19FFFECE7AD76ABD65F3BE1574F78F73BDFDDDFDFFFF56F7E5D442A95CA8C19338E3DF6D8379FF8E6DFFC8DDF7CC52B5EE15B895578C9C797D8AF1537743AFE84E34F7FEBE9F6DBE6C1E6EEDDBB1BCDC6C0B1035215C330CE7ACF59FE6B6B2255618E3C00005D60F577341A6173C4773DB86BC29870F62DE5A7BC986207244717CDE175D33D3ABEF3931C85A3CB88FCE8E11FBDE36DEF78C3D96F68B55A3FF8D10FF63CB4A7F98BE645175C64ADFDC47FFDC44B2FBDF4D4D34FDDBFEBFE279F7CF2924597D8D1CF778FB6781B1ED66C1E498DFB9EDE37614C18078D89EA8454A72BB70BB8D6D6AAB562F5D801005054A6E3EFD06247C6DFBA557EF9C8F2D52B57DB458E7A7BB8BC611A76BF8C7BACD09E86159D2A3C836B5E0B162C1011534CE993B7BEF5AD7B1EDA73E01707ECAD0CD3E87B45DFC96F3979E2D0C4EE0777DFB7FBBEF7BEE7BD415539F7156BC3C00A0F93EA91F3E25DDB5FEB3FF2493068080040FAACA4B27C64B96BF9355FB8C64A30AE0462950FFA3BA87CACFAAFFECBAB4564F9C872AB8CB5AD1DB38E94378F04B83E7BE3E9157609AD4CD3FC8FC7FE43444E3CE144EFDA379FF86611F9C94F7E12B7DAC41B5AA760C298988E59AEBCE858DB38D8681C6C188631DD6F67EA3F390000C025A81FC79D588E5E1EF4775079F5FAAFF9C235D68BABFFF26A3B9C5DF3856B82CA8BEF586148E9C816F8BA7EEC7AEBC5B1C71EFBCEB7BFD39BE4FA67F68BC8CB2FBF1C56A1E9F35A69C3008669EC7E68B73DC8D83CD01C1F1F7716D8BB77AF54C5BA9F56AD5A3BEBECB3A47A786E16310B0080143803C6359FBBC6BDDA130662041295F2A1F55FF3B96BAE5E71E49EEDD77CEE1A6FF9E91B4589886BF4CB3950A872EF06C5BB6A5DFADB974E9A938F3FFEF8DEBD7BB77E6FEB390BCE716DFEE28B2F8AC82B5FF14A6BC9BA5BD639B7F5EE2B684375B35E3FEBD2D32FB5DF8E1F18DFFEFDEDCE3375E16F5DE85CFBE4634F1A070DA9497FADDF108329F00000A427EE34E8C4E5AFFE0B4766FAAB6B223AB71477EA9BB154A6582533B33AF3B4534FDBBB77AF73E2B9ED999F3C23226F3CFE8D71AB4DBCA1888C1F38D26BB57F7CBF9872F2A927D766D64464EF637B0DD3B06F7CBF7F7CFF8431D13CD89C25B3A42AFDD57EA6C00300902EEB4653BE7F8B8837E29872CD2A77BFD7D57F71754879F75E9CCB15EABFE6AFAEF1ADDFEEF7F1CCE2361D7F42A87DAF70FB7DDB4F3BF5B4D903B3A7CCA9C7F73D2E22AF9DFD5AE758A1F1B2F1D3F19F3EF2C823C71C73CCDB4E7B9BB5EAD24B8EF430F94F110BD83039C7ACF623778177B6D334260E4ED8F7CAEAAFF6FB5633614E04AD020000AACCD0BF25F4B5B79EE0D7EE58165CDE2E693DE2D97A7BCD5F5D73E489CF76D8F2B97783E7BB7B01EDF52FEFEB84134E7878EFC3CDE79B7D7D7DB55AED2D6F79CB29279F626F75CBADB7CC9831A3BFBFFFA4934E3AF59453DB33DA21153A57C5DA50915583F38EA3AE59F0F69710C514A37A78B8F070A03EF2654971D703000054D9B39AA24C977194BFEA3357F997D151FEAACF5CF5A52F7FE9AACF5C656FEB7C7BD4B681638593EEBB18841D5894371CF786371CF706EF72E76CA748CEC2B1368C6BDFE3FBEC29F0E3FBC7F78FEF97C337C8374C63EF637BADE4D45FED97AABCEB5DEFB2DEEEFEFE6EF7043A6B6DADC6B42D000092509EC3DECDF2577DEA2AE742D7DBE9D7D5807E2C5BE34063DFD3FBE2EDBEC8660DCCBAF074C724F7FDE37B1FDAEB0C9A170E1EB576DFD3FBAC29F0226218C6BBDEF52E9FB5A658F788070000EAC69F1EDFF7647408B12FD3B92A3F501BD86FEEB7961C3D5678F8A987BB1FDA1D39FFBD649D34E3FB1D53E09FDD6F98C6C9279C6C9D9EF167C60DD3681C681C596B188D838D0119109109732264ADCA0DE801008065C29CB8FEC6EBAD39DF61CF60AE1E19C5CB4FF9E98BBEFF58A188889C7CEAC981877E346B60B1840E9F9DE9B35615711EAC35376BE2A8E7F084AF0500002ADE77D6FB144B5A892757E5078E1D10910923E87B858C6DD9AC3B8ECE0CE88832C5308D9A84ADED37FBC9580000F4885AAD664FC6126FA46A1EF0B97F552F3A7C030BEB7B82E34F8F1F7567AFC34FD536AA86611AFE6BABD29046CD60AC1000809E707AED7467DF8A3B63EDFAE1AEAE3627C79C3729F54E76535F0B00007AC1C2F72F340E06F76389C8D7D77EBD8BED01000028BC254B97B896F864AC56ABD595C60000009416190B0000403F32160000807E3E19ABDD6E77BF1DE8BEF9F3E78BC8B66DDB4AB62F0000F240B51FEBECB3CF762DB9F7DE7B536951D7E5F9D0ACB6B9DAE3BB30B158DD96DE5DC76A0C5DA40080DE116FACF09E7BEEB15E9C73CE39679F7DB6FDB604F27968F7DC738FAB3DE79C738EB55C575E49508F7713C54AC8580080DE112F63B956596FCF3BEF3CE7C2BBEFBE3B68A1C5B52A7213E772DF85BEB5C5651FDADD77DF7DDE79E79D73CE39416D8EDB869053A1C2D91EABAABBEFBEDBFB19D9AB42DEFA36407BC68ADC57D00F00000065A22163D9366DDA642D3CFFFCF3EDB72272FEF9E79F77DE79D65B6B95B5D67E1D548F55DEB71E6749E7EEBC651485E40657FDBEAD0D6A43C8A948DCC2B81F50F839D49BB1C2CF95F3AD96730200406EC59BF3EE5AE57C7BD75D7785ACF52D7CD75D77BDFFFDEF0FAF27BC5A95D78ABC9B584BAC163A9B71FEF9E7DF75D75D9DB4276EF3AC1365C517EF097195B1CFAA5D52FD1C2AB2C3B1AB92C4E72A59330000C8B378FD58D645D472E79D773A4B46CED109291CB2EA031FF84048B52AAF1585B7DF79E009DA10DEFF17C93A0977DE79E7073EF081F7BFFFFD77DE79A773B9C55EE8EDEE523F878AEC7DD9957778AE92350300803C8B97B16EBFFDF6A0626964AC458B1639776ABDCD2463390F3C411BB4E489F0B142EF5AEB45AC7318B725BE4B129CAB64CD000020CF3A9A8F15BE2A32485D78E18541AB62D5A35249247B13AB551B376EB4966CDCB8F1C20B2F5CB468D1C68D1BED02F6EB64ED89D53C677B5C8D7135C35EEB6C7F64033466ACC4E72A59330000C8B38EE66305ADBAEDB6DB2EBAE8223B42594BAC02DE55123C4D2756E10EE718F9B6D6B719AEB5E1AF434E858A8B2EBAC8B5895DE16DB7DD16B2A1B7BCEF5AD13A77CDBBBB907395F89C0000500895E79E7B6EF8CF87975DB9AC79A039FEECF8E62D9BAFF9C2355DDBFD25975C22221B366CE8DA1E91393E740040F95CFD9757AFF9CA9AE681E6AE0777ADDBB04E14C70A3FF4A10F05D5F8EFFFFEEF711BF1A10F7DC8B55586E344218726898EAEC4F49E2B06070100E5A694B16EB9E596A0ED135C296FB9E516E7D5FA965B6EC9F0721B7268420E389ADE73C5B90500945B36CF845EB76E5D3777875CB13E7D3E770040B9C5FB5E2100000054F864ACD7BCE635DD6F0700004099F864AC279E78A2FBED00000028139F8C75CA29A774BF1D00000065D29775030000004AC8A71F2BC8F09A3DE9B523B1557FFC9BCEB7AB47C7B26A49AA960F2D76BE2DFA61E6E7705C2D01004017D58C35BC66CFE8E7CE4DB325490CADD8E27CBB7A74AC94974C570429FA61E6E7708A1E55010079A694B1AC8075DF132FA4DD9A4E143D79282AD96196EC700000B045CFC72260E547C90EB364870300805344C62260390D0E0E0E0E0E766147BE4A96484A76380000B8848D158607AC651F3DCFB5E4AB37DDADB24B6B43C5C291542ED5AE6054AFD7556AB6B6522C9CB6F0C3F426BF6E363BC18952399C9C9C7900009209CC588A3D5876545AF6D1F3967DF43C5DC9499D62C0B22FD8565F54B2EB7786577D952E1F2DC7D81DF46001004A2FC6BD1BC27DF5A6BBBD31CBD9D7652DB797787BB3BC853BE7ED11A9D7EBCE0812D403642F77D6E08D6BDE0D43EAF4AEED5A0CF2DDA97A3BC3B7722E4FFB8842BA24B3EDCC0300C0455BC6F272E62D3B7E59514C3C29CAB7707A6D73F1F60059514C82AFD32ADD63763273453AE7565DC801DE98E86D64643B838ECE5B383D21ADB28FCBFEE00000C8568AF7798F1592BA3FC8983695CCA137970C1E26A101484B04C9671791D5AA7CB60D00D06BD2EDC74AA97071D92395F65BBD954B4084A26B0700802E4B2B63B90604C32354ACC24597F6CC74D78433D74E01004077681B2BD47B47065DBC5D3BD9DE17A0FBFD494167A0C44A7F80008042E8B41F2BE8CB80F6D70CC337B436892CDC09D7F09CF805AC90B541994CA5DAA0C6C4DA2401575756F800A56F7B121C9DF6F0EADD7B48ABBCAB0000C856F28C15D9651554C07779AA1D6091177EDF02BEB94AA5DAF06269E4AAC44D0D59A5BE3C8DE1CE0E5711B60000994BF17B85403791AB0000B992E2F70A816EEACE382C00008A7A3D63F5F295B87CC75EBE23020014974FC61A5EB3C77A31B462CB272F9BDBDDF6C466B7B6D4E694EB30F37338F9690900A0C08EAB3DEA5DE8DF8F35FAB973AD1791CF84CE96DD4E000080AC8CAC52CE58398F56B6A2B4130000F41ABE57080000A05FE09CF7F537DFD8CD7600000014CBF2A1C58F3602A354D8F70A970F2D4EA13D65E6BD97BAF3EEE7CEB5AE92BE6FBDAF23776D6FE2BD21A77395B74ED79290B7BE35041DA67A5591C79E608FAB47C7560E2F0D3F6F4EF3E6CDDBB973A7FD62DEBC79D6726BA1B798C63ABD35BBF6E2AA477DB962F35C4B3A3FF6A092691C63B263D75B7FB2367BCF73978F1D80D3C8AAB522A27EE11859B5766060401A81D396AAB367CFD6D3341C169E879C8F8589B56108DFCCE41B4D12EC22590DBEC542AAEAFCB60B1DD610720D4B7CDD8A55677EAE8E9D1FBB4AC0F2EE2B697B130ACFBBC92AF41E8B3348B9F6A5E5670C401A1A8D864AB1C8AE28E66395C7E0615937A478BC5738FB6DE22B5F1A757668DE61E1C5BAD6CE6C13C6CEC3B4C4BBA063B1DEFAEE2BF39F07001D5A3D3A165EA0D7EF415A26DC813399342EF08987AB52D59D6BB97A2756D79AD41D653A16005AD08F950DBDBD4DAE694912304529D97E3BAF218DAA7409BAF0DBFD0D2A9D1CAE325AEA749577F679C45A1E5787C71E8B73DB4E8E31EEB107B5396EFDAEF6FB1E4B90A0F39CD5E70E200DF463758F35072B59B0889CF9EEAADC35D5C95E1534CFDDDBB6F01AC2CB87086A4CAC0D63ED318475710A992EE35AE8BA2806F5D6C4AA53422F8D416920EEF29092BEC792ECD8257E2756C8A4A8F48E3D648E54E2FA838E45715F1DB6A1FBB3D9809E92E09A65A9B4DBED254B972CBB7259F34073FCD9F1CD5B36574EBCFC9397CD5D7FF38D7CAF3055893F33288AFBBD4200402FB3BF57E89CF31EF27F7BEB2A63DD0E7DFDCD37EE7FECBE355F59D33CD0DCF5E0AE751BD60963855D9687D1310000A0C275D58E7B1167ACB0AB5CB76C487C2705579D9D360B00001CCD3751B9EE40198E8CD56D1D462212552C8D4623F2BBB5000078757EC12563A1B4960F2D1E1818604A1600409135254B1732164A8B1E2C004086C85828333AB100008AB44F2FE17B85000000FA473FC858000000FA156CAC50FDBE9DBE773CD7BE49AE94F8A6A6253E340040AE681C31AC1E3870404B45B9E2BA24AB5CA153BA8A130E2CF93C0F8A0F72F17D188EEF56216542F6E52CA0B2AF4EDAE62DACF87417F5FA839E1714ABCDA91E7B4AF5C7DAD6F5F49B6E1E3B8070F73F35B160F06295925BEBB78617A85E7EF9E56F3AF14D3A5A05A425A570665D90BCCF7A733D5CCF7E1BB45C65DBA07D256B61DCE59DD7EC8C8021F5BB1E99EC7A729F6B5B57E1C8F2C9968737326E3BBD6F93D529A17928BD6307A0E28C93FA558A6D8D2A50BDE0820B1EFAD1439D37282BDEDBA6DB4B7C6F81EF7BB5766DE2BA1BBBB766E742EFF2A09604950FA9C75BC65B32247FF81653D97B64A651A959A2CE837A0B939DC00B7E57F3970A553A099275245897E4A0EBBAB5CA9BF354966B1459BF6FB008695BD0B393D33E7695075AEB3A8771EBCCE1E70E20B1EAA73FFDE9254B9764DD8C849C975EE76CAAB86385DE4D9CAB7C2B191C1CF4DE50DF6E89B5CAB7DAC87A9C87E3AAD0DE24BC198AC5825A15F93C26C59AC3CF83CA4E4302B14A038A727FAC925D1723474561618C0F28BD82CD7977F28D2F7A079562D5D6B5C9468A3B0A2F1612FB24EA4CAAD71C2272A789CF67E71F84AB4B497DC652AC3285E3EC3B5129132B3B763F68AA7F46E13F0FEA655CE59D2D2959CE06602970C6B2C47D087609281E72DC33A35E5EE339CFE7C7A732B7C6BBDC49A58C62018D3A497E5686B0676505C52CD7B8957AC3BA9F30127F4609E66345B684A9544029153E63E5EDAB6A690B9F9914B79853B2FEA70E4352AF7D7CBE42A657EBD561CD29358C2E1C006555E07B907AE7F1E4B35324FF32399345FCF8823A1B5C2129569D3B1D24A01FC83BAF597DB92E21DF07741E8BB30D41CB23FB7BD23EF6904E382DF5A8D419F43393B7CF1D40278ADD8F654DA656BC776887B76872ED2B5655CE5D77528FEFE69D140B2A1FF9FD806479C8F511C4FAF8421A90F833750582A071AEC8E54E416582F6A5D8C20E97879474B547E59C448EACF916F3B6CD5A12744AD33B76C5F9768AE5D3A833BD6307D04D9576BBBD64E99265572E6B1E688E3F3BBE79CBE6CA89977FF2B2B9EB6FBE71F9D0E2AC9B0724B77A748C67420300148DAC5A2B220B062F56BC3F967595B9EF89174464FDCD37EE7FECBE355F59D33CD0DCF5E0AE751BD649A1C70A01000072ABD86385C904DD2A132E9C28000012EBC58C455050548213A5F1D19E0000C4D28B190B3D62F9D0E2818101A6640100145953B2742163A1B4E8C1020064888C8532A3130B00A048FBF412BE57080000A07FF4838C050000A05F01C60A15EFCFDEE16DDCC571AB82827E9FAEF333905B253E34004059152063754EE50A9DD2559C7060C9ED79087FEE8D6B7950F9909A23B7F57DCA4AF8BEE22E0F699EB76482F6046DAED836DF96A47AEC71EB5179885048195DC7A2EBD801744D0132560E2FCCE8B2947E065CCFE8753D6A37BCBCF7ADFABE9C6FC3238EB53628F7A82FF70AAF216E7BECC2BEE733E43C07BD4E708CEAC71EFE397AEB51A939A84CC839D1788CEAC70EA09B7297B15CF716B71E002C8EAB6CF8CDC7BD8F0AB6978474A578CB789BE1DBB6F02605ED5ABD1EDF63F43D4C5FBEC554F6AE38321B5EB3287C048A2D4C76022FF8DD882F15BAAEAC1A2F51D6A5346E854181C3AACA9B575496777E14E1ED710A3A9F41CB7DC34D82638C7BEC219D70DACF61C8CF9896634CA3CD0074C95DC6B28587216F0C726D38383838383858AFD7BD5768DF4D82CAB8AEDFCEB756FD71771D598F3397B82AB437096F8662B1A0568544BD5835477E04913B0DF91950694027DF10E964FC85EB5C2C2A237100504439CD58E1FD28D65ADF98A5775029566D5D1BD354DC91CA39B4F806C1F048DA79F322779AF87C26DB3068A0D039BE13D40FA12272DBBC25B30EDB13B479D0389D6B0CB10BBA9FED428EBD3B0D00D06539CD580811D9CF14AB5882F2716BEE4E559D08B9BA878C6DF96E15375B7453D75285E24910CF7859AAAD72099A079612EFC0A8152B258B6307D01D64AC82899C9D16AB9853B2FEA70E43521EBED0A0FD12EBBC5E2A56DE9DCB7CE219FAB1A807ACDE11397D0D402915F81EA439E9022901EF8CA82E9CDB4C76EA15D417E5FB3AA412FBF54E07E9E03A1AD47F1677B92E41F5BBCE4FAC80E5AA33725FBA8E3DE833D5558FB758E4CF58E2634CFB7307D08982F5635973B0925D8C3BBC459377D7EA553977DD493DBE9B77522CA87CE4F703B47C04EA3B0D6F40E2CFD4BA3879A749857FFFCBBB5C45C8B62197C6A0AB78DCE52125EDE1AA4EDAE35CEB3DCCA0E5AE3A5D3B4DEFD8C33F476F3D21E72AB28CCACF587802EB6439806C55DAEDF692A54B965DB9AC79A039FEECF8E62D9B2B275EFEC9CBE6AEBFF9C6E5438BB36E5E840E6313CA6DF5E818CF840600281A59B55644160C5E7CC649FD2AE5ADABCC7D4FBC2022EB6FBE71FF63F7ADF9CA9AE681E6AE0777ADDBB04E8A3856C810210000C8BF828D158AE7960D093AB1D2BEE3436970A2000048AC78194B3ABED213141495E044351A8D4EEE440A00406285CC58808AE5438B0706069892050050644DC9D2858C85D2A2070B0090213216CA8C4E2C008022EDD34B8AF7BD42000000EDB48F7E90B1000000F4CB7EAC50FD3EA2716F089E6C935CE126AB41383300809CCB3E6329F27D1471F82536A5CB70F9AEEEE53B22458A0F33F17DF08BEF569D6CEBFB4C9B58F5C47ACE4FE4136CD4CF897A9DAEB51ACF7FDC671CC5AA27A8FD29B539ED6307D03585C9588076CEA7E939B91ED8E77A1BB455F8B6CE0815EBC97ABEE5E32EEFBC6695F687ACF5BDF627ABADF3634FF0F9AA64D6A0CF3DD6F2F063E9FCD80174531E3396F736EEF612D79DC7433A605C9BB8EE0EEFADD9B9D0BB3CA82541E543EAF196F1960CE952F22DA6B2F7A03A838E48715F91FBF5EE5DF15CC53A0AF5629D705E08AD67FA7A2FBD2117E3906DADB7CE6B64D0BEE22ED728EDFA6D691F7B484754D78E316E1B32FCDC012496BB8CE5BCD23B6753C51D2BF46EE25CE55BC9E0E0E0E0E0A0ABBCDD126B956FB591F5380FC755A1BD497833148B05B52A3C18F99EA8F0CD238F28E884A89FF3B86746E560F3A917AE8B451FCF2A7AFB0164225F19CB37BEE8ED9388555BD7A62829EE28BC5848EC939867B20B1F449090BC15447B6B5D5D4A09AEA9BE338D5CE3868593B8FDAE9390934C19321BCC45A5FD413F33E13F4BEA6D005044F9CA5896C2F543744EF190E39E990ECF641E3E08F536686C6DF85C1915CEE9D2D66BEB5A6BCF6AB22FAEDD0C1C9D5CD183DA9FAC9E64DBEAE5FD8C14B7F26D7F27F3AEE2B6014051E43163F5DA17DCC2A776C52DE654F48767C73AE4CC5B1B49E5FB6899CC01EACEE600D06BF2750F52EF7C9A3C74A514518767B2581F44D75A1BD4FFE40A49BEDB86CC67B749C01893775EB3FA725D82DAAFF83D3EDFD741D23EF6906F32C6FA7C3BE9908BDB86AC3E77009DC85D3F9635055BF1DEA11DDED8C9B5AF58553977DD493DBE9B77522CA87C64935C2733EEE64115BA368F75AED40F39596B9D1727893F87C697CABC1CF50BA14A62536F9B6F49D7B1AB9C93C80E39C5F319543EFC583A3FF6B89FAFCAFCBCB8F3B192FD8C757EEC00BAA9D26EB7972C5DB2ECCA65CD03CDF167C7376FD95C39F1F24F5E3677FDCD372E1F5A9C75F350481D665F5D568F8EF14C680080A291556B4564C1E0C5679CD4AF52DEBACADCF7C40B22B2FEE61BF73F76DF9AAFAC691E68EE7A70D7BA0DEB246F6385000000E590BBB1C264826EE004174E140000DD51928C45505094C93DAE32D46834568F8E65DD0A00402F2A49C602BC960F2D1E1818604A1600409135254B1732164A8B1E2C004086C85828333AB100008AB44F2FE17B85000000FA473FC858000000FA653356A8788FCACE6F65D9C96DCA33377BF6ECAC9B5078D7FE8F2BB26E0200A4ABDD6E67DD04F82BEA7C2C95F895D2DDC6BB7913F36D4FFC62EFFEE6F88189A6617461775DB3EBE9E68EFAC6DBFEC785B38E9D55ABD5FA6B4A77D4050038350E36E6BE7B6EA5522166E553F581071EE8FE5E8BD8AB9489BDFB9BD7EFD82722624E48B53C4164C7F7B68BD168341BB55AAD56AD49556AD59AAB8C61962A5602805EB56A4D9A593702A1AA7FF6677F76EAAF9D9AEA3E5CF716B71EDF2B8EA4157EF371EFF383ED25215D4ADE32DE66F8B62DBC4941BB56AFC7F7187D0F5344C60F34C49C101143A4664E0455554846D39830C494FE6AFF74D21247BFAA293571A7AEC2F6BA02402A8C720D71944F75EBD6AD69672C5B7818F2C620D786838383838383F57ADD9BD27C37092AE30A40CEB756FD71771D598F339FB92AB437F1DDBCF98218A6888861CAEEFA0D621A628A88F5B79FAA88D4DEF5DB9F083A2D7931698861340F341BBFD2A8D56A033260548D5AB556AB4DE72AC3300CD3719855995E4BCC029091952B564E1813D6AFA6A08E76AB637EF5FFB7BA0BE5C52463E55DF72E59E1E383D65ADF98A5776031566D5D1BD30CDAD184694C672CC310C3B8EDFFACD9F54C63DFB346D0F4ACBDCF34768F7DC9084A6079621C6C2CFFE646397696D46649AD5FAAB56D9FBDD44A517357AC135364D210FBB78CB5F6D85A7FADDF3BAA08005DD038D8F8FADAAF8797D9B57BD7CA2FAE340E1ADD293F71B011E300D075740BE44250079E615AFD5846C310318D5D4F36BEB163AF1C35886638DFEEDBB1518C6664C69A7DCC2BFEE2C2B79F75CAEB5E5D9B79F0E5C99F3E3FF191AF7DB7E38388E1E4779C75D62517DA6F773CD9D877EFBA7DCFEC1B983550ABD564C2D8F4D7CB763FD3D877C068BC60EC78727CDFBD1BF73DB3EFF8D71D6F1C6BD46AB5FE124D4D03501456A7D1BE7DFB42CAACBB655DA3D9B04AA65EFEA0D19CA01F2BD7C858D90B99DA6598D35D5956BFF1DEF1E6843556683345AACE7F638618C644D46CF1CF5DFCAE0BDEFEA64F7E7BFBD6C77EF66BC7BD66D9B96F8DDC44BBCD8F8FDBAFF73FB4430E369BCF366BD59A982286B1FDC9C657EFDEEB5E5BAB0D54076AD5DA84946B6A1A8022981E988BFA4FAC611813D63CDA0ECA9F32E794271E7DC22EE37C7BA4BC69581D5AC8AD7C65AC9019E2BDC9B0C60A4D430CC33027F61F340CE3F087668A5445CCC3FF80ED85D35D5F61CE7ACBEB4564E7538D5F1AADEF3FD5F8C37FDCE15CFBC9B34FFDE225BFD96AB70F1C7CB9FEA3F1CFDFFA83575667ECBEFAC2477FFEC2FBBF7C9788BCBA7FE60FFFE7C522F2AE6B36FEE2A5973F76C6C94BE6BFE5A4D9C78C3F3FF1F56D3FFED68E1FA369A34A00002000494441542B7D89D831D74A44C468340E366A2FD40CD3107362EFF8E1DE38F3C8DA5907671935C3A819474D87CFD78F308092B3F2CDDBDFF676D7F2877FF4B0F5C235472A4179ABF029734EB1CAB8DE1E29CF7CACDCCBFE0265CDC14A96AE3ABC559577D7EA553977DD493DBE9BDB0CEB9F9015B34CB1A7434E7366A9E94462884C44FEABFBE5C4A157D7666EFACCFBEF78F8273B7EFCF33B7EF8939FBF706493815AF5DC55DF7964FFF38BE7FE97FFFDB133270E4D0E8F7DFF8E877F72F16F9C78DA6BFB1FFA49E343EF387EE68CBE0D7B9EFEC973CF7FE2FF396DF5EFBCFB5FBEBF6FD197EFF8D4C2B75DFBE1771A2F1FFAE6B6C7D40FFF702E349ACD667FADBF66D4C434F6378DA37E8F9846B3D96C1EDBB47E60A76FF7607D1BB10893CF0094C1A48804F74B797F21272DFFF00F1E7EFB6FBC5D8E4E660FFFE061D72F7FC334260C3AF573AD1B192BE49B7DDEB72149C5FB4DBD58FBF5DD24A89EB8BB56A927A492B0C3B14295292287FBB4224595F9F4F5DF5D73F9D96F7CCDAB7EFF8C537EFF8C535E36A73EF54FF78EDDFF636BED176FF99EF5E2C6ED3FFADF1F3B73D1DBDF347CA3F14FDB1EB9F8374EFCD81927FDC5D8F8877EF30411F9A76D7BC534AE58304744FEFAD69DBF7CE1853577EE5E7EC1AF5FB160CE37EF7928BA91479910D3F8D22DDBA53620D59A88B1FD917DC6BE5DCE125FDAB05B6AFBA456936A4DAAFDB7FDD985628AD4F2F0DF04003DC49AB9F1C02EF7AD259DDF040C7AAD5EFE815D0FCC7DF75C7BE103BB1EF02D4F3F56CEE5E202E5BD63028E621A8639313D08189E9FAC341695B136FDE0F15FFF7F7F3CEF94379EF3D6132E9B7FFA9B5FFB2B9FFFD0BCB1ED0F8BC8BC938F1BF9F07BDF71E2EB078E79655FA522226F1A38464CE3AE3D8FFDECF9F91F9977CA5FAFFFDEC2D37FF567CFBFB4E9078F4BAB7DD2EB7E45441EF8C262BBF253DEF06AA520E8503BF16D679D77640AFCEEC79F6CDE7BFD7425A648556EBDE9E61D8F8FEF1D6F360E4EEC7EFC4963EFF6F167C7670DCC1A90016EE800A0AB22E757B97E011E2EFFC0FD4762D9DC33E6DACB83CA072D540970C8895C5C9D5CB76C4890B7D2BEE343B60C73C29AE76ED8B3AFCCA36ED7E9F81895A6588AC894B4EF7B64FCBE47C6AFDFBAF787ABFFE09857CEB4B6FAFA272F78F3EB7EE5F7BE72DBE61FFEE72BAA339EF9DAD2BE4A454C9992F63F6F7FE44F7FEBDDAB7F7FC12B67CEB871DB235387DA22B2BFF9E249AF7BF5DBAEFAD678E3C524C776B8A9BB7FF8E49163787A9798C627CE3EDDFA0AE157EBBBEE7E64FCEBDF999E3466ECDB2546B379A0599B5933AA8654FDEE560A00BA59814629D61C1ECB7396776D78D45B4FF9F9EF9BEF2C3CF78CB9DBB66F739547FE5557AE5CF9E3277F9C75333A8D44654A543E4C43260C1163C2EAD09A5EE82C70D40B23EA8EF0F591DFBBEEAE07B73EF29FCD175F7EC749032272D7434F5A5BCDE813113970F005A94C7EF6D2F75AE5AD55DFD8F2E09FFED6BB2F3DE33411F9C696DDD6C23577EC5C75D9C22F2C3EF333DFDE746872EA7D737EF58F17CDBDE4AFFFB5E343965AB53670EC40AD56935AFFAEA79BCE83320E4E58CFE191AA58F72F1539F2341EDFDF80DC550B801E0AF9E6A821BCC3E55DB1E9A8AEA9A3CBCF5F305D72DBD66D22D36FE7BF6FBEF5D65D5E44444656AD55683ABAADFAD9CF7E76C9D2255937030A94C6010D112372A8EEF91727BEB878FEEB5FFD8157CEACFEAC7970ED5D0FFCE5BFDC6D6DF5876B6EF9D21F5C70FB9F7FB46AA5ADE95D1B22F2E8D33FFDDEA3CF9C39E7841D8F3EFDD833D3775E5873DBF69F379EFF93DF7AEF8F560F89C88EFF78E62BB76E8F3B56E866BA0EA1B6BFD938B2C434C4349ACDE6F428A1397D17F889EA91F4E98A59D6DAFE6A7F3EFA6D011493A3B729BC98611E1952B05E6FDABCC955EA483D9EF29B366F3A7FE1F99B366FB2B775BEF5BD0BFCCAE1A5498F0A47D19B56B9E614C1C474E638325618C479BF83601FF95FFF12B4EABB3FFCCFF70EFF43D0DAF3AEFE9677E14D5B1FBE69EBC311BB8CEFEFEEDE5DAB0D58AFF73DB257C6F73A561A5FFACEAE5AADFFF014F8DAE8C717D6FA6B22F25FBFB1F9F0B7048EDC237E7A2D13E401744EA11FEBA8AFFB252ABFE9CE4DCE0D5D6FADF2FDB5237763A61F2B9FB8E614842922D2DCB75B9EDC1D55B42693059F05F9BA93DF78D6A5F6BBE663BB8DDD1B9D3D5BFF74C3CD9BF78EEF7EA6317ED0683EB65B9ED93BBE7FBCFFD8FE5AB52686317AEDD5DEB503B3066AC7D6AC1C0600094C9813BB76EFDA7CEFE68872D5E9B1BCB4CB3B3316FD585A341A8DD5A3631A2B24631581FDF5939DEBC49C38FC64683F5591524C3C6A3EE68892FBF78A695CFA9E93ADDB62DDB063DFE6BDE3376CD868AF350E369ACDA6884C5427C43082D60EC840770F0240D9FCF19FFCB171D0B0EFB4EED55FEDAFD56AC6E147DCA4577ED6C02CA6996AA737600919AB200C11A9FDFA42D5E225FB36AF29621AB56AAD766CAD56AD49B5B6E3C971C7F42C11A3D96836AC5959621ABE6B6BB59A6118FCBC0348ECB2DFBF4CB1A4D5CF946AF98159FCA7B100B8E61481D9F31FD4E11BBBF757FB6B55196FBA43A461188661484DC43482D64E1813BD7E1A0194C5AC59B3785861FE71CD2988FD614F622F3FD3984E5155314C91C776CB817DAEB58D66A356AD19C644D05AC3346A07E95A07500603B306C68DF1AC5B810864AC623076AECBBA09195B3776E47B85C62377BBD6DE70A3EA5A002881AB3E7355D64D4034325661FCE217BFC8BA090080ECCD9E3D3BEB2640495F7411000000C444C6020000D08F8C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F42363010000E8C77DDE010028B691556BB36E027C90B1000028B695C34BB36E4249E84DAB642CE4D1EAD1B1AC9B0094C1F2A1C5593701DD403F563E91B190530B062FCEBA09402E6CADDF7AC51F5E9660C3EBBE757D64195DFF9F7185B9DEAC569704C9987E2C2D1A8D86DE1F063216F2EBD99F8D67DD042063AF3FEE7811A9CE48F1FB49577C3C498073BAEE9B3E61AE58D576FE9FBAADF55B25B5E6A13BB4A76D321600E45D754625BDCA67A613E08A55AD2E396F1EBA8C8C05007997EA95BB586128E72126E7CD439791B10020EFD2EDC7AAA65279B1AAD525E7CD439791B10020EF529D8F954987D3823FF986886CFDDB4FE8AD568B91A10FDAAF578EAE8F5CEEE46CDE82F967DAAFB76EFB9ECE26A220C85828B0BBEF7FA14F2AED76A55D3954A9CC6CB7A7CE3BE33559370AD02F0FF3B1AEFC5FF756DAD26EB7FB64464BA6BEF6D905C9AA3D6BD9A888ECBC6EE9D454FBBD7FF40F22B2E3AB43D6C21D5F1DCAAAB52E76841A19FAA0334E052D0F6A9E5D66C1FC33777CEFFE586D4009545F7AE9A5ACDB0024B1E5BEE7FB2A95765BFA44A6A4DA6E4F55DAEE5FBE7F337285887C7AE5755934509B721C053A91EE7CAC6A74E5FFFD0BF7CA8C56BB22D26E4F556446BB12B995B7C0BC2BD68AC8CEEB968A48AB25AD76FBFEAF0D89F49D71E55AF596A4D45AAF0BDEF9A63B1EFCA9FAF2A0E6D9E513B4014557BDF6DA6BB36E03341B1C1C74BEADD7EB5DD85D7A7BF9F2C895D29EAC54668A8848ABDDAE485FBB22E69FAE1C9DD1EA6BF7555A2D7386CC9892A9BF1D5976EE7BBF965233800C4D4EB552ACDC3C52F95967CEF32DB372F456FBF59B5EDBFFF16BC626CDB3D5ABFDFC9747EF787C3A5DBD7468AAAFDD6A55FA44646AAAD5AAB4BFFBB71F6F55FA167CEAEB23ABD67EFE33115D59AED6B6DB15A9CCAC8829D25769B7DA151169B95AFB871FFEC0E467EF0BAF365C50AF9577B9B379DE969F75E619BEABE8E22AABEABDF7DE7BEAAF9D9A7533A08D2BF1B8F256E17C79E4CA07BE7FBF5444DA536DE9934AC51A3269B7E53DEF99D76E57FAA4DDAEF4B52BA688CC9499D9B616488939D54EAF723BC02DF8936FECDCB9CBB78CD505E5BB5564B52BFFF61B2B8797AE14F9E54B2F4BBB22D2279596B4DB475E54DAD26E6FFEFF3F2195A9CF7F7974E44FC226691D69EDFC33035B3BEFDD227D2252A9545AD29E51A92408A9CECE2A67900A5AEE6A9EB7FCE4542B685656AA191A19AABEEE75AFCBBA0D4891B77BC999BAACB5BEB1CC37A545765679235D50B5AADA935291E75F9A14119123BF862A22F77F7F679F485BA45569CD6855DA1579CF7BFDFF0B6E8DB5599C236ECEE5CE55AEE5BE65426A760EED05BD56DFBBEF1E1937EC35A6E31A7CDED9678594BCFBDE1D712B775DE0F7375E14E96BB7A72A958AFDC2EA82B2CD9D77C6E4D41F2A567BC7E372C7156B45E481B581FFB24464EED2E99FEAFF111A381CADED1391E77EF952A55269B55A954AC57EE1CA5E73E79D1137C438A7B7AB2CF76B9EBB3C41AA07553FFBD9CFFEDD757F977533A05950A0191C1C74861EE7DBC87A627589D99B44EE225CA53253DA53AF7955600755456486F4499FD5D515588F9D72FE66E48AA0C463AF726DE2BBB97755ACE38ADCBBF805290256CF72F663D5B76C1F3CF77DBEC5EA5BB627E8F19A348FDAC46C55A4221599D16EB5A52227BEF6579E3EF0E233BF98A888B4452A223F78AA596DB9B70AA9F6F6557F20228B86FFB1DD6E7F6777E0C31B3EF7F71BAC92E135DB6B2B628AC8E4545BA4D26EB72B15B15FEC6F4CB4DB5395CA8C767BEAC1A75E5069AD53D077068396FB364F446EDFBC2D68157A44DFDCB973B36E037472061A2BE204AD752DB44A7A4395ABC2B86D702E4C16B6DAD2F7FC4B93F69F5F1EFE73F4C243CFBF74A852F1FF15964628F1C61D6FCCB297C44D6042C0C2D126A75ACE3F1B377DD75B66E3A6EFBA8AC5ADDC7ADB6ACBCBA6796872B2D596135FFBAA8DBB7E7AE2EB8EB196587F8BC8549F19B923DFC6FCC649B3DEF1E6D7BCE3A45947BD386956C82641D5B65B1511315B15B32D2D99E1F3A22D2D99A1D85A5D5C8790E04FAACD439771EF8612720DCFB9FAAEE2D696F58CAE96542ACF3E6F8854DAE2FC6BFABFD46D918A5444DA6DA94C75FD5B3BBEE1E9D32BAF0B0A55242424E3ED9D5A7FE7BD1FFCC0D9CEB789E76CB9AEEBC6E421A9CC986AB74E79E3311B77FD544436EEFAE9A9C7BDFA3F7EDAB0968B485BAAEAF3B19C0E4D4ECE98519D9C32FBDA6DFB456B7A9AA5D268DA91327D6D1169B5C5559BB3DABE765BB1B54E9DDC1FCBB9A34B179D63BF5E77FB3DEA0D406990B1CAAC5EAF3B1352B2E9F0697F2D51C5CF7EF972F0DD81A627C18BC88C56B743564866F20E3276BE2FDF2145F402D32F22ACFBCE3D97FED639D60BDF02CA951F3D563855A954DA977FF1A6B94BAFFBDCDF6F58F1DF2FF9DCDF6F98BBF4BA8F7DFEA66FFFCFDF93565B442AD28A8C74BE05265BADC9D67486B35F486546C82641D5B6A4228E44E85BAD9508555AEB92F8FE58AE1DD9652E5D74CE4DB76D89D5069400B7EB289B64DD4EBE8383DE69589DF46979072ED5F455445C238347FF39F4FC4B87ACD7014385A9F04EC3EA3C4525D8297A84D96AFBFEB9E9B62D37DDB62568AD6AE5532DEB8FF5B6DD6E4F4EB5BF35B2F81FAFFEA85DE61B23BFFBAD91C593536D3B42D85B05C53B6701BBCC94D936A72A53536DE78BA9C395FA6E1254ED8C764544BCB539AB9D327D6A563C2D17BCF34DB19607EDC82EEF3ABAA03F8ACD4321D08F55424173B0AC6EADB853D79D9B64D4A7A5FC4BA712E3D793DD2DE45C12AB59AE1A5CF3E5BD49C85B20C1DEE9CDEA4DA95E7A5D69EC3F0F4C78CBFCE4B9A3EE565D91566486F32D30D5968AB4CD96F4C991172D3B6329E442BB8CD56DFDD4B3D1B7D156696D38F5FB6385ECC86CB5FFDB87CFF75DF57FFE6D5327CD13919155EE9B6B200FC85865131E8342D606AD8ACC55CE02AEC221AB9499EDB6EA53445A9E9FE7F06FEA05C514EFB70B83CA87049DF00D15F7EEBB8474D583A63A8B0811953B02DCBC33DE23ADA9567B46A552E96BB764DEF42D1BFE72E9C553AD3E9156B56F86D99A94CACCA9A8D8E75BE0E9E78CB89B049769B95BDB57B19EF750E96BC76DAD57B2FB63797764979F9A6A7DF366FF5F83099AE7B2727869742128D09B56C958E848ACBB6725D096EA7BE6CE93BE4A455AAD7645FA82BE3B2822AD3EF51E2FA05052CD5876D7CB3FFCF947443EE22DE0BB3C563FD6BFFEEBBF8AD8B710F63777E975FF7CD3D8473EE2D300DF6A476FBA2BBC6450635424BE3F966B47CEF21DF6A585A31F2B9FC858E848DAA3879F59C9B3718094C70AD3B989BCB3DA0FFFF6EF7C5844867FA7F3C6A47ACB7B4B27F7C77236EF6BFF7C47D02AEDE8C7D2A2D168AC1E1DD35821190B00F22EE57EAC54025CB1AAD525E7CD4338BD014BC85800907FA90E334DA5D3BF52AC6A75C979F3D06564AC9CCAFACE9F0072847EACB4ABD525E7CD439791B10020EF3AFFDE5988FAC6E86946A5AF766BFD562DF5A4D43C1414190BF9F5FAE38ECFBA09402EA43756B87C6831D5A6542D40C6424EE9FA6F255002777D87DE11A078C858C823FE5B0900283A9E57080000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1722AED672D0300805491B1000000F4EBBBE38E3BB26E03000040D954AFBDF6DA537FEDD4AC9B010000121A59B536EB26C047F53BDFF9CEA73EFDA9AC9B010000125A39BC34EB269484DEB45A7DD5AB5EA5B13A646BF5E858D64D00002497EC4962F463E513CF2B2C1BFE3703000535B26AEDC0C040A3D188BB21BFF9B568341A7ABB2AF85E210000B990AC130BBA681F0B22630100900BCCF7281932568E0C0E0E0E0E0E66DD0A0000A001190B0000403FE6BCE708CFCF0100A034C85899710D0BD6EB756B09490B008012A85E7BEDB559B7A1D7F9862A2666010050687D4F3DF554D66DE869F45A0100504A7DD75D775DD66D000000281BBE57080000A01F190B0000403F32564E314F0B008042E3DE0D99F1A62872150000A5413F160000807E642C000000FD182B0400A0D84656ADCDBA09F041C60200A0D8560E2FCDBA0925A137AD92B100002836FAB1F2898C050040B1D18FA545A3D1583D3AA6B142E6BC03000088DE8025642C0000803490B1000000F42363010000E847C6020000D08F8C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F42363010000E847C6020000D08F8C050000A01F190B000040BF6AD60D0000001D1959B536EB26C007190B0080625B39BC34EB269484DEB44AC60200A0D8E8C7CA2732160000C5463F96168D4663F5E898C60A99F30E0000207A039690B1000000D250AAB1C2C1C14111A9D7EB8A25150BC7AA19000014D4CF8C39631B1E55ECCE3AAE1651A054194B912B30919F00008065F12573144B6EAD3F1A5EA017331600004090D38E7FF531AF9C714CAD7A6C6DE641C37CD1305F7CD93C64B626CDD6E454EB90D99A9C6A4D9AADC87A4A9EB1EC314139DC53652F71AE9298BD59AE6D7DBBC4825E0735CC5B2D000028AE32672C6FCAB1DE763856E8DD7C707030D650A36FC39CAC55B367CF56AF130000E44A69BF5718DE75D49DBDFBEE34B261CC0C0300A004CADC8F255D1F7DB33BC97C5739DF322C080040B9953C6365D227E41A0A0C190D0400006555DAB142EF6CA79C741DE5B661000040A332F7635923778AB71B559FF9EEAAD6B595EF70A1ABDA580D0300004554AA8CE50D2BBEF1C59B78E2D61CBE892B72A954A8DE1200005008A51D2B040000C850A9FAB1B4881CE90300008844C672235101008A6564D5DAAC9B001F642C00008A6DE5F0D2AC9B5012432BB668AC8D8C050040B1D18FA5CF1C8D7591B100002836FAB1B468341AC36BF668AC90EF15020000C8EAD131BD1592B1000000F42B7CC60A7A2060B262296D0E00007A4DE13356E7C84F000040BBC2CF79E77656000020870A96B15C1D4EF60398EDA4157E9776EF839CED25EACF84F66D86B792A0D7412DF16D3C000028A8A28E15D6EB756F1EB2334A4854B23774E51EDF0A7DD91BBAAA52E7AC21BC910000A0A00A99B1C2F387B5D6B74CD7828BAB7BCCBB2AA84F4B18FD0400A0140A36569873F6D8A5EF2AE75B86050100283732967EAE9958BE718ACE2A0000CAAD9063852A72DB51E49DC295DBA6020080C44AD58F650DD5258B2CEADF2BF4EEC5B995EF70A1AB5A570DF4690100503E05CB58DE38E28D2FF6EBA018249E541477BF2A93EEC34B663B251F0000A4AD6C63858CBB0100803C28583F5624D7505D829EA1C8913E0000804865CB58D27124225101008A6564D5DAAC9B001F25CC580000F49495C34BB36E42490CADD8A2B13632160000C5463F963E7334D645C60200A0D8E8C7D2A2D1680CAFD9A3B1C2B27DAF1000002081D5A3637A2B2463010000E85792B142F5BBB47377750000D00525C9588A5C514C3D99010000C4C258210000807EA5EDC7F2DEEDDD5EE2BA937B786F5648D757C81DE1236F16EF7B337A1E0404004069943363F92621FB313B7AC70A9DB50D0E0EFA3E10DAB52A3CA8D9AB66CF9EDD49C3000040864A3856E84D4EB9EA1F8A6C1EF3C30000288172F66349CE729557CE9B0700003A54DA8C95F3DEA09C370F000074A8846385DE794EBA3A8DB4D4935EF30000407E94B31FCB9ADEAE78BBD1F099EFAEAA8236F7DD51D0AA58CD0300004554928CE58D29BEC1C5B55031DC84170B591B7715610B0080D228E15821000040E64AD28FA545E48D430100001491B18E889BA8928D120200A0D7C8AAB55937013EC858000014DBCAE1A55937A12486566CD1581B190B008062A31F4B9F391AEB22630100506CF46369D1683486D7ECD15821DF2B04000090D5A3637A2B2463010000E857E08C157EFBF5B8C5000000342A70C6EA1CF10B0000A4A4C073DEB907150000C8ADC2642C578793F558657124ADF0BBB47B1FCF6C2F097F26B4EF5E5C3578F71879CB78DFC745D3A906004069146FACB05EAF7BF3909D4EC2EFBDEECC467649DF0AE3B6C7377505ADB21B10B4DF0E9B0400003257B08C159E3CACB5BE65F21359BCDD66DE64D6ED36010000DD0A335658320C0B0200506E64AC6CD059050040B9156CAC50457A5D445A6A0E9A9E050000CAA424FD58D6D70C938595F0EF1546D6ECFB0DC1F055AE3AE9D30200A07C0A93B1BC41C4B524FC4E0DBE6F15C38DCA447B2DAB085B0000944679C60A1971030000F951987EAC48F65D49EDB7716B88BC7128000080A2F2642CE93812C5DD3CD9282100007A8DAC5A9B7513E0A354190B00801EB4727869D64D2889A1155B34D646C60200A0D8E8C7D2678EC6BAC8580000141BFD585A341A8DE1357B3456589EEF1502000024B67A744C6F85642C000000FDC858000000FA91B1000000F42363010000E847C6020000D08F8C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F42363010000E847C6020000D08F8C050000A05F35EB060000808E8CAC5A9B7513E0838C050040B1AD1C5E9A75134A6268C5168DB591B100002836FAB1F499A3B12E32160000C5463F96168D466378CD1E8D1532E71D000040568F8EE9AD908C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F42363010000E847C6020000D08F8C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F4AB66DD000000D09191556BB36E027C90B1000028B695C34BB36E42490CADD8A2B13632160000C5463F963E7334D645C60200A0D8E8C7D2A2D1680CAFD9A3B142E6BC030000C8EAD131BD1592B1000000F42363010000E847C6020000D08F8C050000A01F190B0000403F32160000807E642C000000FDB80769D9341A0DED77F80000007191B14A65F9D0E28181016EF80B0040E6C85865D36834B26E020000603E160000400AC858000000FA91B1000000F42363010000E8C79C7700008A6D64D5DAAC9B001F642C00008A8D5BF6E832B4628BC6DAC8580000141BFD58FACCD15817190B008062A31F4B8B46A331BC668FC60A99F30E000020DA9F4447C6020000D0AFA3B1C2C1C14111A9D7EB8A25150B179DF3B404BD46DEF0206D0079B07C6871D64D8036DD988FE5CA16440DE413131A0064ABD1680C0C0CF0D8D9D260AC50BF7ABD4E820400C445877AC968EEC7B2C704E5E80132D72A89EACD7215F696F4EE487DB9783AD57C45EE31A87F2EC110AA629300004051E8ECC7B2B385335ED8AFEB8739DF46D6691773268FC1C141676DAE1867AF0A5A2E7E91CBDBB0C83D3A5F2718000D3A8A940C0E0E3A4F08490E00805469EBC7F2860C2B43745267D0E68AD56A1CB00B69899D57E2EE2EBC7CBD5E9F3D7B76AC0A2D915D80C978BFB5C0BC3A75F3E6CDDBB97367D76AD3BB3B004032298E15A627682FCEC4235A2FFF691C57AAE7CA7BEC84A10C917800A00769CE585DB890FBCE82F236C00A5B1ABB70F4CE974AA3CE587BF45D6B093F69216735EEF43295397699F496CD9B37CF7A616723AB67C85A6E2DB4CB0415F32E174F0F9373B9B3366F0DAEB6D92DF156E87C41B603800C699B8FE53B874957E58AB2DA63772654A5C777229DAF9002E1D3CB5466BC29B6216D763A71661D399C879C51C9E65BCCB53C9273AB901AAC06D82D719671B6D07E0100C88ACE7EAC58437589FB275C7BF1AE72BE0DDA24D67E83F6E83C04BB8CFA5CB154279EC7EA977295893C0ADF029D64A390366412B9EC74E28C2941AF83B60500F4B88E3296E285D6B550E5AA19BE49480D71A7C93B9707BD0EDA3CA84C2775862C8F256E25EA69CF156413D4D0791BF220561F55AA5C839800002D3EBD6A5BD0AA3FF8C8DB546AE8C67DDE917F1D66322DD3CB321F255417340B2ADBC6F0754200D0E86F86E71F5B9B19B476F343FB236BC83E63A574AF0128F28E72468E15067565A5D186ACE6BCABA796C4012BD686E42700E8B232F46391A832D7F93D2F3A9F5E96DE7D37E2B286DEC247DF5C5FFD534F4B893774F1FD5EA1F32DA387404F1959B536EB26945019FAB1A057DC9967E15B051550AF4171765A500DD9CE79575CE23B473E6879E486C90A38DF12AD805EC323ED75195AB1C57E5D867E2CE45F7807153D9100902DFAB1F49963BFA21F0BDD408A02803CA31F4B8B46A331BC668F6BE141C37CD1305F7CD93C64B626CDD6E454EB90D99A9C6AA95448C602A6351A8DD5A36359B70200908DD5A363CE7EACCE91B1001191E5438B070606F8BF20004097D8194BF1BBF4997CE53E27BC0FD8C9F0360450D76834B26E0200A03CB43DAF505DAACF90010000C883D8FD5874C344E214010080888CE5EA70B26FF01DF2D414D7937D5DCBED25E1036791377F0F7AE6B1CAF2F0F6ABEFD1F754784F5108DFD6D2C907004009A88E15D6EB756F6850B92BB7BDA12B79F85618B9B9BDDFFA61E297DB2C41CBC52F72791B16B947E7EB0473AD828E0200009480D25861E4D3EB24E019761D8E9AA9DC3A3CC1E67A5B624F2F8BBBBBC8B33A7BF6EC5815A213DCB501404E2C1F5A9C7513A04721EFDD10D4E593DE33EFD2E864A2E32A6F160C5EB8A9C1BF000015CA494441549C75130094C4D6FAAD577CFCB2041B5EF7CDEBB5370659295EC60A9F10E65C6E0DC6A5BDC7FCD489CE9D71527FD64D005078F73F352122336764F0CD7DE48AB69F803CA484EEB7C13B310B0000119939A32FC19FAC5B0D9D3AEAC7728DCDC592F8869C213B75CD09734E63776D126BBF417B741E825D467DAE18F7090380129B59AD64DD04642C22637913836B89CA7D135C6F15BF4EA8FE566595CAF29046FA6E1E54A6933A439603000A844E2974FA13404F0C10C4D95519D26D498F26504A8C15A2D339EF41C373EAB4DFF101BE327972621ADFF1EC9AF091DFA02F5B0080656695C0D4EB347CAF30A59B602199FC64D6A0241772EB8DD4DBA4C699AE7C93966BA1CA54BCFC1C1D80EE98345B5DDBD7C8AAB55DDB17D415EFDE0D501139912E43AE3B56E4A76136BB77362839A9F76FB99673B70EA0774C4E752F63AD1C5EDAB57D95DBD08A2D1A6B2363F50AF507442A7E8FC1B78C1C3D1C19B9DF901686DF17C35561C8931FBB99E1148314790BE805CE8C75FE82F78594DCB4757B87FBA21F4B9F391AEB22632130CD78A340D0C09FF7D6AFF538CFC65614748359ED7729B32A77FE1D54CCDB3600B04C9A6DFBF5ED9BB72D5A38DFB7D8ED9BB7394B26433F96168D466378CD1E8D153223AF9C061D224B4A70DF9553DA3122D933B643DA6F3F6F3B594BBCAFBDC578A437802093532DE79F0DF57BBD6536D4EF7515EB7E3B61D3FEE05AFAB1CA296EB608B9A76B21BE1B9846C4C9F3F102C83F6F605A77FB3D972E3AC7F99650556E642C8828DC1035D65DEC3B6946B29B45A5DD30956153007032A77C46006FBA6DCB472F3AD77AE15B0065C25861AF0B9A8625598F7FA93F954882DB9FD221D859D0DE85FD4825710CD446B699BB8F0225664EB57CFFDCB07EF30DEB3707ADCDBAD5D0897E2C048E09AADC60B6C367410655E8BB2A682F5D18D354BF1786E272BAC180D2335B7453F53A3256D9C47D32A3FA569DEC3171E58AE5E3DEC50A00D23645A754CF2363A1DBC2BFB798DB1B9302402CF463818C856E8BBC493A010B400930A51D642CE44827439600902B668BB1C25E47C6020040BF29FAB17A1E190B38E2FEA726B26E028092A01F0B642C60DAD6FAAD5937014079D437AECFBA09C818190B1011593EB438EB2600004A85FBBC030000E847C6020000D08FB14200008A6D64D5DAAC9B001F642C00008A6DE5F0D2AC9B5012432BB668AC8D8C050040B1D18FA5CF1C8D7591B100002836FAB1B468341AC36BF668AC9039EF000000B27A744C6F85642C000000FD182B4CD7E0E0A0A83DD2D82AA958180000E41C192B175C51CCCE5B0000A0A0182B040000D08F7EAC6E73F651591D57F612BAAF0000280DFAB1BACA1E13744EBAB25FD70FCBA6710000401F3256F778E7BFD371050040593156D86DE42A00007A0119ABDB180A0400A01790B1BAA75EAF0F0E0E0E0E0E3AEFD140E4021042FB8DA7F36FF9D062E75BCE008A8B8CD55576CCB2DF66DB1E00C8BF2B3E7E59D64DE89EEBBE797DD64D803664AC747953946FAE722DB4DECE9E3D3BBD860128903F1EBA3CEB2674C39AD16FFB2E9F3983AF67A190C8580090773D1E327AFCF0515C642C00C8BB99D54AD64DC8528F1F3E8A8B8C050079D7E31D393D7EF82A4656ADCDBA09F041C60280BCEBF190D1E387AF62E5F0D2AC9B5012432BB668AC8D8C05007937B3DAD321A388873F6FDE3C11D9B973677776473F963E7334D645C60280BC9B345B9D5772D6996738DFEEF8DEFD9DD7D91D890F3FF343D6F2C1A9A01F4B8B46A331BC668FC60AC95800907793539D5EAA17CC3F5344B66EFB9EFDB6F33ABB265953F370C8053AC990E91BDED28F0500BD44D7A5DAAE67D3D6EDAE3ACF5FF03EFBF5A6ADDBED25D6EBA0B7CEF2E94970F8766B830ED9B7FDCE85AE55AE02CEE521A7828CD5E3C858FA59B7718FBC87BB6231009834DB5AEAB1D2C0ED9BB7B9962F5A38DF5EB868E1FCF317BCCF7EEBDAB5F576D1C2F9763D8B16CED7D5BC2089EB0FDA30E4782DF6A13957398FDA5E1E7E2AD23E33C83932561ED90FDB0100D1D11DB2A17EEF2583675BAFAD58B0A17EAF73AD6B1793532D6B93450BE7DBDB5AC59CAFED0A9DB56997F8F08336F43DDEA0B5D66BD7512B9E0AFAB17A1C194B3FBAA600E8A5E552BDEEF67BAC17972E3A47442E193CDBB524688FF66BE7423BB1696C6110ED194BF178235759424E0519ABC791B13AE5EA73B29EFA2C8EA4E5ED94728630E75A6B399D58005CCC299D434E37DDB6E5A3179D6B576BBDBEE9B62DD65AE72AD7DE9D0BEDF269B4D02571E5BE1BAA1FAFF7AD6F8521A722D5D382FC2BDE4D4772AB5EAF7B7BB0ECC014D2B9656FC80C2D00BECCA956877F3E7AD1B9CEB7CE6A5DBB70BEBD61FD66399C426E58BFD9B530A8F2C47F341E7E4823438E57E554386B53DF4BE7270145443F961EE1C1C85A6B7771A96F08002232D5D2D01DF2B10F2E74BEFDF6BF6DB2AAFDF6BF6DBAFCC3E7BBD67AF7E85CE2DAC4AE2A25C92AF71E97E2F1BA7667BF756E1874F65CA722D5D382FC23630140DE757EA9FED6BABB42EA0C596BAF72B5C1B949DA492271FDAEE3F21E946B95B5DC55CCF744059DBD906DD183C8580090773D3E84D4E3878FE22263750F93D90124D3E3DD213D7EF8282E3256BAAC3958A42B009D307B3B64F4F8E1A3B8C8589DF24E5A772D09BF5383EF5BEBF5ECD9B335B6134071F578474E8F1F3E8A8B8C95BAC1C141BE3C08A01353BD3D21A9C70F1FC545C64A9DEB960DE42D0071DD7EDBBF67DD842C3156888222637503B90A0012BBEB3BEBB36E42DE8DAC5A9B7513E0838C0500F9B57C6871D64DC8186740C5CAE1A55937A12486566CD1581B190B008062A31F4B9F391AEB22630100506CF46369D1683486D7ECD15821CF8406000090D5A3637A2B2463010000E847C6CA06377F0700A0DCC858000000FA91B1000000F4E37B8579C1BDE001002813FAB172C10A58F57A9D740500403990B1B267072CD7120000505C8C15E64564AE9A3D7B76775A0200003A47C6CA8B9051C2DAC9A72FFCCAA66E36060090B6ED8FEC3376AC5B71F979A79F7EFAC9FFE5E4B91F1B5EF8F1ABBCCB8F7FE3F159B7140991B1B257AFD7ADDB65D931CBF9DAB2FD917D59340D00901663DF5EC398681E68EE1FDF2F2286312156C0722F37326E28922263E5821DB3ECB7D60BEB1F5B76ED0200A4A9B97FF7EEDDE3FBC707660D4873FF91DFF98EE5B5636B59B7120991B1B2E11D19F41D2B6C7E6DA82BCD01006463E3ED47FE23EDFC9DEF5C8E82E27B85F9F58B5FFC22EB2600008084E8C7CAB5F098E5FD2A62C8C479EF1D2282AA2ACD3DBA568F8EAD1C5E9A752B00003D8A8C5560B1C25078E1D2E42A9746A3B17A742CEB5600007A11190BA5B57C68F1C0C0005D59000045432BB668AC8D8C85D2A2070B0010D31C8D7591B150667462010014351A8DE1357B3456C8F70A010000F48F7E90B1000000F42363758FF34EEE9D172B9090234A7CB0E53B4B008092613E569184DFE3AAE83239BA79F3E6D9AF77EEDCE95D18B2DCB9CAB7C290CDBD0BC3AB72AE8DBBDC57C87E9D0592D5EFDD367C8FEAFBD272EC41E5137C162A6572F5B903E8263256F794351B7522DB73326FDE3CE735CFF9D6F75A15141AD4CB586BBD1745DFAA42D6C65DAE5E731A5B89E754AB4481F48EDDD500FB6D500D213F278A65F2F3B903E82632565A5C2359D6539FC5912AC2EFD2EEBDF1BABD44FD8EEDE1BB566989F728420E507DB9B7252147A7780FFA04B7AA775D05635DA254824250B0B0F615D915E45B3EEEF264ACCD9D2744BDFEF06DC52F862AEE4BD7B1C73D332A3F2741658AF5B903D08B8C953ADFEBBD1D089CF1C277436BE251BD5EF746A5C8DD294EFF0A6A89378A592D095FE5DB1295C2BE47E72CE9BBA1B7A95AE669F5F2F84B27D7E9F0EC65BDF0ED430280F261CE7BBA54F2906F99CE07D19CB1C3193E7CA34C484B92D155954A3DE15D5F8A5CFD0136891A3C52A910D6D9C8D590D6BCC3627D4C7CF400D4D18F554EA5991DAF9E963AE9BE0AB928C61D43CCB3C879EE925A27966B3CABF37D752EEEFC30C592042C003632560905F55415EE7E0791F3C69C1207CADEE9C9504F12CED7714F4EAC6D3BD9579715F773079015C60AB3A737F7C49DB3955E4BBAC63B0D4BFD4082BE23E6FB3AA492C83271FB6FC2E74DAB2F8FCB354E1A59BF6BE29ACAB689F7A5EBD83BFC5E64503DBE658AF2B9034803FD58D9E8A457492545F97EC9CE777E7D484BBCAB5C55C5FA2A5FACAF07DAF3C314CF92ABA4629F967571F24E6F778D0FC69DA3AD32EFDBBB645EE83DA522EB095F1E52D277BF915B25A03252A9B2AFCE8F3DE8F30D3A27413F27DEBD87FCD804B5B6CB9F3B806EAAB4DBED254B972CBB7259F34073FCD9F1CD5B36574EBCFC9397CD5D7FF38DCB871667DDBC5ED1B5E953913B2ACD442E11593D3AC633A101008A4656ADFD993167F125734E3BFED5C7BC72C631B5EAB1B599070DF345C37CF165F390D99A345B9353AD43666B72AA3569B636DDBE7EE5F0D2FB9E784144D6DF7CE3FEC7EE5BF39535CD03CD5D0FEE5AB7619D305698A1EE0FCC05E5A7820E11020090678C1566C6357297A0EB28FC2EA6BE8583EE13D1614B0000800B192B4B1DA699589B279B055F748D4663F5E858D6AD0000F42232164A6BF9D0E2818101A6640100140DADD8A2B13632164A8B1E2C00404C7334D645C64299D189050050D4683486D7ECD15821DF2B040000D03FFA41C6020000D08F8CD54314EF999E9FC71AE6A7250000C4C57C2CC450A6BBC05B541E7E12F4E014DF67C2789F6A62150B79924CDC36246B73D04EC39FE292A07EDF9AD33EC658C71E5E3E56FB55EA0C7F6E4F7A3F0F003247C6EA2185CB466937D8F56C63FBADEB8183B11EB51B7EC10E7A6E5DD05A5DCB83DAE95B32283BAA9C13D729F59E4FD779D6788CEAC71ED49E90F647D61F5426685FE1B5A577EC00BA898C555AAE5136FB66EE767009BF4DBCF7CEEFF692F0DEACA0C74E7B771DD992F0628A0712C299125CCF090E615D26E35ECB559A6155EBCD259D2CEF26D74E9DED712EF4ED77E9E6B107B527A8FD41ED0CAAD65926EECF58113F770041C858E5E71B38EC5CE27A908E77436B5254BD5EF746A5C8DD294EFF8A6C89F8E52DAB55210D8EDC7502BD700DEB70EC296414AC108ADE7E00F9C19CF79253C943410F31EC70D7CE54E4EC97F20D6A212D51D46183BDFD01B664D75AF50D9DFD280976A4D74E07393A70A89C136B55C8D09577CCD1F5A2CB7CC7407D87FC5C2F7CAB0A2FD30B011D8013190BA928D6ECF8A00BAD25682C490BFB72DE850BB09D9014CBAB9C93A04D7C8FC57730AE3BC7EECBBBDFA0F14D896A6764190216D083182B847E413D55F9BC1743AC8B5FD074E64EEAECDAA537DB6BBCEF39C9B049DA3FA39032042CA037D18F05A55953716B539FB3955E4B54C4BDD03AC7D1EC0D3B19E70A0A6D41FD67719777D89E58E55D6D7015F33629C3630F0A7CBEED0F6AA74A19F526851F4BDA9F3B8034D08FD5A33AE955524951DEAF254AC0AC76C596788B753E10695D9CBC53BC77067CF74DBDDA903C31EFE87B6B39F7159E423A591E5232A43D2ACB436A766591F0F3DCFD630F3A1C6F93C2DB195E26685F41E73FFC583A3F7600DD5469B7DB4B962E5976E5B2E681E6F8B3E39BB76CAE9C78F9272F9BBBFEE61B970F2DCEBA79E892AE4D9F8ADC91C696AC1E1DE399D000004523ABD6FECC98B3F89239A71DFFEA635E39E3985AF5D8DACC8386F9A261BEF8B279C86C4D9AADC9A9D621B33539D59A345B9B6E5FBF7278E97D4FBC2022EB6FBE71FF63F7ADF9CA9AE681E6AE0777ADDBB04E182BEC65DD1F980BCA4F399CA405004087182BEC5DAE91BB045D47B16EFE19D241D5794B0000C81B32564FEB30CDC4DA3CD92CF80E351A8DD5A36369D40C00403832164A6BF9D0E2818101A6640100140DADD8A2B1B6B08C4507000000E8257334D615D18F75C5C72FD3B833000080DCFAE2D7BEAFB1B6888C3573065F3C040000888D8C050000A05F54C6AA56BAD30E00008032A11F0B0000403F32160000807E916385642C000080D82232D6A4D9EA4E3B0014D759679EE15AB2E37BF767D21200C88FA88C3545C602A064EBB6EF592F16CC3FF3AC33CFB0DF0240818C6D7854B1E471B58802642C007AB87E5D586FCF5FF03EE7C24D5BB7072DB4D96B9DCB9D9B74B21C00421C577B54FD096C23AB22D258E458615B714F007A9CEBD785EBEDED9BB7590B172D9C6FBF1591450BE79FBFE07DCEB7F65A7BB973E1A285F3ED9A5D55F996772E0700158D46434B3DF46301D0C3B71FCBB2A17E6FC85AFBED2583673B0B5B2F5C0B4564D1C2F91BEAF77AAB72ED256839007407190B801E5618B2ACBBFD1EDFB813B424BCB0AB72BBCCBADBEFB974D139F6AA75B7DF63BFF05D0E00DD1491B1CC29C60A0128B9E9B62DF66BD7AF0EEF6F929002BEBF769C953BCBD8CB3F7AD1B9972E3AC77E1BB41C00BA263263D18F054049C8AF0BEF2AD712EBED0DEB377FEC830B3F7AD1B937ACDF2C221FFBE0C21BD66F762DB4973B5FB8EA095A0E00DD1491B1A65AF463015012F2EBC2B9EADBFFB6E9F20F9FFFB10F2E742EB10B38D7DACB5D9B3897FBD613B41C00D40D0E0EFA2EAFD7EB8A3590B10074EA5BEBEE92805F17BEABAC85B6A0B5CEE5CE4D3A590E008AEAF5BA3766A9072C61AC10408786167F2068D5E8D89DDD6C0900E8E58A59B10296D08F05A043D7FDCB1D41ABF80502A0E8EC9815376049743F16BF220100400F4B90AE2CF463010000E81795B1988F050000101F6385000000FA4564ACBBBEB3BE3BED000000C85CA3D1583D3AA6A5AA888CA5EE67C61C5D5501000074EEB8DAA3B1CA2F1F5A6CFF1D29328A8565AC95C34BD59B35B462CBE24B885900002017C6363CBA60F0E20BDEF926C5F28D46436F0322FAB1E2EEEFB4E35FDD416300000034530C33AB47C7147BB014691B2BB41CF3CA197A2B04000028A224196B707030E87E5CC7D434873600BDE3D3ABB6FDCDF07CE7DF59B708400985C418BD6247A2A0C7505B8EADCDECA031007A9DF53BC4F9370068D79D98152F6385072C113968981D3406008EC2AF140029E942CC8A91B122039688BCC82F4400FAF02B05407AD28E599AA74FBDF832BF100168C3AF1400C5152363D5EBF5C8AEAC4326CF3704A00DBF5200A427476385A210B326F98508401F7EA5004849EEE6BC4B54CC9A9CE21722006DF89502200D39BD778384B68C8E7D001AF12B058076DD0958A27DCE3BFFE90490D81F7CE46DAEBFF99502A0B874672CFED309A0039B1FDAEFFA1B000A2A2C63351A8DD5A3638A151D5793ADF5477534090000A0535632D91A6760503DF6A808CC58CB87160F0C0CAC1C5EAA71670000003D2230633DDAA84AE3856E36050000A034FAB26E0000004009F9F4631D577B74FDCDCCAC020000488E7E2C000000FDFCE7632D18BCB8CBED00000028A8ADF55BBD0B03E7BC9F71527F9A8D0100002889AD7E0B192B040000D08F8C050000A01F190B0000403F32160000807E642C000000FDC858000000FA91B1000000F42363010000E847C6020000D08F8C050000A09FFFB374B6D66FF5BD2B3C00000054F864ACFD8FDDD7FD7600000094C95119EBF8D71FBFECCA655935050000205BCD03CD5DBB77BDFB5DEF7EE3096F1C983570FDB7AF5F38B8D0BB7CD6AC599155B9FBB19A079AA93419000020F7C69F1D374C63C29868369B2262988688340F345DCBC58CAE6A3A63591BA7D76200008042300E1A4FEE7BB2D968D6FA6BC641C3CE48CEE5B55A2DB29E4ABBDD5EB27449FA0D060000E821FF178471B370386981D40000000049454E44AE426082>|png>|801px|602px||>\ 

  \;

  Now read the data into Octave

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      cd /home/student/courses/MATH547/homework;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      data=textread('cranium.txt');
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The components of the data vector are <math|<around*|(|x,y,z|)>>
  coordinates in milimeters of cranial landmarks. Some are separated by
  newlines in the cranium.txt file, and appear as NaN (not a number). The
  positions of the NaN entries can be found as follows

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      find(isnan(data))'
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|19>>|<cell|<with|mode|math|20>>|<cell|<with|mode|math|54>>|<cell|<with|mode|math|58>>|<cell|<with|mode|math|62>>|<cell|<with|mode|math|66>>>>>>>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Pick a number of points (at least 7). Here is an example choosing the first
  6 points and last 2. Different students should have different choices.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      subset=[data(1:18)' data(21:23)' data(55:57)']; disp(size(subset));
    <|unfolded-io>
      \ \ \ \ 1 \ \ 24
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      pts=reshape(subset,8,3); x=pts(:,1); y=pts(:,2); z=pts(:,3);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The volume enclosed by the chosen points is filled with tetrahedra using
  the <verbatim|delaunay> command

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      tet=delaunay(x,y,z);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      size(tet)
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|12>>|<cell|<with|mode|math|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      tet(1,:)
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|4>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|7>>|<cell|<with|mode|math|3>>>>>>>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result of \ the <verbatim|delaunay> command is a list of tetrahedra
  specified as indices. For example, the first of 9 tetrahedra in the example
  above has vertices 6,1,3,4. The tetrahedra can be visualized using the
  <verbatim|tetramesh commmand>.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      tetramesh(tet,pts); xlabel('x'); ylabel('y'); zlabel('z');
      title('Cranium tetrahedra'); print -mono -deps tet.eps;
    <|unfolded-io>
      <\errput>
        warning: print.m: pstoedit binary is not available.

        Some output formats are not available.
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  <image|<tuple|<#89504E470D0A1A0A0000000D494844520000023B000001CB0802000000A1CECE880000000373424954080808DBE14FE00000001974455874536F66747761726500676E6F6D652D73637265656E73686F74EF03BF3E0000200049444154789CEDDD7D9024677DD8F1DF1C03F4A243EC3A8A4B8ACB21A7C42A9F4089AC53C02084CB7225E6A5A8E225980A72FE80249231E02A90E48A2D19CB025184489C7181AB5010A20856D9D81C8E411220EE48A4BA3B9CDCEE562C4B2B23CC9E8A4BED119D6E46D2EAE6811B34F9A3777B7BFA6DBA7BBA9F7E5EBE9FA2C46C4FEF6CEFEDEE7CF7799E9EDEDEE1EF9F5E3B39DC38351A2A2598B6F283E1D1FBEFBDE7B7DFB0B87B3108828560A1EB230200BF0C3607FB2EDB272293C9A4BF7672F82747D74544C623E9F38C3CE5E8778E881A0C86832008827E207D09FA41621F35A6F400D08AA01FC870E7CDFEC6A9818C4722A24482F1A8B3E332961AAA9192B12CF417B6BA2522FDED7BC71248B2613BF70200E6A3B6E7FF7EE9973EDF1F3E236A2C22A2C6B27AFFDD3256321691F0BF59FA2212FCC25BDEADE550BB76568952C353C3C18B0741102CC992EAABA01F04C156A594526A1CFBB7EACBD6BD440B80016EFDF0AD23350A9FA6F22684C209A4DBFEF36D06EE2FE39D623DF0C0E3FDD1586D154B2951EA9E2F7C6AE5C460FD0995B7ACB57662B0FAE7B7ABBC9ECDB2F2A1378AC865B7DC53F3FDB5539B83EBEFBA57762F4AB028C182F483C3BFFBD6B049FB3E7C40C622679544FFEEE1BDBB838560213D7F08009A0D360777DE7167F13E2BAB2BB7DE72ABDA5466EE3FDA1C84DB0F1C78475F8DC331961A2891B15A393EF8DCD135999AE952F137D78FDE2B6A38B3588FDCF2C6C4968B3FB453A9DAC19B47FC90E2075360CF25AF7AD59BDE10BD79F4F860FDC103EB27D6971697822090913AF8F1F7AE9E18AC9F528367D4D1E31BEB0FDEBB7E62FD82F32E50BB5510040BAC0B02E8543840595F5F2FD8E7C0570E0C8683704FE3F6DF54C3D1D690E02D6FF9F9BE1A4B38CC0A07686B1BC351382B18198BF4E3E32D254A8DCA9D6EB0E777BF3C738B36E1875EFFE8DB44A4E4F18BC8A1EF6D44B74F3E74543687C32786413F90B18852478E0F3EFDEDB5E4BD41B0D45F0AFAC148581704D0A5AD29B5598304A5D4283CA141E3FE175E74E1F7BFFBFD689FF89B3BFB8F5538D80AF555382B3856A2941A8F4E6E2AA5B6CF1D188BF445C6DB47136D1C971D24A577DBF8F8DB44E482DFFEB2883CFF79BB7EEF8D97BCFDB27FBCF8A217443B8477C5774BBC19DE8EEFDFEBC93B5FB1E7DF5FF14F5FFA53E76C3C35BAF3F0DF7FFEE8DF4F26D50E2C576C8D4A44440D069B83E099408D958C476B1BDBC3CDF1CEBD8B9B8B2A502A50532765B0B205A023E1B3FFCB2E7E5962FBC38F3C1CDE50D3CB40A35967E165EE5FE9F1C39D2FBCE8C2709FC49B3BFB8FA7DEB7AFC2B7C3688D255A138BF6DEB1F5D4AC4446AADC8BB7F2760BB7BFF75FBFFC3FBEE69FDDF9E0773F72CFFFF9D09B2E7DD7153F177F97C924F9EEF137EFFEEBEFFFCE81634F8FCE8AC8BB5FF373B7BDEDB23FFBDFEBAFDBFF8DF75F75F147DF7CA9FAD18FEF3AFC588D032BB2956A351C0E1782854005325627876AEA5F76AC86C3E170F730ECD3D609F1E119865D4C8402F0DD5911C91F03A59FE18BF74FBF6FDDC77FF86F1E7ED93F7F994C77EEE1BF7938511F355623B593CFBEC856ABC25304B7C65BB38FB5D433FEE08FAE8E6E2FFD666CB56DAC44E49DAFDC23227FF88DD5E1D39B7FF8F595B058D1233F3799243F4AECCD5BFEF2AF9F7EE64C78FBDAD75E24221FFFDAB1A79F79E653DF5CBDFE575F7EED6B2FBAEB7F3E34FFF1A78C64AC6EFFCA110996A41F88A8238FAEABF595F81EB77F755582750902E907D25FB8E7836F90B148C0180B4067C2459FE595E5CCEDC5B78B1FB378FFE2C75F5E590E5F1A1C5A5E59CEDC7F6A8CB5F5FF63A5C6A3ADE9BEE2630DDB56EE197FE99A4FE73C8812919F593C47447EF8E469F9C973279F3C1BBF2BE3F6F49B3F7CF27474FBA5E7BD584496FFE0EDD1960B7FFADC599F459D62053F7BF1AB7E79E7448CD5EF1D1F3EF8275B0F3516E9CBD7BEF4E5A3DFDB58DB180E3647ABDF3BAED68E6C3CB1B1B8B4B8244B9CF20EA03333D799924FB635F75FFE5F3B51DCF78A7DD1F6528F1FDB9897BAFEF6A65178B6858A56ADC653AF938D3DDB965A672B3AACEDEDFF77B079E14FBFE4BC172D6C0C9E3D7FF145F1BB9E9B4C9EB7ABB7EB27BDE726930B96CEC978B4D8ED93C3675F7ADEB9175FF7F98DC1B3E50EABF4F1A7F65FFDDBE3D136F5831519AB775FB9373C2DF0D3F7AF7CFBD18D3BEF3BBA75EFFA8AA8E1F0D430787EA0FA4AFA59AF35068036854FF7A52ECDB33D0B17FDF78A575F91D8E5F091C305FBA73FD0D49BB31E7FDF2BF6A51F3F61678C252325A246E1602BFD0EC9B9C55267C1E5ED166EFFC2030FDDFC6F5EF39E7F75C9AD7F79E4FDAFFF17F1BBBEBB71FAE7FFD13F78FD653FFBAD878EFFCE9B2F4F3F5AFCF6A7BE71ECBF5C7DD51FBCFD173FF0DF0EFEF8EC4F5E7DD1CFBCEF75FBDEF4F1BFA87160958D25E8074BBB978220906061E507C3A983DC1C85577892BE84AF3E16D9B9CE53E6F710AFE202D0BC12BFA34FADEE975897CADC3F19B9FCFDAF78EDD69E871F382CB2F5E615AFBE227C33B9BF88887CF083DF989EA82A35E3A74454D959B5BCDDC64A443EF1DF1F386FF70B7EFD3597BCFF75FB1277BDE78EAF7EF25DAFBFEB37DEF8FCE7EDCA7EB4D8ED4FDD73E4FF0D9EFAADD7BFF291DBFE83881CFDBB139FFCDA91F4871EDD7DD3CEED2F5C2F220BEFFC48A9CF22CF38F1EF109C1C0E76B68C958CD57038DC9A0F1C6F5D1163D4DFF9852011ADF0DE85FE02F387009A111BD914EFA6C63BF367E1ED83870E26F6DA799CB9F73F78E8E0AF5CF52B070F1D8CDE37FE66E61531F6EFFFCEF653E368EBC977675630FF13DBF96FBE855FCB8E417CFBD9F173377CEE9B377CEE9B22B2784EB071D7F53F1C6E868FFC9D474EBCF286FF5AFE91BFF4C0C35F7AE0E17A8734A73FFEF66A102C85B7D71F5D938DB5D89DEAF6FB56826061FB448CE0B3EFBA2A580844E4D73F7768FB84979DEB656CDDCB691A009A55628C153F254FCFFE07BF7930FE8E8937C3FDE37F31E3031FF8C5D853E3584464B8BE2AC757677DE840CE3673C1F23FFECD377FF84F0F9E51676F7CDB1522F217871F6AEA9175386FCFF9AF7A6BF4D6F0B155B57A6F7CD4F5C5BBBF7C686D63F5C46063530D1F5B95136B1B273716762F04FD4094FAEC476F4ADFBBB4B814EC0EC2AA01C09C46E3D1CAEACAA1070FCDD8AFBF350B67DAFEF1627DE213BF1AAD636DFDBF3A7640C6A3EDEBE1663F9034B7D67264EDF1431FBDE6FC9F7AF10F9E187EE44F0FDD76E081A61E598FE163B1BA9F5C93B17AEBBFDC13BE0CEBEEA3EB87D636EEFEEABDD1BD6A73301C0E4564D41F895279F72EC992DE4F0280CBDEF75BEF539B2ABA8A445AF88729D4F6C590CCD97F716931B1B41F8DB19488042FBF2AF7934E68E88F427DF1FEA35FBCFF68230FD5BDB1C85805FD20D81DFE31ADE0E8F18DD8B296881A0E8683AD3FB2355699F70641A0946256104023AEFEB757CFDE4944B6CF74306AFFA5C5E4AFEFB13116CF92F3DBBEC8C5427F21E8CBC630D975A594524A0291B1CABB77A4467C2D00607171317E514199CAD4C9A28BE9A294B1DA6A525FD458E4B15539B59EB877301C04FD40A951DEBD6AAC824DD6B100F86E697169436D4C6D7AC3270F2EBEE7B3C1EBAEEBE8900000C870FAF4E9E595E51B7FEFC6F0CDC9643235FD3429BEE03900005AF47ABDF4C65DE94D00001888620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076A05800003B502CD8A7B7ADEB036957D54FD0F97F108062C132BD5E6FB26DFEE7E8469EE5CB3C083901E647B160B1C964D2F92300D08662C17AE1F025314F9898392CD827F13899FB178C90EA7DF432EF957790B53F53C679B0DA993367FB5D1F03D08070AA307E231A3CA5EF8AEF33F3493CDC27FA6FC10EE983896E67BE7B8D634E3F72624BF94706AC73C71DCB140B2E889E85D34FDFE97D3428339AA977CC4D3D32601D8A0537658E3C74AA51C792C7DCDE2303865B5B3BC53A162C36F3F9B7DE1374EDA7F5F43B96D952EFA3D738487205DB31C68265E28B4F79038E689FE295AAE82485C4B256E2BD660E6BE2EF987784897DEA1D73FA91CB2FC595DC1930D6DEBDE7512CD827F1A49F774244FC467C9FF4324FA5F79AFF905A3AE6F28F0CD8E8C61B5FCBAC2000C002575F7D09C50200D881620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076E8777D000072F57ABDE8F66432E9F0480013502CC0388950F57ABDF0BF42B7E0378A051861E6702ADC48B7E0338A0574A6C6A45FBC5BE5DF0B7003C502B46A64692AEA16432E78856201AD6BE9048AE8A1E8163C41B18056E83CCD8F252E788262018DE9F6647496B8E03C8A05CCC5B4974C31550887512CA032D32A9589A942B8876201A55851A934A60AE1128A0514B13454099C0D0F37502C20C98D4AA5B1C405DB512C40C4DD4A6562890B96A258F09757954A63890BD6A158F08BE7954A63AA1016A158701F952A83A942988F62C14D54AA1EA60A61328A057750A9A670363CCC44B160372AD51E96B8601A8A05FB5029CD58E282212816AC41A8BAC512173A47B160342A651AA60AD1218A05E350292B305508FD28168C40A52CC5542174A258E80C95720667C3430F8A05ADA894C358E242DB28165A47A57CC354215A42B1D00A2A05A60AD1388A85C65029A431558806512CCC854AA124CE86C7FC2816EA2054A887252ECC8362A12C2A85A6B0C4857A28168A5029B487252E5445B19044A5A019538528896241844AC1004C1562268AE52F2A05033155880214CB2F540AB6E06C78A4512CF75129D88B252EC4512C375129B884252E8428963BA814DCC612172896F508157CC354A1B7289695A814C054A187289635A81490C654A1572896D1A814501267C3FB806219874A01B5B1C4E5368A65042A053488252E5751ACCE5029A0552C71B987626945A500FD982A7406C56A1D95024CC054A10328562BA8146026A60AED75E6CC198AD5244205D882B3E1ADF3E0830F52AC795129C05E2C71596479799962D541A50097B0C46585C71F7F9C629545A500B7B1C465B8BD7BF752AC22540AF010538566BAF2CA2B3B2B56AFD78B7F1F24DECCDCA2079502204C159A67DFBE7D468CB1C238C51395DED2F60144B7F9BE041061AAD028DD142B5E88284B51A2D25BDA3E06BE0B0114E36C78137450AC284B9D7CE8E836DF7300AA6289AB5B46CC0AB68A4A01681653855DD15DAC9666F98A476C7C3F01680353859A75332B18DD68EA6B9CF9385D9D6D08C02B4C156AB34BF3C79B6C93EDAF6BB4A69538E142480E007B44CF6CD109F1689C11EB58E97302759EDA0E004D6189AB559D152BF1854C7F5DF94A03B0174B5C6D30628C05004E6289AB59140B00DAC554615328160068C254E19C28160068C554616DBACF6E07000867C3D7C2180B003AC3125725140B00BAC7125719140B004CC11257318A05006661AA30D3A953A7281600188AA9C2B8CB2FBF9C620180D1982A0C9D3A758AB3DB01C0029C0D7FDF7DF731C602006BF8BCC475E59557522C00B08F9F4B5C140B006C9558E2CABCD725140B00ECE6C99FC0EDF57A9C790100B003C50200D881620100EC40B1000076D07DE645E29C96F86B0B12CB863E2C240200CAD33DC69AC4441BC338C56396DE0200F05C67B382D1102ABA11252ABD0500806E8AC58C1F00A0AA0E8A150DA4F47F680080BD3AB8E645C1D916B5D13F00709E235769CA2C1F19030097E89E154C57A4E0840B96BB0000A16BAEB946F7182B7EFA5F54A3F4651C3DB9B02300A0A4CF7CE6335DAE63156F2457008038AED20400B003C50200D881620100EC40B100007670E4F5587E9AF305679CDB02C02E14CB6293C9A4777D6AEB2D65DFBD77A6EE073E27E34575751F0B00CAA25896BBBD27D74DD7E243A97D4A37ACAC67937DCA88DF39D97F080D006AA35876CB1E6625686858DA74D5481A80F9512CFBA587593375D2B0049206A0228A65BD52C3AC994C6858024903308D62B960729B3410AD8474C3C4808CC5554C9A5035C07214CB1535E6066B3070285660E61922240DB00AC5724433738335D8D5B00492065885623944CF306B26AB1B9640D2608FCCBF3ED8C991B48762B9A3B361D64C2E352C81A4C1183E7C6B512CA7B4720A461B1C6E5802AFB6069A43B19C63C8DC6055E69F9AD89E99273D4E4FF89034788B62B9C6DCB9C11AFC198A15E3A5698088502C37593ACC2A8386652269F04307C58AE637E23F36BD5E2FF15394DE82929C1A66CD44C3CAE0D5D67082EE62C53B14DD0E6FA4EF225AB559730A461B68580D9CF4081B743F2B1865294A547A4BD7C7682787E706ABF2F9B48EA69034184077B1F826D6C6AFB9C11A188A358BA4A17D9D8DB1183CE9C030AB121AD62A9286B97553ACC67395BE3C098461D6FC68984E259246C33CD7CDB9828D7FDB653E201913CF4FC168030DEBD0B32C6CFBAECB73054305275CF0DDD90CE6065B45C374225A7EEBF2F558B23D364AC7895C3588B941DD3835B15544CB63A69C2B98DECE7764931866758EA158838896AFBA7F3D1634609865221A360FA2E5258AE58BC96DD17CEC5322F2A3C93FCCDBF385D7FF48D741611A0DAB24756E219C47B13C125D134B445ED87B2ADA9EA8D78F6E7B61C907A46DADA361857A6764F2A2AE0F021A512CEFC4BB158EB75ED87B22BAB760EC9556B26D84AD499CD6318DB941AF502C4FC52F3A1C762B54BB5E0518B4B5CEE7A1180B5A3EA158BE8B0DB99E4ADCD546BD8A31686B8C570D235ADEA0581029EC56487FBD0A3068ABC3ED86112D3F502CEC98D9AD9051F52A9668DB0B6EFD71E66EBD8197CF748E358C6879806221A964B74216D54B447E7CE30B24AB5B93A5B297A074BC6DB6378C68B98E62215BA56E856CA9575EB7CA28D93677C266DDA989BC48CB69140B456A742B647EBDE6E9D64C8E0FDACC1E8AF1222D87512CCC56BB5B2193EBD56AB7CA7064D06658C3981B7415C5425973762B6466BD3AEFD64CF60DDABA6D180B5A8EA258A8A6916E854CAB97F9DD2AC3DC419BE686112D17512CD4D160B742E6D4CB8D6ECD64C4A0ADEDD33A3C8B56FAAFAEBBF7B9532CD4D778B74226D4CB936E9511B6AD77D3AC2FF175E736F3F19A1D8AF9142D1F3E4D8A8579B5D4AD50B7F5A25B52A655A1DB9F2EFB8855DB3667C37C8A96F328169AD16AB7425DD5CBDB6E956D555525DB5610B6AA0DE3455AAEA0586892866E85F4D7CB9F6EB515AAAA2A0DDA66358C1769B9A19B62A507E965B6C016DABA15D2592FB7BB654AABAACA6CDBEDA92D938656DAD09D0E8A953EA1258C533C51E92DB08EE66E85F4D4CBBD6ED9DAAAB25EC233891B74172B4A51628B8844894A6FD17C90685027DD0AB55D2F37BAE574ABF68BDC3C994C44780E7184EE62911F3F75D8AD507BF5B2B75B7EB4EAF7BB3E1234A9C5622586478C9610EB9674952E69A75E1675CBF950C9D6771AAD7250BB632C6D954AAF8DC15886742BD46CBD0CEF96F3AD2254CE6BB758DA16A2323F0419339951DD0A35552F03BBE56EABF68B08ADF247EBEB5833A35570C2051389CE8B9F1D6A48B742F3D7CB906E39DDAA9B850940CFE838F3227E7260E246DE3981E4CA379D9F9A51609E7A75D52DA743250CAABCD562B112054A6FCCDBB9784F38CCE46E85EAD54B67B768151CC6559A601CF3BB15AA5AAFB6BBE568ABF66FDFA055A05830952DDD0A95AF571BDD72BA55370B8B55D846B16034BBBA152A53AFA6BAE562AB18542117C582056CEC56A8B85EB5BBE562A8845661268A056BD8DBAD505EBD2A75CBC556ED844A980044218A05CBD8DEAD50BA5E33BBE576AB0815CAA058B0921BDD0AA5EB95E89673ADDA1FBB4DAB5001C582C55CEA56285E2F17D12ACC8562C17AEE75CB3953A11216AB5017C58223E896911854A149140B4EA15B66D83FFD26AD423328161C44B7BAC304205A44B1E02CBAA511832AE840B1E038BAD5325A057D2816BC40B79AB63FB58556752CFD57D7DDFB9B4D140B1EA15B4D480EAA84C52A33B8D7A7348A05EFC4BA25A4AB340655E81EC582A7E85669B40AA6A058F01ADDCA97112A6102109D32B758BD5ECF8769599820FA4E63894B441854C15886162BCC15D182667E9F9A910E95D02A18C5C46245A1225AE8847FDDA255B08389C5024CE041B7B243252C56C154140B28E268B71854C14A8E142BFD626FA041AE742B335442AB600B478A95B9D645C6D02C9BBBC504205C6062B1A2132E38ED0206B2AA5B840A4E31B158C25982309EF1DDE2F5BF70CDF2F2B2A1C5123FAEEA08DB99D72D420567DD74D34DE6160BB08519DDE292EA70DC7DF7DD47B180FAE267F774D4ADA2508587C774059C41B1E0BBAA4FEBE94AC569EC56BC55374BD6882A7E9DDFBC4F900563588462C177D3976FDFD912577C6FE16336DEADD9A1CA3F98DC37012B502C4064FA893B7A7145E6BD551FB3B96E45ADBA59AAAF514507C354212C75F9E597532C604754A906E7CAE6EED64EA8B60FA9FEC914D37F57856EC126C78E1DA358F0DDFC63A9326A752B6C5503A12A3C1EBA056B502CF8484FA5D2CA75ABC550E51FCFCE9B80B128163CD255A812F2BBB55F4FA8F28E8721170CB7ABEB0300DAD58B99C4747D5C32994C269373455E12FE6F32397732F9FD6E3B1A8AD205988631161C64C858AA0C030F8F252E188B62C1111655CA0A2C71C1349CDD0EBB51A9B671363CCCC1D9EDB00F95EA0453853001C5826E359EF5A894210AA60A993FEC5CFA7C19F7BE16140BBA95FC6D9D4A192B71367C623BBAE2C3BF3FC54237F2BA45A86CC11217F4A358E85299EBA6C3702C71411B8A856E5029C770363C34A058D0874A398F0B3EA155DD142BFDA71CCA6C818DA8948758E2424B3A2856FA14CCE80FE8C5BFD1135B60112A85104B5C6896EE62A5FFBA6B94A52851E92D9A0F12355029E461890B4DD15D2CBE595D42A5501E5385985FBBC5E205864E225498075385A8ADDD6269FB76E4CFF9B48D4AA15965A60A591440822367B7E77DBBEB3F1233D5FB7D964AA16D7967C3330243A6EE8B5570C205BF613525FE87658BFF49A914F44B844AF8DE438E0ECE158CDFC83B27905C35AEE0A59D540A86887F97F2AD883453CE154C6FE7FBB50D9957DDE69F1A46E16C78E4E97E5610DA502958840B3E218D62B98F50C15E9C8B81388AE5262A05C7305508A1582EA152701E53853EBBE38E3B2896DDA8143CC454A19F289695A81410E2824F5E3976EC18C5B2039502F2B0C4E50F8A652E2A059457BCC4C538CC0D14CB2C540A9847FA824F89EDB01AC56A45D55FE80815D02C96B89C44B15A51E6A7854A016D6389CB3114AB45E96E5129403F5EC5E50C8AA5093F2A40B77815970328562B184B01C67275AA30FD376C9DF9D42214AB31540AB0887B53850E7C0AC5AEBDF65A8A35172A05588DA9428B2C2F2F53ACCAA814E01ECE86371F5769AA805001CE737589CB1914AB0895023C547289ABD7EBF1B4A05907C5CAFCFD25FDB5EFEABB814A0190FC252E46601DD25DAC7887A2DBE18DF45DDAA245A500E461AAD01CDDCF0A46598A1295DE52E641A4E277129502509E7B67C3DB4877B15AFA32973CCF874A01980767C377ABDD62155CF0BFEA8C5F62FF8275AFBC4967E1DB0B4043381BBE13ED16ABA5736C32D7BD643A4ED116BE9900B484252ECDBA3957B0EAD73591A2CC75AFBCB114BF040168154B5CDAECD2FCF1D2B98A62934891543C6370329944EF9EDE1E7D3301401B26DB78B6694F97AFC792EDBAA4B3D4F8A9ED0CDE01E8C112577B4C395730BD3DFE52AD663F3A8377006DE3B7E43674FF7AAC99A22F7953F5E2FC54007AF05B72B34C2F56FA0219052F34AE9A3406EF003428FE2D99715879A6172B53B3EB5E0CDE01E89178B6496CC74CD6142B7D0660F10EB51F9F21178056F15B726DD6144B1BA60A0168C06FC9357857ACBC0B47654E33F24B1080B6F15B7279DE152B7D390C99F5E74E38CF0740DB982A2C43F7352FCC91F8EB5C9275F50D89FDE2C34BD901B42DBA760FCF3699BC1B6385669E5818852ABE278377001AB0C495C7C76295B9ACFBCCBB18BC03681BBF2527F858ACBCB32D6A3F88F0CD04A035FC961CF1B158CDE29720001A70C127F1F0CC8BCC579B17FFB993320F1B3F3583F552002D29F9374D5C7D16F26E8C3589FDEDC7F829158D5CF6895F8200E89139BBE3FCCCA177C5929CAF6583977D62890B801EF1C1567C5CE5EA938F8FC5D286252E002D49FF69DCBC8D2EA158ADE33C1F008D9819A4C4357DDC7BB6A158F3CA4C51E6F70A432E0055D51E36A5772E7955D5CC2D86A05873495F8A30BA917995C2F83B0ADD0290A5A5C9BD1A57556DEA43378562352CF32F234BFE502CBD118087742E41E55D557592F5B7DD5B3D92AA28D65CCABF5A2BBC91392AE76C78C04F9D9C28616087CAA358CDE0824F00CAE8F674BEAAD746300DC56A40535F7ECE2A049C64CE49E78D5C55B543146B5E8D7FE1992A041C604EA55C42B1E692CE55C10266A5B631550858C7F04AB5F77CA50DC59A57FA7BB4A9AB14C61F936E01C6323C549156AFAAAA07C59A4BDE17B5C1AB14C6DF9D252EC010B6542AA1EDABAAB68D62D984252EA043E94AB9FA473D8C45B18C33F38A2989D726D32DA03DC5632926ED35A3586649FFCA36F31A2A4C1502CDAA3AE397B87E44E643155F77D4D87523D3502C83645E7EB0F81A2AC25421D084F9D7A5327355E9BAA3FCF0CE44B10C52FEFB35F3849FF85D7CEB0333E93F7BC2BAEBF899866259A960D5978975A080CE4AF103D8388AE52696B88048E767A233786A0AC572194B5CF056E7958A1F093F7A4DA158466BE41A2A2C71C11FE6842A44AE9A45B10C12FFABA0D2C2359F982A84934CAB54C481EBF89986621944CF359F982A84038CAD5442DBD71DF50DC5F2145385B08E2D958A68BBEEA83F2896EF381B1E264B548AEBF8798E62792773FE81252E98A3602CC59CB6E728965F4AAEF1F27400CD2ACDF8CDBC6E7A990BF7B17464238AE591BCEBC1E40DADE8165A35E7BA54DEBBD4B89C34AC70F1C517532CCC581F66AA100D6AFBEC891A9793E61BDB168F3CF208C5C20CAC1C604E5CCA0F4DA1582885B3E151957527A3C37C140BD570363C0A5029B48A6279A4C1EBC1B0C4850895821EA74F9FA6587E6976A999252E6F5954292EE5E7128AE59DC67F4459E2F28415956AFB72D2E816C59A21FD1A8E6E8FC7644C153A26F1C2262BBEA05CCACF6DBBBA3E005829F3459AE18DC96492982D845D7ADB24F6B4CEF33B4CC0180B9595B9A6806C4FBC305568853297F24BDF056846B1CA62B8102A794D01991E75F17C67A07A97F2E38B880EDD16223F0000063F4944415451AC19E2CFB6444B4A3CB525E2147F9325AECEB577293FBEA6D08062CDE6F38F628DB5F782B4735661575A3DCD8F33C5A10DC59AC1F39FC3963E77964634D073323A5795854E146B86F888819FC6663155D8382B5E3205D446B166E327BFD89CD714E0C21973A252F007C542352D5D538025AE4AA814FC44B1504DDBD71460892B0F950228164CC41257C8FC4A715559E844B1602E3FA70ACDAF5402B98236140B1DCB1C48F976C127EB2A9560E331C346140B5DCABC347E7A96297151A8F086EDCF9279957238CCC09C2816CC9238453E7E573C63F60EB9660EA738F74403FE8A90A52816BA54E6D55A994F28762D71D598F4AB7AE5D9F49E65B6788B13462C45B1A04FC1550A6B3F71183B22696469AA7CAED25BD233AB3C41C7F1AF61238A057DDABBF2B72167C377720245C9BFFFC2D5FFE0008A858E35F804DAC95461E7A7F9919F7A18745AE786FF7403C54297D2CF17735EA5307A1069B35B1D56AAC6DF7F411A834E1BBDF73DEFA558E858FAD97FFEAB14C61FADA9A9C2CEC7529D7F689724BEBB3A3C1294373C35A458E852DB57299458B76A0CB90CA9140011D978628362C10BE597B81CA8542333AB80690EFD8F43140BEEC85BE3893F4D672E71595DA996FEFE0B60208A0577A4AF752485AF4CB23A54110D33AB8009EEBCE3CE5D5D1F03D0BCC4250A2576CDA7F87F25679805C04C8CB1E09A82B9AFCCC940DB2F5408F88331166CD59B166D94FC0153418D269349D5D30813F38A991F97A11BD020C658B055C185CFA5EEA5346A5C76363103C9A5FC80F630C6021A90B96096D802604E140BEE4887A1A01FF30C7D1833019D605610EE888F66E22FC09AF395496DFC91140035502C38A57871AB78B74A8F29E40AD08E5941A00E7205E847B180CAF2FE488A34BD6006208E5941A08EF6FE480A803C140BA88C4BF9019D6056100060078A0500B003C50200D8816201002CF0AD6F7D8B6201002C40B1000076F8D8C73E46B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000076A05800003B502C00801D281600C00E140B0060078A0500B003C50200D881620100EC40B1000016387DFA34C5020058E0EB5FFF3AC5020058E0D24B2FA55800000B9C7FFEF9140B00608177BCE31D140B006081FBEFBF9F620100EC40B1000076A05800003B502C00801D281600C00E140B006007E38AD5DB96D858E61D1BD952556F5A62637AB74A8FD3D231D756FC29CCFFE035F6E9EAEB5EFE714C3B66C05E658BA5E7A7A5D7EB4DB6C59FFDE36F16BC63E289BEC6961A2631799F45E6E755FEA11A3FE6DAA2036B5CC9A7FE46BECA4DFD1BDA78CC80D5CA16ABDE53D53C3F60E1470C7F50C337F31E2DBD4FBD2D738A1EB0291A8EB925558FADCC3F5D535FE5A6FE0D6D3C66C076C96265CE47A5E78212935779EF25F345CB22F1E7AFF41359F992B53AED96FE40892FDCCC2D251F472A7EDDDB1BBAB5C7C663066CD72FB353E60445FA76E67B55FDC18E3E9045CF08895F84E3DB676EC9BCB7F1E15ADE078A6E677E4D677E95F3DEABEDE307E0A752C54ACBFC0D3AFD3C55E369AB4C0B4D9379CC5573A5F3938D7E0589AF99A58FA4E43A4DE6E3CF7D8C0090942C56F40BB2394FAF36AA9A2BFD660EE612F52D7E1C00D060DEB3DB672E72CCF9F8E9C5E7F42337B5AC1D3D72A5C34EEF5C3E5799EB7F953EAF7AE253AF99C75FF0E6CCC72CFF2E951EB3F19317E6FCBA9B70CC806F326605D303ACBC9F1FD9FE153B736456E3672CFDC8658E27739F7A5B121FBAF631279EB60AB614FCAB563AE64AF2BE82995BE2779539E61A5FF7C4E367FEFB48735FE546BEEE861C33E095EC75ACC40F46999FEDE8292CBEA5C6CF58E6FEE9E329B36656634BBD27851A472239CF4A331F3C6FB7AA2AFDE3A46F14BF57D57FC692FF3E550FBBFC9606BF51B51D33E0A1A962353599D3F663B6FAC8ED1DB0091F4E9B3626065BD5E00772F56B0A746EAB58C19EBD577DF260B787020070CC9147D7D5D1031FFE77BFBC77EFDE3DFF64CFBE77DE70D5BBAE4B6FBFE0FC0BCA3CDACE18EBC8A3EB6D1D3200C04B6A7D4DA9D1F0D4F0E4C64911516A2461AE92DB559947EB87EFD9EA110300FC353CB9BABABA717263697149862777A213DB1EEC0E663ECC57FEEA2BAD1F2A0000F37BF2C927FF3F9D5FA8E9209263FA0000000049454E44AE426082>|png>|571px|459px||>

  \;

  Construct a table of the coordinates of each tetrahedron and its volume.

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      subset=[data(1:18)' data(21:23)' data(55:57)']; disp(size(subset));
    <|unfolded-io>
      \ \ \ \ 1 \ \ 24
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      pts=reshape(subset,8,3); x=pts(:,1); y=pts(:,2); z=pts(:,3);disp(pts);
    <|unfolded-io>
      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The volume enclosed by the chosen points is filled with tetrahedra using
  the <verbatim|delaunay> command

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      tet=delaunay(x,y,z);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      size(tet);\ 
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|12>>|<cell|<with|mode|math|4>>>>>>>
    </unfolded-io>

    \;

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(tet);
    <|unfolded-io>
      \ \ \ 4 \ \ 2 \ \ 7 \ \ 3

      \ \ \ 4 \ \ 1 \ \ 7 \ \ 5

      \ \ \ 4 \ \ 1 \ \ 7 \ \ 3

      \ \ \ 8 \ \ 4 \ \ 7 \ \ 5

      \ \ \ 8 \ \ 4 \ \ 2 \ \ 7

      \ \ \ 6 \ \ 4 \ \ 2 \ \ 3

      \ \ \ 6 \ \ 8 \ \ 4 \ \ 2

      \ \ \ 6 \ \ 2 \ \ 3 \ \ 5

      \ \ \ 6 \ \ 8 \ \ 2 \ \ 5

      \ \ \ 6 \ \ 8 \ \ 4 \ \ 5

      \ \ \ 6 \ \ 4 \ \ 1 \ \ 5

      \ \ \ 6 \ \ 4 \ \ 1 \ \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result of \ the <verbatim|delaunay> command is a list of tetrahedra
  specified as indices. For example, the first of 9 tetrahedra in the example
  above has vertices 6,1,3,4. The tetrahedra can be visualized using the
  <verbatim|tetramesh commmand>.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      tetramesh(tet,pts); xlabel('x'); ylabel('y'); zlabel('z');
      title('Cranium tetrahedra'); print -mono -deps tet.eps;
    <|unfolded-io>
      \;
    </unfolded-io>

    \;

    \;

    <underline|<with|font-series|bold|Row 1: <underline|>>>

    \;

    Create matrix with corresponding 3D points from first tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(1,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ \ 20.720 \ -184.240 \ \ 140.900

      \ \ \ \ 14.780 \ \ \ 92.550 \ \ -13.010

      \ \ \ \ 39.170 \ \ -89.040 \ \ -54.490
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.4653e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    Repeat this process for rows 2-12 of matrix 'tet':

    \;

    \;

    <underline|<with|font-series|bold|Row 2:<underline|>>>

    \;

    Create matrix with corresponding 3D points from second tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(2,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ \ 11.930 \ \ \ 23.880 \ \ -60.850

      \ \ \ \ 14.780 \ \ \ 92.550 \ \ -13.010

      \ \ \ -89.480 \ -120.350 \ \ 133.410
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 4.7725e+04
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    <underline|<with|font-series|bold|Row 3:<underline|>>>

    \;

    Create matrix with corresponding 3D points from third tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(3,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ 11.930 \ \ 23.880 \ -60.850

      \ \ \ 14.780 \ \ 92.550 \ -13.010

      \ \ \ 39.170 \ -89.040 \ -54.490
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 3.8959e+04
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    <underline|<with|font-series|bold|Row 4:<underline|>>>

    \;

    Create matrix with corresponding 3D points from fourth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(4,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ \ 35.75000 \ \ 121.31000 \ -148.00000

      \ \ \ \ 50.53000 \ \ 213.86000 \ -161.01000

      \ \ \ -53.73000 \ \ \ \ 0.96000 \ \ -14.59000
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.1249e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    \;

    <underline|<with|font-series|bold|Row 5:<underline|>>>

    \;

    Create matrix with corresponding 3D points from fifth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(5,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ \ 35.7500 \ \ 121.3100 \ -148.0000

      \ \ \ \ 56.4700 \ \ -62.9300 \ \ \ -7.1000

      \ \ \ \ 50.5300 \ \ 213.8600 \ -161.0100
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.3033e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 6:<underline|>>>

    \;

    Create matrix with corresponding 3D points from sixth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(6,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 245.01 \ \ 389.94 \ \ 235.66

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -28.0700 \ \ \ 86.7300 \ \ \ 42.0400

      \ \ \ \ -7.3500 \ \ -97.5100 \ \ 182.9400

      \ \ \ \ 11.1000 \ \ \ -2.3100 \ \ -12.4500
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 2.8076e+04
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 7:<underline|>>>

    \;

    Create matrix with corresponding 3D points from seventh tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(7,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -63.8200 \ \ -34.5800 \ \ 190.0400

      \ \ \ -28.0700 \ \ \ 86.7300 \ \ \ 42.0400

      \ \ \ \ -7.3500 \ \ -97.5100 \ \ 182.9400
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.3330e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    <underline|<with|font-series|bold|Row 8:<underline|>>>

    \;

    Create matrix with corresponding 3D points from eighth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(8,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ \ -7.3500 \ \ -97.5100 \ \ 182.9400

      \ \ \ \ 11.1000 \ \ \ -2.3100 \ \ -12.4500

      \ \ -117.5500 \ \ -33.6200 \ \ 175.4500
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.0783e+04
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 9:<underline|>>>

    \;

    Create matrix with corresponding 3D points from ninth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(9,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -63.8200 \ \ -34.5800 \ \ 190.0400

      \ \ \ \ -7.3500 \ \ -97.5100 \ \ 182.9400

      \ \ -117.5500 \ \ -33.6200 \ \ 175.4500
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.2216e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 10:<underline|>>>

    \;

    Create matrix with corresponding 3D points from tenth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(10,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 250.95 \ \ 113.15 \ \ 389.57

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -63.820 \ \ -34.580 \ \ 190.040

      \ \ \ -28.070 \ \ \ 86.730 \ \ \ 42.040

      \ \ -117.550 \ \ -33.620 \ \ 175.450
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 1.7601e+05
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 11:<underline|>>>

    \;

    Create matrix with corresponding 3D points from eleventh tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(11,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 194.48 \ \ 176.08 \ \ 396.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -28.070 \ \ \ 86.730 \ \ \ 42.040

      \ \ \ -16.140 \ \ 110.610 \ \ -18.810

      \ \ -117.550 \ \ -33.620 \ \ 175.450
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ \ \ 7.9967e+04
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    <underline|<with|font-series|bold|Row 12:<underline|>>>

    \;

    Create matrix with corresponding 3D points from twelvth tetrahedron in
    matrix 'tet':

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      \;

      \ \ for j=1:4

      \ \ \ A(j,:)=pts(tet(12,j),:)'

      \ \ end

      \;
    <|unfolded-io>
      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 140.75 \ \ 177.04 \ \ 382.08

      \;

      A =

      \;

      \ \ \ 258.30 \ \ 210.66 \ \ 206.63

      \ \ \ 230.23 \ \ 297.39 \ \ 248.67

      \ \ \ 242.16 \ \ 321.27 \ \ 187.82

      \ \ \ 269.40 \ \ 208.35 \ \ 194.18

      \;

      texmacs
    </unfolded-io>

    Given 4 vertices that define a tetrahedron, a,b,c,d, then the volume of
    the tetrahedron is:

    <\equation*>
      V=<frac|<around*|\||det<matrix|<tformat|<table|<row|<cell|b-a>>|<row|<cell|c-a>>|<row|<cell|d-a>>>>>|\|>|6>
    </equation*>

    Set matrix M as the differences within the equation,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      M(1,:)=A(2,:)-A(1,:); M(2,:)=A(3,:)-A(1,:);
      M(3,:)=A(4,:)-A(1,:);disp(M);
    <|unfolded-io>
      \ \ \ -28.0700 \ \ \ 86.7300 \ \ \ 42.0400

      \ \ \ -16.1400 \ \ 110.6100 \ \ -18.8100

      \ \ \ \ 11.1000 \ \ \ -2.3100 \ \ -12.4500
    </unfolded-io>

    Calculate determinant of matrix M,

    <\input>
      octave\<gtr\>\ 
    <|input>
      d=det(M);
    </input>

    Calculate Volume,

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      v=abs(d/6); disp(v);
    <|unfolded-io>
      \ 7618.3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    \;

    \;

    <with|font-series|bold|<underline|Resulting Tables:><underline|>>

    \;

    <with|font-series|bold|Coordinate Numbers and Corresponding
    Values<with|font-shape|italic|>>

    <block|<tformat|<table|<row|<cell|Coordinate
    Number>|<cell|Value>>|<row|<cell|1>|<cell|242.16 \ \ 321.27
    \ \ 187.82>>|<row|<cell|2>|<cell|250.95 \ \ 113.15
    \ \ 389.57>>|<row|<cell|3>|<cell|269.40 \ \ 208.35
    \ \ 194.18>>|<row|<cell|4>|<cell|230.23 \ \ 297.39
    \ \ 248.67>>|<row|<cell|5>|<cell|140.75 \ \ 177.04
    \ \ 382.08>>|<row|<cell|6>|<cell|258.30 \ \ 210.66
    \ \ 206.63>>|<row|<cell|7>|<cell|245.01 \ \ 389.94
    \ \ 235.66>>|<row|<cell|8>|<cell|194.48 \ \ 176.08 \ \ 396.67>>>>>

    \;

    \;

    <with|font-series|bold|Coordinates of Tetrahedrons and Volume>s

    <block|<tformat|<table|<row|<cell|Coordinate
    Numbers>|<cell|Volume>>|<row|<cell|4,2,7,3>|<cell|1.4653e+05>>|<row|<cell|4,1,7,5>|<cell|4.7725e+04>>|<row|<cell|4,1,7,3>|<cell|3.8959e+04>>|<row|<cell|8,4,7,5>|<cell|1.1249e+05>>|<row|<cell|8,4,2,7>|<cell|1.3033e+05>>|<row|<cell|6,4,2,3>|<cell|2.8076e+04>>|<row|<cell|6,8,4,2>|<cell|1.3330e+05>>|<row|<cell|6,2,3,5>|<cell|1.0783e+04>>|<row|<cell|6,8,2,5>|<cell|1.2216e+05>>|<row|<cell|6,8,4,5>|<cell|1.7601e+05>>|<row|<cell|6,4,1,5>|<cell|7.9967e+04>>|<row|<cell|6,4,1,3>|<cell|7618.3>>>>>

    \;
  </session>
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