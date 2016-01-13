<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for
  applications>><title-date|September 15, 2015>

  <\title>
    Homework 2
  </title>

  \;

  <strong|Due date>: September 23, 2015, 11:55PM. Since multiple submissions
  are allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  <strong|Bibliography>: Course lecture notes Lessons 9-12. Textbook pp.
  45-54 from Systems chapter, pp. 148--160 from Vectors chapter, pp. 193-204
  from Matrices chapter.

  \;

  <with|color|dark red|<em|Save this file as Homework2Solution.tm in your
  MATH547/homework directory before starting to work on the solution.>>

  \;

  <strong|1 and 2.> (2 course points) <with|color|dark blue|Refer to the
  systems in exercises C21-C28 on page 55. For each system use Octave to
  determine the rank of the system matrix, and the dimension of the null
  space and left null space. Then consider the right hand side vector and
  state whether the system admits no solution, an unique solution or an
  infinity of solutions. Verify these conclusions by investigation of the
  reduced row echelon form of the augmented matrix.>

  <with|color|dark red|(C21 <em|example solution>, 0.25 course points awarded
  for reading)>. In this exercise we move away from tedious hand computation
  of row echelon forms or bases for the matrix fundamental subspaces. These
  tasks are carried out by the computer. We concentrate on understanding the
  relationships between the four fundamental matrix subspaces, and where the
  right hand side vector is placed, and use the capability of TeXmacs to
  intersperse comments and calculations (Note: if you carry out calculations
  outside of TeXmacs, you must copy and paste results to obtain a single
  document answer for this exercise).

  We have <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>4>>, 3 equations, 4
  unkowns, domain is <math|\<bbb-R\><rsup|4>> with dimension <math|n=4>,
  codomain is <math|\<bbb-R\><rsup|3>> with dimension <math|m=3>

  <\session|octave|default>
    <\output>
      \ 
    </output>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 4 3 -1; 1 -1 1 2; 4 1 6 5]; b=[5 6 9]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  System has rank <math|r=2>, dimension of null space is <math|n-r=2>,
  dimension of left null space is <math|m-r=1>. If <math|\<b-b\>> is in the
  left null space, <math|\<b-b\>\<in\>N<around*|(|A<rsup|T>|)>>, the system
  has no solution. If <math|\<b-b\>> is in the column space,
  <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>> the system has an infinity of
  solutions. Find an orthonormal basis for the column space,
  <math|\<b-C\>=<around*|(|\<b-c\><rsub|1><tabular|<tformat|<table|<row|<cell|\<b-c\><rsub|2>>>>>>|)>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A); disp(C);
    <|unfolded-io>
      \ \ \ 0.30703 \ -0.90268

      \ \ \ 0.20728 \ \ 0.37263

      \ \ \ 0.92885 \ \ 0.21522
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Subtract from <math|\<b-b\>> its components along the null space basis
  vector <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(r);
    <|unfolded-io>
      \ \ \ 1.2727

      \ \ \ 3.8182

      \ \ -1.2727
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  If the remainder vector <math|\<b-r\>> is null, then
  <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>>, and the system would have an
  infinite number of solutions. In this case <math|\<b-r\>\<neq\>\<b-0\>>,
  hence the system has no solutions (inconsistent linear system). Verify by
  computing the reduced row echelon form of the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1.00000 \ \ 0.00000 \ \ 1.40000 \ \ 1.40000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.40000 \ -0.60000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \ Indeed the last equation after applying row reduction operations would be
  <math|0=1>, a false statement, hence the system is not consistent. Notice
  that instead of computing an orthonormal basis for the column space, we
  could have computed an orthonormal basis for the left null space.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L=null(A'); disp(L);
    <|unfolded-io>
      \ \ \ 0.30151

      \ \ \ 0.90453

      \ \ -0.30151
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  If <math|\<b-b\>> has a non-zero component in the left null space, the
  system has no solution. Indeed computation of
  <math|\<b-b\><rsup|T>\<b-l\><rsub|1>> gives a non-zero scalar, confirming
  above conclusions.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(b'*L(:,1));
    <|unfolded-io>
      \ 4.2212
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Apply the above procedure to all the remaining systems (C22-C28). You must
  include text commenting your results. Just presenting the results of the
  Octave calculations is not sufficient. A shortened form of the above
  discussion that you can use as a template for (C22-C28) is:

  <em|<with|color|dark red|Solution template><with|color|dark red|>>.

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>4>>, <math|m=3,n=4>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 4 3 -1; 1 -1 1 2; 4 1 6 5]; b=[5 6 9]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=2>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=2>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A); disp(C);
    <|unfolded-io>
      \ \ \ 0.30703 \ -0.90268

      \ \ \ 0.20728 \ \ 0.37263

      \ \ \ 0.92885 \ \ 0.21522

      \ \ \ 3 \ \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(norm(r));
    <|unfolded-io>
      \ 4.2212
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is not the null vector, hence <math|\<b-b\>> is not in the
  column space, <math|\<b-b\>\<nin\>C<around*|(|\<b-A\>|)>>, and system has
  no solution. Verify using reduced row echelon form of the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1.00000 \ \ 0.00000 \ \ 1.40000 \ \ 1.40000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.40000 \ -0.60000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Above is an inconsistent system (<math|0\<cdot\>x<rsub|4>=1> cannot be
  true).

  \;

  \;

  \;

  \;

  <with|color|dark red|(C22, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>4>>, <math|m=3,n=4>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 -2 1 -1; 2 -4 1 1; 1 -2 -2 3]; b=[3 2 1]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=3>, left null space dimension
  is <math|m-r=0>, null space dimension is <math|n-r=1>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>3>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ \ 0.29391 \ -0.54614 \ -0.78444

      \ \ \ 0.78030 \ -0.33688 \ \ 0.52691

      \ \ \ 0.55203 \ \ 0.76697 \ -0.32714
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>,\<b-c\><rsub|3>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|3>|)>\<b-c\><rsub|3>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2)-b'*C(:,3)*C(:,3); disp(norm(r));
    <|unfolded-io>
      \ \ \ 1.0175e-15
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is approximately the null vector, hence <math|\<b-b\>> lies
  within the column space, <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>>, and
  system has one or more solutions. Verify using reduced row echelon form of
  the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ -2 \ \ 0 \ \ 0 \ \ 3

      \ \ \ 0 \ \ 0 \ \ 1 \ \ 0 \ -2

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 1 \ -2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|color|dark red|(C23, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>4>>, <math|m=3,n=4>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 -2 1 -1; 1 1 1 -1; 1 0 1 -1]; b=[3 1 2]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=2>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=2>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ \ 0.74751 \ -0.60811

      \ \ \ 0.41007 \ \ 0.73900

      \ \ \ 0.52255 \ \ 0.28997
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(norm(r));
    <|unfolded-io>
      \ 0.26726
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is not the null vector, hence <math|\<b-b\>> is not in the
  column space, <math|\<b-b\>\<nin\>C<around*|(|\<b-A\>|)>>, and system has
  no solution. Verify using reduced row echelon form of the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 1 \ -1 \ \ 0

      \ \ \ 0 \ \ 1 \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0 \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Above is an inconsistent system (<math|0\<cdot\>x<rsub|4>=1> cannot be
  true).

  \;

  \;

  <with|color|dark red|(C24, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|3\<times\>4>>, <math|m=3,n=4>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 -2 1 -1; 1 1 1 -1; 1 0 1 -1]; b=[2 2 2]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=2>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=2>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ \ 0.74751 \ -0.60811

      \ \ \ 0.41007 \ \ 0.73900

      \ \ \ 0.52255 \ \ 0.28997
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(norm(r));
    <|unfolded-io>
      \ \ \ 1.8150e-15
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

  The result is approximately the null vector, hence <math|\<b-b\>> lies
  within the column space, <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>>, and
  system has one or more solutions. Verify using reduced row echelon form of
  the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 1 \ -1 \ \ 2

      \ \ \ 0 \ \ 1 \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|color|dark red|(C25, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|4\<times\>3>>, <math|m=4,n=3>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3; 2 -1 1; 3 1 1; 0 5 2]; b=[1 2 4 6]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=3>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=0>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ \ 0.532010 \ -0.208514 \ -0.728443

      \ \ \ 0.030972 \ -0.625543 \ -0.190546

      \ \ \ 0.315205 \ -0.625543 \ \ 0.605379

      \ \ \ 0.785272 \ \ 0.417029 \ \ 0.258028
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>,\<b-c\><rsub|3>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|3>|)>\<b-c\><rsub|3>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2)-b'*C(:,3)*C(:,3); disp(norm(r));
    <|unfolded-io>
      \ 1.8898
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is not the null vector, hence <math|\<b-b\>> is not in the
  column space, <math|\<b-b\>\<nin\>C<around*|(|\<b-A\>|)>>, and system has
  no solution. Verify using reduced row echelon form of the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 1 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 1 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Above is an inconsistent system (<math|0\<cdot\>x<rsub|4>=1> cannot be
  true).

  \;

  \;

  <with|color|dark red|(C26, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|4\<times\>3>>, <math|m=4,n=3>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3; 2 -1 1; 3 1 1; 0 5 2]; b=[1 2 4 1]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=3>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=0>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ \ 0.532010 \ -0.208514 \ -0.728443

      \ \ \ 0.030972 \ -0.625543 \ -0.190546

      \ \ \ 0.315205 \ -0.625543 \ \ 0.605379

      \ \ \ 0.785272 \ \ 0.417029 \ \ 0.258028
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>,\<b-c\><rsub|3>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|3>|)>\<b-c\><rsub|3>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2)-b'*C(:,3)*C(:,3); disp(norm(r));
    <|unfolded-io>
      \ \ \ 2.8657e-15
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is approximately the null vector, hence <math|\<b-b\>> lies
  within the column space, <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>>, and
  system has one or more solutions. Verify using reduced row echelon form of
  the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.33333

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ \ 0.33333

      \ \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ -0.33333

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  .

  <with|color|dark red|(C27, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|4\<times\>3>>, <math|m=4,n=3>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3; 2 -1 1; 1 -8 -7; 0 1 1]; b=[0 2 1 0]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=3>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=0>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ -0.304226 \ \ 0.511252

      \ \ \ 0.015786 \ \ 0.844532

      \ \ \ 0.944251 \ \ 0.155307

      \ \ -0.124848 \ \ 0.035595
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>,\<b-c\><rsub|3>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(norm(r));
    <|unfolded-io>
      \ 0.80378
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is not the null vector, hence <math|\<b-b\>> is not in the
  column space, <math|\<b-b\>\<nin\>C<around*|(|\<b-A\>|)>>, and system has
  no solution. Verify using reduced row echelon form of the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 1 \ \ 0

      \ \ \ 0 \ \ 1 \ \ 1 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 1

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Above is an inconsistent system (<math|0\<cdot\>x<rsub|3>=1> cannot be
  true).

  \;

  \;

  <with|color|dark red|(C28, 0.25 course points)>.\ 

  <math|\<b-A\>\<in\>\<bbb-R\><rsup|4\<times\>3>>, <math|m=4,n=3>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3; 2 -1 1; 1 -8 -7; 0 1 1]; b=[1 2 1 0]'; r=rank(A); disp(r);
    <|unfolded-io>
      \ 2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  From above <math|r=rank<around*|(|\<b-A\>|)>=3>, left null space dimension
  is <math|m-r=1>, null space dimension is <math|n-r=0>. Let
  <math|\<b-C\>\<in\>\<bbb-R\><rsup|3\<times\>2>>, be a matrix of orthonomal
  basis vectors for the column space of <math|\<b-A\>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);
    <|unfolded-io>
      \ \ -0.304226 \ \ 0.511252

      \ \ \ 0.015786 \ \ 0.844532

      \ \ \ 0.944251 \ \ 0.155307

      \ \ -0.124848 \ \ 0.035595
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Compute what remains of <math|\<b-b\>> after subtracting components along
  <math|\<b-c\><rsub|1>,\<b-c\><rsub|2>>,
  <math|\<b-r\>=\<b-b\>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|1>|)>\<b-c\><rsub|1>-<around*|(|\<b-b\><rsup|T>\<b-c\><rsub|2>|)>\<b-c\><rsub|2>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      r=b-b'*C(:,1)*C(:,1)-b'*C(:,2)*C(:,2); disp(norm(r));
    <|unfolded-io>
      \ \ \ 9.9959e-16
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The result is approximately the null vector, hence <math|\<b-b\>> lies
  within the column space, <math|\<b-b\>\<in\>C<around*|(|\<b-A\>|)>>, and
  system has one or more solutions. Verify using reduced row echelon form of
  the augmented matrix

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rref([A b]));
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 1 \ \ 1

      \ \ \ 0 \ \ 1 \ \ 1 \ -0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <strong|3>. (1 course point) <with|color|dark blue|Textbook Reading
  Questions 1, 2 on page 204>

  1. Using the Gauss-Jordan algorithm to find the inverse of the matrix:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|3>|<cell|1>|<cell|0>>|<row|<cell|-3>|<cell|4>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|-3>|<cell|4>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|3R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|-2>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1+R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|4>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|-2>>>>>
  </equation*>

  <\equation*>
    Thus the inverse of the matrix is <matrix|<tformat|<table|<row|<cell|4>|<cell|-3>>|<row|<cell|3>|<cell|-2>>>>>.
  </equation*>

  \ \ \ \ 2. Using the Gauss-Jordan algorithm to find the inverse of the
  matrix:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-2>|<cell|4>|<cell|6>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|2>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1\<rightarrow\>R2,R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|7>|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R2/7\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1/7>|<cell|-2/7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R1+2R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|2/7>|<cell|3/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1/7>|<cell|-2/7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-R3/2\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|2/7>|<cell|3/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1/7>|<cell|-2/7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1/2>>>>><long-arrow|\<rubber-rightarrow\>|R2+<frac|2|7>R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|2/7>|<cell|3/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1/7>|<cell|0>|<cell|1/7>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1/2>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1-<frac|3|7>R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|2/7>|<cell|0>|<cell|-3/14>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1/7>|<cell|0>|<cell|1/7>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1/2>>>>>
  </equation*>

  <\equation*>
    Because the identity matrix,I, cannot be formed on the left through the
    Gauss<rsub|>-Jordan algorithm,
  </equation*>

  <\equation*>
    then there is no matrix x such that AI = Ix\<nocomma\>,where x is inverse
    of A.
  </equation*>

  \;

  <strong|4.> (1 course point)<with|color|dark blue| Compute the inverse of
  <math|\<b-A\>\<in\>\<bbb-R\><rsup|m\<times\>m>> for matrices in exercises
  C16-C19, p. 205 by row echelon reduction of the full augmented form
  <math|<around*|(|<tabular|<tformat|<table|<row|<cell|\<b-A\>>|<cell|\<b-I\>>>>>>|)>>,
  with <math|\<b-I\>\<in\>\<bbb-R\><rsup|m\<times\>m>>, the identity matrix.
  Show intermediate steps. Verify your result by using the Octave
  <verbatim|inv(A)> command.>

  <with|font-series|bold|C16:>

  Rewriting A in full augmented form:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|2>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>|<cell|0>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|3>|<cell|-1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|-R2<long-arrow|\<rubber-rightarrow\>|>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|3>|<cell|-1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R3\<rightarrow\>R1>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-2>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|3>|<cell|-1>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    Because I is obtained in the left half of the matrix through
    Gauss<rsub|>-Jordan\<nocomma\>,the inverse of A is
    <matrix|<tformat|<table|<row|<cell|-2>|<cell|1>|<cell|1>>|<row|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|-1>|<cell|-1>>>>>
  </equation*>

  \ <math|Verify using Octave:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 0 1;1 1 1;2 -1 1]; disp(inv(A));
    <|unfolded-io>
      \ \ -2.0000e+00 \ \ 1.0000e+00 \ \ 1.0000e+00

      \ \ -1.0000e+00 \ \ 1.0000e+00 \ -5.5511e-17

      \ \ \ 3.0000e+00 \ -1.0000e+00 \ -1.0000e+00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C17:>

  Rewriting A in full augmented form:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|2>|<cell|-1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|1>|<cell|2>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1/2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-1/2>|<cell|1/2>|<cell|1/2>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|1>|<cell|2>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|3R2-R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-1/2>|<cell|1/2>|<cell|1/2>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|5>|<cell|1>|<cell|0>|<cell|3>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R2-R1\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-1/2>|<cell|1/2>|<cell|1/2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|5/2>|<cell|1/2>|<cell|-1/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|5>|<cell|1>|<cell|0>|<cell|3>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|2R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-1/2>|<cell|1/2>|<cell|1/2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|5/2>|<cell|1/2>|<cell|-1/2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|-1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|2|5>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-1/2>|<cell|1/2>|<cell|1/2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/5>|<cell|-1/5>|<cell|2/5>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|-1>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|2>R2<rsub|>+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3/5>|<cell|2/5>|<cell|1/5>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/5>|<cell|-1/5>|<cell|2/5>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|-1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3/5>|<cell|2/5>|<cell|1/5>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/5>|<cell|-1/5>|<cell|2/5>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R3/5+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3/5>|<cell|2/5>|<cell|1/5>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/5>|<cell|0>|<cell|3/5>|<cell|-1/5>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-<frac|2|5>R3+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3/5>|<cell|0>|<cell|-1/5>|<cell|2/5>>|<row|<cell|0>|<cell|1>|<cell|1/5>|<cell|0>|<cell|3/5>|<cell|-1/5>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|-1>>>>>
  </equation*>

  \;

  <\equation*>
    Because I cannot be obtained on the left half of the matrix through the
    Gauss<rsub|>-Jordan\<nocomma\> algorithm,the inverse of A does not exist.
  </equation*>

  <math|Verify using Octave:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 -1 1;1 2 1;3 1 2]; disp(inv(A));
    <|unfolded-io>
      \ \ -1.0809e+16 \ -1.0809e+16 \ \ 1.0809e+16

      \ \ -3.6029e+15 \ -3.6029e+15 \ \ 3.6029e+15

      \ \ \ 1.8014e+16 \ \ 1.8014e+16 \ -1.8014e+16

      <\errput>
        warning: matrix singular to machine precision, rcond = 5.13992e-18
      </errput>
    </unfolded-io>

    All values within inv(A) are nearly zero, showing the inverse of A does
    not exist.

    \;

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  <with|font-series|bold|C18:>

  Rewriting A in full augmented form:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|2>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|2>|<cell|2>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|4>|<cell|1>|<cell|2>|<cell|0>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1-3R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|-2>|<cell|3>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|4>|<cell|1>|<cell|2>|<cell|0>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|4R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|-2>|<cell|3>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-4>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1+R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|2>|<cell|-4>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|4>|<cell|-1>>>>>
  </equation*>

  \;

  <\equation*>
    Because I is obtained in the left half of the matrix through
    Gauss<rsub|>-Jordan\<nocomma\>,the inverse of A is
    <matrix|<tformat|<table|<row|<cell|0<with|mode|prog|>>|<cell|-1>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|-2>|<cell|4>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    Verify using Octave:
  </equation*>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3 1;1 2 1;2 2 1]; disp(inv(A));
    <|unfolded-io>
      \ \ \ 0 \ -1 \ \ 1

      \ \ \ 1 \ -1 \ \ 0

      \ \ -2 \ \ 4 \ -1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C19:>

  Rewriting A in full augmented form:

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|2>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|2R1-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|4>|<cell|1>|<cell|2>|<cell|0>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|2R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R2/2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/2>|<cell|0>|<cell|1/2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-3R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1/2>|<cell|1>|<cell|-3/2>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1/2>|<cell|0>|<cell|1/2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|2>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R1<rsub|>+R3/2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-1/2>|<cell|1/2>>|<row|<cell|0>|<cell|1>|<cell|1/2>|<cell|0>|<cell|1/2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3/2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-1/2>|<cell|1/2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|-1/2>|<cell|-1/2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|2>|<cell|1>>>>>
  </equation*>

  \;

  \;

  <\equation*>
    Because I is obtained in the left half of the matrix through
    Gauss<rsub|>-Jordan\<nocomma\>,the inverse of A is:
  </equation*>

  <\equation*>
    \ <matrix|<tformat|<table|<row|<cell|0<with|mode|prog|>>|<cell|-1/2>|<cell|1/2>>|<row|<cell|1>|<cell|-1/2>|<cell|-1/2>>|<row|<cell|-2>|<cell|2>|<cell|1>>>>>
  </equation*>

  <math|Verify using Octave:>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3 1;0 2 1;2 2 1]; disp(inv(A));
    <|unfolded-io>
      \ \ \ 0.00000 \ -0.50000 \ \ 0.50000

      \ \ \ 1.00000 \ -0.50000 \ -0.50000

      \ \ -2.00000 \ \ 2.00000 \ \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <strong|5.> (4 course points) <with|color|dark blue|Apply your knowledge
  and understanding of matrix subspaces to the face recognition problem. This
  will be our first true computer application, and we'll use a few more
  features of Octave.>

  \;

  <em|Preparation>. First, let's learn how to define functions in Octave.
  Here's a simple function that returns the double of the input value. When
  writing functions in an Octave session within TeXmacs, use Shift+Enter to
  get a new line, and use Enter to complete the definition.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      function d=dbl(x)

      \ \ d=2*x;

      endfunction;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Test that the function works

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      dbl(2)
    <|unfolded-io>
      <with|mode|math|4>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Next, let's learn how to work with strings. Strings are enclosed in quotes,
  and can be assigned as values to variables. You can join multiple strings
  with the <verbatim|strcat> function.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      astr="a"; bstr="b"; cstr="c";
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      strcat("a","b","c")
    <|unfolded-io>
      abc
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      strcat(astr,bstr,cstr)
    <|unfolded-io>
      abc
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  You convert numbers to strings using the <verbatim|num2str> function.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      x=2.2; strcat("The answer is x=",num2str(x))
    <|unfolded-io>
      The answer is x=2.2
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  You can control the format of how a number is converted to a string using
  C-language formatting directives.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      num2str(2,"%2.2d")
    <|unfolded-io>
      02
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Using the above, let us define a function to read a face from the yalefaces
  database

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      function img=readface(n,type)

      \ \ fhead = "/home/student/courses/MATH547/lessons/yalefaces/subject";

      \ \ fnr = strcat(num2str(n,"%2.2d"),".");

      \ \ fname = strcat(fhead,fnr,type);

      \ \ [img,map,alpha] = imread(fname);

      endfunction;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Parse the above to understand how things work. A string is formed for the
  file name using a header, the number of the image we want, and the type of
  the image. The image is read from the file and returned. We can find out
  its size and set the number of height, width pixels
  <math|<around*|(|h,w|)>>. Look at a portion of the matrix to see that an
  image is simply an array of gray-value intensities with the value 0
  denoting black and the value 255 denoting white. We define a function to
  reformat an image as a vector with entries between 0 and 1.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      f01n=readface(1,"normal");
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [h,w]=size(f01n);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp([h w]);
    <|unfolded-io>
      \ \ \ 243 \ \ 320
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      f01n(97:103,97:103)
    <|unfolded-io>
      \ \ 255 \ 255 \ 186 \ \ 83 \ 135 \ 153 \ \ 79

      \ \ 255 \ 248 \ 111 \ 149 \ 192 \ 104 \ \ 62

      \ \ 255 \ 224 \ 164 \ 251 \ 223 \ 102 \ \ 46

      \ \ 255 \ 235 \ 202 \ 255 \ 203 \ \ 93 \ \ 45

      \ \ 255 \ 255 \ 255 \ 246 \ 136 \ \ 58 \ \ 50

      \ \ 255 \ 255 \ 255 \ 231 \ 123 \ \ 52 \ \ 51

      \ \ 255 \ 255 \ 255 \ 175 \ \ 79 \ \ 50 \ \ 58
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      function vec=img2vec(img)

      \ \ [h,w]=size(img); m=h*w;

      \ \ vec=zeros(m,1);

      \ \ vec=double(reshape(img,m,1))/255.;

      endfunction;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      v01n=img2vec(f01n);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Now let us form a matrix of the normal face images
  <math|\<b-A\>\<in\>\<bbb-R\><rsup|m\<times\>n>>, with <math|m=h w=320>, and
  <math|n=15> subjects. First create a matrix of the appropriate size with
  zero entries everywhere.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      m=h*w; n=15; A=zeros(m,n);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      rank(A)
    <|unfolded-io>
      <with|mode|math|0>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Now use a loop to fill each column, with image gray level rescaled to be
  between 0 and 1.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      for j=1:n

      \ \ fj=readface(j,"normal");

      \ \ A(:,j) = img2vec(fj);

      end;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  At present there is no command from within Octave to embed an image
  directly into TeXmacs. This has to done manually by using the menu option
  Insert-\<gtr\>Image-\<gtr\>Insert image ... dialogue. Here are the 15
  ``normal faces''

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|../lessons/yalefaces/subject01.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject02.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject03.normal|320px|243px||>>>|<row|<cell|<image|../lessons/yalefaces/subject04.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject05.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject06.normal|320px|243px||>>>|<row|<cell|<image|../lessons/yalefaces/subject07.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject08.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject09.normal|320px|243px||>>>|<row|<cell|<image|../lessons/yalefaces/subject10.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject11.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject12.normal|320px|243px||>>>|<row|<cell|<image|../lessons/yalefaces/subject13.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject14.normal|320px|243px||>>|<cell|<image|../lessons/yalefaces/subject15.normal|320px|243px||>>>>>>|The
  ``normal'' faces from the Yale face data base.>

  Since those are 15 rather different people, we should expect the column
  vectors of the matrix <math|\<b-A\>> to be linearly independent as
  confirmed by computing the rank

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      rank(A)
    <|unfolded-io>
      <with|mode|math|15>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Let us construct a linear combination of some faces

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      newf=0.5*A(:,1)+0.5*A(:,3);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Define a function that saves the vector to an image file on disk

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      function writeface(f,h,w,name)

      \ \ i = reshape(f,h,w);

      \ \ fname = strcat("/home/student/courses/MATH547/homework/",name,".png");

      \ \ imwrite(i,fname);

      endfunction;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      writeface(newf,h,w,"newface");
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The image has been written to a the file newface.png within your homework
  directory. Here it is (Insert-\<gtr\>Small figure followed by
  Insert-\<gtr\>Image-\<gtr\>Insert image ...):

  <small-figure|<image|<tuple|<#89504E470D0A1A0A0000000D4948445200000140000000F31002000000284B84D10000000467414D410000B18F0BFC6105000000206348524D00007A26000080840000FA00000080E8000075300000EA6000003A98000017709CBA513C00000006624B4744FFFFFFFFFFFF0958F7DC0000000774494D4507DF090F0F341B40DC0B5B000080004944415478DAECFD799C5C6775268EBFEFDDAAAA77A925D992E59DFC206C2640BE0483B11D87243324309F840C210931AB31186D2DB5A4EEDA97AE5EB4DA12069B25DBCC6726938421C94C56C018083809103E9064EC182FD896254BEA56AFB5DCF5F7C7731A3F37B795405884ED7BEA9FEAEA5B7779EFADF7BCE739CF798EAED56AB55A4DA596DAB3DA0CC3300C238AA2288A5EF39AD7BCE635AFB9F1C61B6FBCF1C60B7D5EA9A596DA73D734A6A40B7D1AA9A5965A6AA9A5F6DC32E3429F406AA9A5965A6AA93D172D75C0A9A5965A6AA9A576012C75C0A9A5965A6AA9A576012C75C0A9A5965A6AA9A576012C75C0A9A596DA792D280485A0E08D7BE3DE383E894A51292A85C5B018162FF4D9A596DA33DB5216746AA93DE70C6E35209379A0AAAAAA0AE72A9F57A24A54E9743A9D4E079F64B3D96C366B59966559D89B5135AA46D59974269DC94C2693C9642EF4F5A596DA33C352079C5A6ACF600BC3300C43FC8AF11E6E12FFD55A6BADDBED76BBDDC6E77EDECFFB79FC17CE5595555995FBFBFBFBFBFB73B95C2E9733EA46DDA89FEF88DD6EB7DBED2E2F2F2F2F2FAFEC59D9B3B2676969696969C92B7805AF609AA6699AD9C9EC647612FBECEBEBEBEBEBCBCDE4667233F8EFBF7D2DA8D8BED0E39A5A6A3F0C4B1FF4D4527B461A6061B82BC4AC70B48847B10DE254B843DBB66DDBD6355DD3353842AB6ED5AD3AB6711CC7719C7FDBF5C210E3627B099F4B412928E12D62E5C5DD8BBB17779FDD7676DBD96DB3DB67B7CF6E5F1A591A591A59DEBDBC7B79776BB435DA1AEDECEBECEBEC735DD7755D9C7FEA7A537BAE591A01A796DA33CC16762EEC5CD8098787F8F2CC993367CE9CF18B7ED12FC2A10A2CEC388EE3B4F7B7F7B7F72377BB7EFDFAF5EBD7F71EEC3DD87B107B83535C1E5D1E5D1E05341D96C372588653445C0B370997E9FBBEEFFB1C73F31C02D78ED81AF1373E6717CB8B0018BB5EBCEF99EE99EE9996EDB5D65AC3CD23FEC69262FDB1F5C7D61FCB3433CD4C135B0206BFD0F727B5D4BE53B32EF409A4965A6ADFA921BE841382933B933F933F9307086C8D5BE3D678ABD02AB40A6A5ECDABF99E9E9E9E9E1E5DD4455D04081C4D4553D194C4CA707B555555D568241A89463C58C7EB781D6F855E9EE7799EEFFAAEEFC23DEB8AAEE84A0CF4AEAAAAAA063AD081569EF294874500CE33F2233FF2E17A95AB5CE562A11073E4A5A8149570A5ED7ABBDEAEE30C05B8DEA576A95DD89BBBE82EBA8BDD5BBAB7746FC94C65A6325380BB87A3E1683862C79F5A6A3FCA963AE0D452FB113540B5807311A722C68D66A3D968D65AB416AD45DDD66DDD361B66C36C04C5A0181411C5024CF6337EC6CFC041AE9C5D39BB72D67FBBFF76FFEDE15BC3B7866F95F0B36136CC86356A8D5AA3E2924315AA1090B533E3CC3833887A5B4ECB69391DD5511D590A203E1646F4A81A55B207ECD3700DD770E18CED9A5DB36B00BDE1AAE1C2FDC88FFC084EDD54A632155C32007689C5C3300C436B9FB5CFDA67BAA66BBA380544EDFE63FE63FE63C86467A7B3D3D9E9C1C38387070FAF5BB76EDDBA7558760C0C0C0C0C0C5CE8FB995A6AFFDA52083AB5D47EE40C11EAB9EDE7B69FDB7EEEDCB973E7CE21F30AF7D619EB8C75C6246B6B188661C05DC14D0A105DB7EA561D1E56DC7612342EABB22A631BC4A6E2209552AB042E80BA884D97F62CED59DA83F81B3131DEBB63EE983B0637CF312BF6894FEC86DDB01B70CC70BD7CBDBC14C0B9812CC6D965BE226CE3E6DDBC9BC715E15AE0DA71C4FE83FD07FB0F6EBC73E39D1BEF04B9ACEF40DF81BE03DF79B63BB5D47ED0963AE0D452FB11B2279F7CF2C9279F3C79F2E4C99327E15AE07A7B7B7B7B7B7BE15A1019C3FD306C0B8727E4ACBA5137EA70757063E2808B61312C8A4B2E45A5A8C46E124E174E0EB95500C59CA915DA17AC1C96C3B200D7580414FDA22FF5C13822173BC14DF2E738A2DDB49B76132E1691378E8BFDE35B384F5C1147DE123117BC825790718083479CADB5D61A2B13BC47191572E1EB6F5F7FFBFADB078E0C1C1938F26F33B4534BED076129049D5A6A3F12065077656565656545C42E4A61292C252357B8A5683C1A8FC6E1FB0446D696B624F72971A4E77BBE17E6C37C98874352918A54C4DBA8922AA952500DAA81C0C2DAD296B682C96032988C8CC8880CFC174E1D0E127B300DD3300DB366D6CC9A76B4A39DC88CCCC88CED5F29A5149CABCEEAACCEE2FCB95C0A2680B31DDAA11DD6C37A188B50716E720EA11DDAA1DFF01B7E4300EAC00AAC00DBE01C006EC3E473387E27700267BE39DF9C6FFAA7FDD3FE69BDA497F4D2D0D0D0D0D0D0857E0A527B6E594AFA4F2DB50B6C887AEF7FCBFD6FB9FF2D8B8B8B8B8B8B7096887A01A5C2D19E239BDF35BF6B7E17F2A08BBB16772DEE9A9D9D9D9D9D45852E72C652E4530ECB611994286BC29AB026100562FF6044E3282034C151E14C00839FBEEDF46DA76F3BF5DE53EF3DF5DE93B79CBCE5E42DB31F98FDC0EC075AAD56ABD582FB1F1C1C1C1C1C841B43F4CCF134C7D070C63807B09D7353B9A9DC14286370E78868B9CCA93BDE1DEF8E4B6E380CC330C43E0129035E0627BCE740CF811E819A859005681AB073555555151037F2EBDF7AFBB7DEFEADB73FF8E0830F3EF820C630D5F94AED8763A9034E2DB50B667090F09861C2046EF53CCFF3E0EA901B06A09A94E0E088534436C8E0CB04B62D45A5A824FCE4449C0A870AF706E78D2302F496487DEFCADE95BD10E200248E6D9C0967C299800B844385D3C5B1F8EAB03D679461C96DA4388ACAA2BAFBBBFBBBFBF15DCE7CF377B1E0E0D8174E978F82711092DACACACACACADCDCDCDCDC1C58E517FAE948EDD96F690E38B5D42E983DF4D0430F3DF4507B6F7B6F7B2F1C1B5C2C72A2700FA05C81E884780E712A2B5B21AEC57FD9B9729990389B52500A4A704B52315C37EA465DF2AF4DBB6937113B2242C57932C90B2E10E78965015C1AF600BA1358C77D87FA0EF51D42540AE05A1CA1EFFBBE8FAB4E2E29387B1D73AE94F195ABD05A6BCDA2985C1CC5D96844D5887D33645CD32CD9E886DDB01BB8F6A1DB876E1FBA1D6C6A5C1DCE2DCD16A7F6FDB234079C5A6A17C01E7FFCF1C71F7F5C1C98EBB99ECBB5B9E2EAC6BC316F0CEE8DA77EA114514E1434A5200CC240E2E0C00BBCC093D8116EB814948292CAABBCCA83D014D5A25A54337DD3377D55544555340A46C12844D3D174348DFD08252A67E5AC1CCE04F960B5A256D48ABFDBDFED0BD0EDB6DC96DBC2519CF5CE7A677D5FB9AFDC57B6EFB0EFB0EF806313E21865B20DCFF00CCF0CCCC00C50AF1C95A372548EAA5135AAAA40052AD0055DD0053848069FE54A0B412128483573212A440576A8AC718D6BE131E40CB12C471A46C368D8BD76AFDD2B6E7B400DA801C3311CC311542095CC4CEDFB6469049C5A6A3F240364FACD5FFFE6AF7FF3D71147227E6DED6BED6BED6330199F4B0C07E63045B4700C226451892AD16AA498F7F37E1E9F707CCC30B200D109D5688E111101F7CEF4CEF4CE20438CF7009663ED16CAAAACCAF0BF00A5913916509A94B9906306F5B8FF70FFE1FEC37087008A59E54A20E262580C8BB25020D6340E2B912E38D27C26C40C17874D842F81A32B5125AA487114CE015635AA46151800AE11678EF7387F26A0E19CD30AE3D4BE174B1D706AA9FD906C6EDBDCB6B96DDFFAD6B7BEF5AD6F612A87EB85C4A3B8CCA25FF4A513110B43C2C1C4AA6CC9C475A114A7ACCAAA1C73BA85A010141840167230C0EA288AA24832B5F41E15C0E06981E204B529647699CC85ABC3552C9181E284A3637BB83110B5004D630FC83A8BDE16161FBEEFFB3EF62C23834F00233733CD4C13E3C0B5C22CDF21AE9D0D5B168242503013C6F1714CA2840AB170B6383ACE0D421F18930BFD7CA5F6CCB3D401A796DA0FC410C3B12B02DB1934254CEEF82FDC2720686110A121602928052516B2907681442082C3F61326A0342A80694B383976DE52654B802D57DC8AABAE4495A8C211215C111C2AEA68C16796E8B66137EC06684DACE4852819D78BE322E284B633B3B263B1A9611886C19E94453924230B214CB45924972C796214418195DD301B6603F72848584CD083DA5AB0BC25BF97BBD3B49B7673DDD17547D71D054E80F149453153FBB72D75C0A9A5F67D303845B0739197859B41D4BB30B230B230826221444BF8DDC1E9A2C0861D303B038EC6702C7633425F22790D01A213B02DF60C9056EA7DA1CC4C2611305C0FC5C41C194B2991655996856B81D3952819EFFBFAFAFAFA70FE88F241B942D1141C334867382EC797D80FBB7906DBB17DD235F2F87011112B7C210A876BC76870CC2D7770BC3BDE1DC792852547A48A9A162BBC67560D9382AE4C2693C980C675A19FCDD47E74CDAC542A954AE5429F466AA93DF30C1377F7DAEEB5DD6BE1089F78DE13CF7BE279FFF8CBFFF8CBFFF8CB279F7FF2F9279FFFC8158F5CF1C815286EB15E6FBDDE7AFDDC4BE75E3AF7D253FFF3D4FF3CF53F51D17BF625675F72F62528E9E9BEBAFBEAEEABE14284DBFCD3FAA7F54F734E57EA75FEDAFB6BEFAF83EB82EB82EB824F059F0A3EE5BFD67FADFF5ABCE7C8D5BDD6BDD6BD36BA3EBA3EBA5E9CCA67E8F5E9F0D3E1A7A31BA21BA21B621A529FD59FD59F154EF267F567F567C505DEA3EE51F770F3C1859F58F889859F98FBC4DC27E63E71FA45A75F74FA45A7DF77FA7DA7DF877CB0FF29FF53FEA7C0DC46AD3032C14347868E0C1DE9F9CF3DFFB9E73F3331AAF3E79D3FEFFC39A0F2CE5F74FEA2F317380A3EEFBCBAF3EACEABBDD778AFF15ED3FEB3F69FB5FF4C1C7CBBDD6EB7018363E923A55C37EA1BF58DE1EBC2D785AF0340BDF2FFADFC7F2BFF1FE86FDCDF094B1321945DEB5EEB5E1BBC2E785DF03A7C57C0FC4F059F0A3E852D630982CFAACFAACF469F893E137D0611BF8C39497EEA7BF5BDFA5EE326E326E3A60BFDE4A6F6A362290B3AB5D4BE6B63F7D31A698DB4461039E173B4FF33BB66D7EC2256C3278880B1258A8B04A43DBD787AF1B43EA3CFE8333D8B3D8B3D8BD682B5602DB83BDD9DEE4E89A248C451EA77832888025DD6655DE6C835AC85B5B026B16FA422158160C5DFE5188EB594C36A580DAB3AD4A10E75A4231D252529B007216D29A5940A2B6125AC842A54A110CDA276D48EDA1C857BDBBDEDDE76344B901E4DA10E7588E816242FAB6B75ADAE37E3CD7833B2E7447D731884411870A99511199121F96C30B4F11E2EDCDBE3EDF1F60022363DD33345172C369280E8BB7ED7EF0ABA8073569EF2540CE8C608A0980A14B9BCCAAB3C74BBBCAA57F5AA6092B78C96D132C2E9703A9C1E5A1C5A1C5A04B5CD1EB147EC11C4EB88EF5336F573D952079C5A6ADF8541340391AB779B779B771B5CD7138F3CF1C8138F40250A4114E2BF858585858505F5887A443DE2FF8AFF2BFEAF74DFDC7D73F7CDEEB83BEE8E9FDB716EC7B91D9DFD9DFD9DFDFED7FDAFFB5FD7555DD5D5F0F3E1E7C3CFA32027734DE69ACC35BD7FDDFBD7BD7FCDC02CCCF94DE7379DDF041508FFD5FBF57EBD9F95A7980F0CE7210D09B246D6C8222E0C8CC0080C3851C9FED6A25A54C3F970EE59F4A56B412DA8C5A06074F9AD9A55B3AAEAAAAEEA9EE9999EB9A817F5A25E3157CC15D33A659DB24E21438C8AE1EC6876343BCA621D96B294253072548FEA511DD29802F63ADAD18E6EEAA616A52D697A68455664695BDBDA8EECC88E6CD5500DD56018192E9F2B8983F1603C90C5507B7B7B7B7B3B174AC93205703DA97AA973EA9C3AC768817ABF7ABF7A3F83D242973B699E344FCEDD3C77F3DCCDC2B24659D783D683D6837872B0C0DAB265CB962D5B98659DDA73C152079C5A6ADF85C5149A82200802B89CF01DE13BC27720C7097813AEB7B5B7B5B7B557226638DA9DFE4E7FA794EEACACACACAC845EE8851EF2C7F81CDD79450BFAA9E8A9E8298EC0EC097BC29E1016F1C3D987B30FF71DEC3BD87770DDEDEB6E5F77BBBE4DDFA66F83E304E14BB8BB2AA33252AE1398811998A636B51913B28874A423116EE4189115A485635C324A46094AD14CE6820B474343D18836B4A10DB864C9559BBEE99B707566CECC9939382DAE6F96B2AB200C42C961A3C6D72A5A45AB289431C4E225B3644A3B0A741D362A46C5A8F07EA2300AA3302A46C5A8C8E43276ABC956135218560A4BA1EC3F34422334B4FFF42BF2222FF2F01E8D17836ED00DBAB21CD967EE33F78593E16438896ECDAE76B5ABD5825A500BE6B2B96C2E9B4BE692B9047464F8F8F0F1E1E317FA194FED876729092BB5D4C4F05B40FEF2C42D276E39718B481296555995376CD8B061C306106D1E7EF8E1871F7E1815BDF3F3F3F3F3F3A79E3AF5D4A9A7BA63DDB1EE9851336A468DD59DE032FD825FF00B4BBB97762FED46CE52B2B9792FEFE585865B0C8A8188519875B36ED655455554057B16F74CFFC50B479498181AC8555DD5126FA1EC67F3E6CD9B376FDEB861E3868D1B107DDA641801EE92C41216D21C82E9484AA9550214C77C3294B40D47E1F8441C734DD7744D54B726B393D9499C153EE7022A6683CBFEA93F12DC27CE817B3471D34371B175A36ED4715D52CAC5F5C4CC0647EE7CCC1D73254D202224A8A2C6FE130C67C603041EAF1A55A32ADD91691C048E468B4622D9213B7EE595575E79E595C8975FE8DF446A3F584B1D706AA98981A9FBF0CD0FDFFCF0CD70B17093703FE0F7A252066D091EF8B5077EED815F9BDD36BB6D761BAB078B032EF8055FB28902E42AA594820396C8B8181483A26C09D74BBF4756C58203C69649070CBF23D3FA843D614F601B4CF7BD077A0FF41ED8F8C18D1FDCF8C12D776FB97BCBDD4347878E0E1D8563E63A572E828A655E13FD8B38EA85F360B1C918F988F2CDAC5DC57D8B11CD6384E18CD7E8FE44795FBE6B1CC50A5F9A4437CF5756C4A037BB73EC8155B899A9CE0B822861B1B3824E19395DB87F71C974B64273D35A6B8D3B72F5EF5EFDBB57FFEEE6BB37DFBDF9EE0BFD9B48ED076BA9034EED396A008A1FFA8D877EE3A1DF4066178E4444F9B7CD6D9BDB7676DBD96D67B7A1F3CFDCB9B97373E7F05F163204B08CD814CE0F31ABC4B5C5A0181401638A06F2BEF6BEB6307585CE03B74ABF448EAEF05DEC47F68648B4A22AAAC2FC61386399D6E1BC0B7EC12FB0D004D7F2AEBF63FD1DEBEFB8F8E28B2FBEF8E281C30387070EE7B2B96C4EB2CBE060E31CC45D81AC8463A167702693C964306E2C7B096786B1C2D26479CFF29EE53DC23DDEDFD9DFD92F6D042DCBB22C2C1D40CE1ABE63F88EE13B366EDCB871E3C6C1A38347078F822FCD5A601CDDB21E96F4599ACE4E67A72197C14B07669273AD30C7F7ECF8D97DCAD1A93E3BD90C23B907AED8C61932A54BCAC0A8621B29834D9B366DDAB4E99A6BAEB9E69A6B300217FAB792DA0FCA52079CDA73D41E7FE7E3EF7CFC9DDF7CDB37DFF6CDB7893B2C45A5480411514C826DE676CCED98DB21911075E091B9961CA4484690D365E9478191C79F7EC5349E2AAAA256C52691F1A54F10D18AEB554AAD02E688ADB137A9D06D580DAB81A5009FA1D3749A8EE83761CBDC746E3A373D7C6CF8D8F0B1C1238347068FF41FEA3FD47F084E117BC0DEE0D878F4C4914F65A6325370D8C8614BD7A64EBBD3EE208204440FA72B406E312806455C1DF686AB803B87B823F2D9177FE8E20F5DFCA14D1FDAF4A14D1F827B164112A5D4AAEBE59CAE00FE4DBB69378155703533BEC52A63D2F43021DFC1D5D84CC212D70B84807A4925D9DA921127156ED69D5E831C578A4A51090B1180CF2FFBE397FDF1CBFE18CBA30BFD5B49ED076529092BB5E7900164FEC75FF9C75FF9C75F597EDBF2DB96DF2671523B6C87EDD9A5D9A5D92510A9E64ECF9D9E3BFDE8B71EFDD6A3DF42F4863DC4E2D4AAAEEA2AA84C882F25EAC5E49E88809153842B421111CBFAA3FD8059312B6645B8D020618140C4137D392A476500DD70637093BC0DCE5080E54A58092BBEE11BBE21F078C92FF9A5EE7C77BE3BBFF2D8CA632B8F59FFCFFA7FD6FF73FE8BF35F9CFF0257ADBFAABFAABFAAFF5EFFBDFEFBF067C39F0D7F160B0596C3343F637EC6FC0C8ED57D55F755DD5721E636BE647CC9F812CE07E706D72248C039FF9C7F4EEFD43BF54EC9222F5BCBD6F2CAE8CAE8CAE86C79B63C5B7EF41F1EFD8747FF21734FE69ECC3D70C600D207BE30F085812F5CBAF5D2AD976E1D5E195E195E59EFAC77D63B9239868C65E0077E003D6A386376781225F7667BB3BDE14038100EF887FDC3FE6116ECC4324BEA7D55A002253969BCBCC00BBC702C1C0BC7382E8F958A91817D8D5102AD8CC17CA368148D18ADCC9D76A7DDE987DFF6F0DB1E7E9BBA4A5DA5AEBAF8AE8BEFBAF8AE0BFDEB49EDFB6FA9034EED3964B3DB67B7CF6E5F7C60F181C507507EA3A6D4949AC294DA796FE7BD9DF7429CA133D799EBCCB9DF70BFE17E8323544C9D32A183FBAA9452CA2C9B65B31CE5A37C9497D8773C180FC6C501E345EE132F8902C9892A4B59CA0A2A412558FD4F49955489339DA8F48D01A4602F2BA55633D051236A440D909703377003173C64387EB09A85D10D001C6C5E642BE1AB8B46D12832480E981D6785F347948C23E2BF6127EC841DE6152B5FF9CA9708BE1B764301DE0198CBFE2B7EC5AFA87D6A9FDA876A5DE52A57B9FEA83FEA8FBA13EE843BD1F7FEBEF7F7BDBF33D019E80C04EF08DE11BCC3BFD5BFD5BF35BC33BC33BC735D7E5D7E5D5E72C0666446224EC9BA6012C55A811588AE96B846CA13A3F3928C24F00C747F2AA8825A4D13806206C277A422B5DA79097F904B96B610455DD431178BFD3390CE35D978DE00DDCFCECECECECEF62DF72DF72D8BBE586ACF224B21E8D49EB526ED01F62CED59DA2379DCB9B9B9B9394CAC0096CF9C3973E6CC1971C64A29A5003E9F78CF89F79C780F625FB816C0A778CF7D7BE038019FC2F5E2BF90E960310ACE040B0C4B26F12E7E8F707289A897A3DBCC6466323319E3E2222B4CBC689C1BCE4460EADAD32F1C91E15391849CCA4E65A7244F49F431C976033C2F06C5A088B81FD12D3EC1F642BCAAEAAA16494B39AB443389E4A244C2467A2F8B0F229DE1BA44BA1204AE43FD87FAA5F730A84C1B8E6D38B6E118BAF9624BC9DC57A24A5401F2014E3BE76E19B26677281D91D12A83A958CC0F574AAD764912A7AE945A454D62B5C558E8608102C74F2D11A52BF38433E14C88BC657F7F7F7FFF25775F72F72577231A4E9DF1B3C3D20838B567A1615A14A1C753674F9D3DD55A682DB41630F9CE2FCD2FCD2F2DED5CDAB9B4D3293B65A76CCD5833D60CB69F3D397B72F6249CAB00AD75B36ED6754997742909C3C28D7996677956CCA92496B69CB58DB167C9DD7264CCCE8C3385128BDB811DD8ECD870142137D5AC9A555335555335C37DFAC5CE4CD7755DD7111F8BFB27372F112A22367A896B0CA2200A6479017218AAA2CB66D92C03358F3530800806F65F0DABA1944809D88EEE4D49840086460B58C478A1177A401A449423ABB33A1B64836C90C55203E7337068E0D0C0A1A49EB3565A69255DA1F647FBA3FD7215287602539A8447E4AC90F105C201DA5749955489CF7CF536AB4845DCF450F0864258080B42BCC24990BE347F2291B1AD6C65E3AA9159C7F231B7905BC82D20C39D367B78A65BAA059DDA8FA8217E8572AF345DBF47DDA3EE5137AA1BD58DC2F2CDFB793F8F6DA0A5FCE4F39F7CFE93CF7FFCF71EFFBDC77F0F5218D013C654B5F0F285972FBC1C9D79B899010856E7B69FDB7E6EFBCAFF5DF9BF2BFF179332147DD91DDAAFB75F6FBFDEFA19EB67AC9F71BEE87CD1F9A2383328FD1A866118889205DABD3EBA3EBA3EF874F0E9E0D3506F4604098D626808E3BFF2C90DEA06758390B0A030CC91D3BDFA5E7DAF38E67BF5BDFA5E5178AE1935A366FF8DFD37F6DF480C07889822D4A4ABC61185AE550A4B6109FBC97C29F3A5CC9770FE1235DE13DD13DDC3EE9979E0F8AF343628F805BF00FD647C2EFBC1E7C0000A7EC12F40CF59F64C2F39B77BF5BDFA5E8C867C8ED1806BA63D77FFB2FB97DDBFC41D04EF1ADAD44F9C78E2C413271EBAECA1CB1EBA6CF995CBAF5C7E25685C2873326F326F326F824EB52004D7BAD7BAD7BAAF715FE3BE46D4C1A0B07D9D7F9D7F1DD746E3EAA0142D9F5F1F5D1F5DCFCA5CC6BDC6BDC6BDD0D0C6B5E02EE02AC2EBC3EBC3EB8D9F367EDAF869E373C6E78CCFB1EB15077F83BA41DDC011B9FB97EE5FBA7F39FFC9F94FCE7F123AD8C35F1FFEFAF0D7B19F0BFD7B4DED3F6229049DDA8F90C1A14239199311D6FE9892001B02A6837C20BE05F70CE94700C8D2293608822000F5090E036545A2E1DC6AB55A2D1C11EFCF7CE0CC07CE7C403E4763006857B1EE15295289CB2148195330806B709E253E26F89ADBE4613F2CD62135BEA6699A26DEB34007475AC9DE4400A505582E85A5B004690BB85569514040B714DB7006370CC330C4B7707406AEB13DAE2B0911837486C50AB6E7B192450340E99A513344E41260720C94C65280160AB16898617696E6A0A22CA403383580C29ECB2FBFFCF2CB2F87CC0500DE6491528C1EC5C21A30623E733573AC388A4448E4DA813AD4CC9A59E3850BCAB762CD0D49B8036728A0347A1537CC86D9C07ED61F5B7F6CFDB11FFFF11FFFF11FFFF1148E7EE65AEA8053FB913044A598BC38FB8538187CD4859D0B3B1776C241622A44D48B7E3849F817D331803BA834C3B5630F7024701BE226F35EDECB238A12E73DEE8EBBE33C69723C275D7450016CDBB66D031844E42DD21C042FCBE44E702EC79DB11C64392A476596DDE0ED935036729C3D333D333D33D81BE43E90CD45618FE4ADF35EDECB73569BE1741C8B1D309620BCBCC0B8F17204EE900BB49820C659E424F02ECC64143B918993464C490E3B16C1139CCEFBE7B22B38602C6E1001A3FA19CEF8AAABAEBAEAAAABB8DF30B777E46224216D9DC7C5328D8BB9D012D7827EC5F2204AA95577CB321D72F15016AB1B75A39E7C9E5188853C31EEEC96BBB6DCB5E52E2ED6BAD0BFE6D4BE534BBB70A476814D5AAC73579C096BC29A40FD289C19A648906B205E8F29122E2436E5959F7EA110053C5244C6E2B05BAD56ABC54E0867C2711597FA087B161331B96138B318698862357190E43E252E2481C918D98A63538A2F39E65BA34237F13A9FA36237C651B200CBA5B014C6B8D6AC9025E427D66F8211D50B0E8FA35E3E7AEC5B70CF895C38E79293842CDE1B3B75195B32AEA2160A1534ADF6B5F7B5F79D7EFFE9F79F7EFF93B73C79CB93B79C3871E2C489131CC7F37EB0FB64BD6F4C5E835D2F0C4EB7A66BBA96DC8FE657C238E68E753546AD337579C27207CFF353EF7FEAFD4FBD1F3443EEB29CDA8FBEA524ACD42E80091C5A0C8B61119D7CCC6973DA9CC68432FBAED977CDBEEBF4E9D3A74F9F166982D9C1D9C159EFFDDEFBBDF7CF3E3AFBE8ECA3CBB72EDFBA7C2BAB29A1DC05CDE99E7AEAA9A79E7A0A72928B0F2E3EB8F8A0F4FF098C40429D4022B6AEDFF5BB966BB9962B95B54AA95558182E568A70C6DC31772C180BC602899B110BDA60CB4CD813F6845B712BAE94A088C38B74A4A51656E2E6C88F5693A70CB73A96633996140B913B1727D7B49A5613E7CC6E4F74A9A6CC29734A1C30E42741D2014D496BAD351A36B4A65A53AD296FC95BF296501E03B7D7F5BA5ED783131537669BB669074EE0048EC0E68E76B4F450E2C544663A339D99CE46D9281BD9FBEDFDB680F6A2C3659BB6694B91152D3B84C57D5C1FD7C78343C1A1E09040EE666006228A89BB29F844E0059E30C9F5A81ED5A34EDEC93B790CBF35694D5A93B2849A36A68D69EC5FF5A81ED583FBE22A57B9AABBDC5DEE2E3FFC9B0FFFE6C3BF79AAE754CFA99EE1E1E1E1E1E14B2EB9E4924B2E8162F68033E00C38E287278C0943244DD0330A455F31EA56D1281AABCE122AD7C8E63E5DC2BD6AEC8649A4138E1CE7295964DC85C88CCCC8D0863604A696485A073AD0AD46ABD16A744E774E774E2FDEBF78FFE2FD27DE74E24D27DE74D1872FFAF0451FBEF4A3977EF4D28FB2A2596A3F6A963AE0D47EA886E963E5DCCAB995730099F1B9E465F7B5F6B5F69D7AE4D423A71E81B21226BEA527969E587A4226296452BDC00B3C96D7C79680ACE7DE3EF7F6B9B72F2E2D2E2D0A082CE09E633996E3D6DDBA5B572DD5522D2107B9A11BBAA8401537D9F13B7E87DDA474BF2947E5A82CF9CE922AA9129C1F83C6A825455B40D1649ED0137A42F6409957D4928A43B52CCBB2A48658052A501CB3A2EF5034168D4592570EADD00AAD58A90FD96A554D68841281B1E8A310C71ABAA11BE286BB4137E8A2E6D51FF407FD414882F0BD93D8DD5296B2502ACC23CFF1319CBA199AA1B9CA0D26C0198C5F5E3CC1590613C1443081D19328F3E9264CAB7298D5A81A55393B2E7B1ED7E37A1C90BBF41D2C85A5B024C8416005569004C0FDA6DFF49B483A9CFDC0D90F9CFD406E6B6E6B6EEBD01543570C5DC16542B85352370C9E7335AA46F239CB614A457835AA46D598AA7682F3CC9DA6E4192BE9922EA1CE5BB62FA8822A486B4540D670D8F83511EAE35BBEE55B20A3CDEF98DF31BF23B739B739B7F96275B14AA5B47E542D75C0A9FD50EDD4A953A74E9D92A29A6ED48DBAF7DF7FFFFDF7DF8F681511DED2C8D2C8D2088A8250C5EBFE91FB47EE1F997F6CFEB1F9C798ACA557EE64663233397878F0F0E061C8E58BF2F0AF2DFFDAF2AF85A3E168388AAC98C81CDE3170C7C01DAA57F5AADEA55B976E5DBAD5DBEBEDF5F63224EBB7FDB6DF667565B45867F0196DD81986F595AF7C5946A058C5281B65A38CC895959919721496F201E78073409C4A2368040DC862A0AD9EE9988EE988BEB4E11992B415E707870A9528CBB66CCB9625056841555DD5D576A95D6A97203CD9D7E86BF4353AD94EB693F56CCFF66C27E7E49C1C37905007D40175003134CE10F745729938CFD1603418454F3E76C022CD51348AC6AA7275336C864DD9B3526AB52409FB048A80ABC859392B675953D69435C54B9F70229C082758BAD29BF0263CA15049B4BDD7DFEBEF45642FE73CD21DE98E382BCE8AB322703A80F49A593325E32EFC67D7755DB7F364E7C9CE93CBF72FDFBF7CFF99E3678E9F397EF5D5575F7DF5D59952A69411A05EA0E0300AA350D44F421DEA90FB29F955BFEA577107D11E511EFD40052AD0655DD6AB0D2A4ABAA44B70C62058618188DEC6CA508612F72F3969B47AF494A73C6E83817D6249D4AAB6AAAD2A7E0BE79C73CE3967F6CDB36F9E7DF365975D76D96597A1DDC5859E03527BDA5212566A3F24431E0EC21778EAF0FEFEB7DCFF96FBDF02AA149A2260663E73F6CCD933674126E21C24A672E9FC03762819F27C98FA01A88AE339D077A0EF40DFA1BE437D8716762DEC5AD875E6B633B79DB90DDB0BCD8AA25BCE8FB2FB441723969904014A0A9048A4027B60162B8E257A524AA9D5CEBE584630E54A041D59EB2A8AA228C21E182AC79E41BF121D285A28303D0A1D9010239EDB716EC7B91D2058011C96F688792FEFE50156A31D02AE85C968381F9C095E9C3DE5B365EA1613D9926217B816690241FD8959CB9A2B7A99B1CC7D9FF00C70365ADA4550DE3D993FC699604B087A806C70C5E5575C7EC5E51807069C39EEE4AB6095ABE4BC1AAB8AA6B34DF647923D24FA3E49AE9AF4B380006149C1D96B664D6354B76EDDBA75EB56C0ECB8D20B3D1FA4A654EA8053FB21184A7DE05C4FBDEFD4FB4EBDEF6B6FFADA9BBEF6A6C7DEF5D8BB1E7B176A2E67E766E766E7E092315D4A7B0354B84ED813F6049C31DC06337519CCC4648D0948804DDA0FB661352B9EE2B9DB6EACA311B514E4283616F9D9B66DDB88A8E06C626C5E9AF459030B5321B391B14F9C89643121BB510C8A8190CEC449933B44048C5102A08ADF353EE7BD010F40DC298A5DFB3BFB3BFBF12D9C039C34BE8BED459483E85A381F50E4B037E1514751144552EB8C289FE42A050027011376A5E28C89B0164B0140793BD1A682BB3331B18BCB9CF062B6B9FC170E8F696ED0D89ACA4E65A7B064F9B11FFBB11FFBB11F83EBC2F8C784457186D42158F2BB94098EE57AD9CAAAACCADCA6708D1226DA1B2B4EE3BF496EB691307E3E7BA67BA67BA6B1A4B8E8A28B2EBAE82274B9C6395CE879E2B968290B3AB51FB809BC66599665811EF5C47B9E78CF13EF011B590A7E282E64D6AB44755493CAEF852445BD89B89694B7E1DA5F16CA88C943064110041E19477272149292E0E88D9D534C6C92CA87B025B382252AA2FC28BB107648318E2EC94932D79AD59593055431E633C76DF49E0BABB8AC881B26326738E90E1960E7A5035733B3F36332976863510C1D1B1902C0D989F2622876564AA9D5E50E5F05EB6DF1277CF7B1A4C0D2040D3C62D7957093929DA5D894EF35677F936841B2B44986182297046E0B004EAC6C394C555555EC9911A2165B2128040594F3214D834A7A2CBC2EF40CF1DCB534079CDA0FDC40A7BAF7DE7BEFBDF7DECFDB9FB73F6F630A1025A347BB8F761FCDFA593FEB43F396338ED29106903234879DC0091C16AC00375518C2AEE11A6E26CA449908AE17E02A53B1C409E5A37C94E7893856FBBBE2AFF82BD168341A8D22578D6B61476BE48DBC910FEB613DACEB40073A88493952A75EE15A7B9667792037D953F6943D857D72EB02707D595E03DBC40A6000BA220749242C2907DAEDEC767683F1CB20B08C92D375BA0EF390EDD00EED18DF9BF5BC60C01BE096C4656A539B1AF70B31AE97F3725E0E679BE9CFF467FA712CAFEC95BD3268655DA36B7425CA07506C999669AD46AECDA81935755EE7751E894E2652214A63A0DE366CC33600B1CAB2C0D2969611D3A636B5C9A436AFE495BC52D4893A5187E35D71DEFBF43EBD8F1DFFCA2D2BB7ACDCE2FDAAF7ABDEAFF69CE839D1730215B7C8EE8332162376E1B870A8A63295A9415F36B5A94DF0DBB91DA131694C1A93A8FA85A0A62C050A412128A0A5043A59A1398750BA0A5121926C3A72CC1C674B4D732DA80535E190636955F48B7ED1F44DDFF4B11845C5C1FA4BD75FBAFE52AE41BFD0B3C573CB52079CDA0FDCA030F5F0471EFEC8C31F1190B6E017FC02DE83148BE847DCEAB8396E8E4B9CE4599EE5817E8ABDE17334868B55EB16755117A3A4A19C278CC2483AFFC02D499C4D5D6E244E059F4A29B51A3FC5A657CAE4717C1C8B71597A02CE1217407161ACD2974C62546A5AC7E7066E361C408C5B0B1075C01C3007006BC371C6E42C30BD5ACA5AFDD58BB8A6611BB6387B308718818063CE1ECA1ECA1E8A6956731C8CC81B842350A51AAAA11A204F059DA01374787C184EC72746688486B08B25B6F70CCFF0A09FBCC6F8E3AA1BAAA1045E6695E9A4E009C3DA7066B12C35377FA4C50D9E96F6D1F6D1F65160278082AD8A55B12A5872714B06B98578A0714CD6764EC6B81843540C578DAA21642B01ABA90B16D8E092A4008111DF555AAD4A410B0C8E95117D2E907543355403E7E936DDA6DBF4EFF6EFF6EF062BE242CF10CF5D4BD73BA9FD000D80F35FBCEA2F5EF517AF7AF2BD4FBEF7C9F782E0C31322A67E648825C7168661188ABAEFE8CAE8CA28622F64E6B06759C58FAE8CAE8C22378C6DB86920F620B0EAB83BEE8E0370C3B1201889B78B238B238B2342B02281498948184425A942267F31D94ACE938420382B89385EA27FC4FA14C532C18A2312166B64DA11A24F6CC3CC6D1C85D5A060EC9225322E06C5A0885C2F440D1904C69860DCB8C448CE0AC76A3A4DA7899CB1C4B50DAB6135060E0F1C1E388C28193134B6E70401685CA2B70575ADBA5937EBA09581890D1A9D9451359DA6D3C408E328EC6EF98E302C8F51C23970DFAA0E19EE0513BBF024CCEF9CDF39BFF3EBBFF4F55FFAFA2FA1472F54A8325399A9CC1494A58512D84CBC1A76C3868064BC8888406901BDE9E89CE5655215CAF6702C5C058E8E33C1360C8673FE187B63B52FA050A8B6BFD0F3C473D7D20838B51FA03D7AF3A3373F7AF3E9DB4EDF76FAB6EEB6EEB6EE36DBB33DDB93EC9DAB5DED76DC8EDB7151FD6965ADAC95E5EEB352BE429428F494E5481416CB68229A198FC6A3718ED52486CB47F928CFC49F201FE403D131B6233BB22376754290A9A99AAA25339486699886194D4693D12440BFA8181523C9FE1AE3C6B821742444216B64733923C806C75C324A460900ACD375BA8EF4D345A0CEE320BD8A114B51C6175218D8469CA81118816851A1A25A20FAC00AAC80559D39A39C3B923B923BC2C7720CC770627C66893205490F8C4062EBB01136C286E00D466444068FBFC4F413D14434C1AD1B39BF8BE30ABA40EA574CA3B36B76CD16781C9D8965FF15A3625410FDB34E3560DEA01C9403C9B3A206177124BE85A2A04E7FA7BFD30FCDA94B462E19B96484172BE2E4501F4CCF9B5403E3FCD13998F3C4A806C6B384FF967559C7AA8425EF4B1880945121374CFD9D24F36D2A5399B11E564AA96FA335A5A01494CC9259324BAD99D64C6B862B86D322A51FBEA5DD9052FB3E1B60B42F66BE98F962E673E6E7CCCF9910FFC3B43EFB92D997CCBE845BBBB75FD57E55FB55E83083CE36589B733C24DC60706BEFD5F7EA7BA52B11285AD747D747D7CB34F759F559F55974DA41F721F41A9269FD33E167C2CF089FF6F3E6E7CDCF4BE4F479F3F3E6E7D19706DBA04F0EDEC7641F9452DF8E4D6F5037A81BD05388F3BEE84E8329189D85241EFDA2F345E78BD617AC2F585F403F25895A1095DEA86FD437F299604B89E15E6FBFDE7E3DF62645359F559F559F4574886F89FCC5E7CDCF9B9FC798E00CE588A07DDDABEFD5F7B20675EE3FE5FE53EE3FC9D96632994C06E789DE4A78091EF0BAF075E1EB7AFFBEF7EF7BFF1EFD88A455C3E78CCF199F138A1C7A1AC16D6309F55AFFB5FE6B998DECFCACF3B3CECF62CFF2CC60F184CE4E9F7BFA856B44E722E1F4DE64DE64DE2441EE4DE64DE64DD299AAE9349DA600DD37A81BD40DDCAB4AEE631445AB8ACA31A56814EDDC64DE64DE845859EE024966E22942BF8FB96BE6AE99BB66F0AB835F1DFC2A9003B9EACF449F893E836E5DFC8B60652BB1BA5137EAFAA7F54FEB9F96A3A06F12DC7625AA44ABD13C9ED21BD58DEA46A656E16961D2191C333778C0F9E0CCB95F13CE166382C81B6C763C277DBFD0F70B7DBF70A16791E78AA510746ADF675B1859185918416B3FCEF80222669A8FB82BD628263EAA6835532110E70EBB64CC6166BE2B7F8B59C1DC881EE7CC712D675E63F13411AC38DA66D05B18CE54F4C21ACEC966F5387A92F11B5372A63E42F25F8AE144D38ABB0CD11EB851011F8BC799B7E44FB83502AB6BE18EF088F1F8C47A3D51B69B2BAD39C72C042B2E3A4ADC97E4DD493E752C03926CF320FBA73BC8A5653C6E9C338EE5FB89AC87E4C5B99DE7769EDB19ABD6E5660CAC149D18FF64EE1F16CBEF12E799E16B190D70A4E95AB087988C25AA0F26AC096B82D5A49996C5BF1DE8A5A368F042CF22CF154B21E8D4BE6F065EE537DEF88D377EE38D8F3DF6D8638F3D86DCDEC27B16DEB3F01E343F07F3565A0AE63BF94E5E7555577581C1F9E3FEB83F8E88444A44C05E027017AA50859D6EA7DBE982A5CCB964A9F2C44654AB2A742D4CEE41188401E7DBC2E570395C0E76063B839DB80A0636F91376A5ACBACC241A7059ED8C9DB133ACD80C35ABD00EEDD0D6755DD7ABCD186AAAA66A512DAA45B182222BB2222B8A3906A5D4EAF42DB5D145BB684B7DB35935AB66D5AFF935BF06B6AD343704C89AA04D89B30C83300891DFCD35728D9CC852B68376D00E245EAD5A554B684D9D42A7D029AC34561A2B8D9C97F372A2C7246ACC96655996088050E1198851BC4CE1AB00669A6C1101CD2F8E6BB91A189299BCD4902E4C780A7CC3377C5C9DB83A1191526A5587BCBBD85DEC2EEA73FA9C3E27C220FBA3FDD1AA74282D7A5447755407EF21628A6BFCCAD1AF1CFDCAD1F6FF6AFFAFF6FF7AA9F152E3A586A2575294638DA5153EA91A55A38A3B2535C188891BBAA11BDC9241965C9450003C0ED67437EC865D1103B1033BB00366D1EB293DA5A798ED8CE3FAB66FFBB6B4AC18F7C6BDF1C58B172F5EBC78281C0A87525EF40FDC52079CDAF7CD10FB2EBF69F94DCB6F42CF16AE8BE549B68317841BA9B027D67D164E022C53CAE6821D2ADCD77A548FEA1C4FC0F148045C092A4105827F11EBE2E38885B0101698C2232E59873AD44CE411785999CA54496786E3CA9699301366A26C948DB2C8E7898633084135B366AED261CA4139280B5B15AB0F80E115B3624AB65B9C014A5928EE89B9523833B8FF822EE882D1301A4683F9C3E2DA698A17F75F5225257B63811166084B143B168D45631CE3028710303F6366CC8C90C2B4AD6D8D738E155359CA5216E76B931880B8BC50875A54A0BD9A57F35663FA8A51312A922C2D45A5A8C4F1AB177AA117825590E407C018F9100CA31015A2022331F2AC62248B46D1108EB42A3EFD8210269ED5A5AB97AE5EBA1A74BF8CCAA88C620E33AB494BB1139A3494C37258664C9AAB7BF95E4B161C19DF922AA952F2BAE488C4E7874B6605696C29543E5693AE4495A8E2E7FC9C9FF3D67BEBBDF5E615E615E615A9EBFDE158EA8053FB3E18149E1FF8D5077EF5815F0590D57DACFB58F731B094C3B3E1D9F02C08327EE8877ED8DDD7DDD715C1C86EABDBEAB6FC657FD95F66910D71B1DDA81B7563BD5A97C3E57059484363D69835265B06511005911BB9918BF72C1F81F314B01424297C828918DFE5B2A25A580B6B68D2200ECC8AACC80AC7C3F1705C39CA51C24415C7039E2A0964EA8CCEE88C94FA20CB983373664EF64F20365F9DB0A967EC197B86A33AB9C66C948DB2BEE33BBE83AA598EC5E1E49823CDD4247103C006F605FB827D180189EDCA6ED92D4B1699DB2A1881111802EDE6555EE505F6B77CCBB74088C37201D968C624B2996C269B91E8AAEED5BDBA38D74254880AD26801F7B16A552D9192907A68CFF33C4F9AEB11E52A56F75CB48A5611F801AE050ACCCC6067821BE275141119392367E4B8D619043411EF84B6976FFA26E4AEA5C331F49C310EF38DF9C67CE39B83DF1CFCE620C6FCA59F78E9275EFA89A1234347868E08BD0BCBBBA22AAAA22C440C6528031C69D9A7A94C65A2E7123B6CD4BBE35AF02D0AE305AC0EF3613E948698F209909B40052A40E72E19819AAEE99A5FF12B7E056D426489E9455E24C56067DE7FE6FD67DE0FBAD995575E79E59557A2C7F0859E5D9ECD96AE7152FB9E0C3F78647C512B09200BEF599F483489106955755557A5A95FB7DBED76D981C5A24CCA0DC7F267894EBAD26A7EDC1D77C799412D4034557CCA34471CD158E68F22F564D7DE642DAC9930EC921D27BBC364FE8F9D04D3A3585E3159CFCAD95FBE162E13E24FCE777476B7B11EBD2475227034B534E04C368F3F47B77CAC24C53B8646B08A56A2288B478663E820619C38601D2E1E678E77B9788C1319D23C91CE5CD4C8E9DA99680612D3F2EEE5DDCBBBE5192061481192449D6E4DD7742DA666051DAB4A5489444D8CAB81B9FC4C9611603E53FA83C739562B5CA117657FC5B00D67857DDFF7FDE5D1E5D1E5D1B91D733BE6765CE8D9E5D96FA916746ADF933DF29B8FFCE623BF898E46E85F84A2A3071E78E081071E10B9FE76BBDD6E632A442C85DC305A02E0934D776EBA73D39DA8E805C905559BC850C6441288F9198B6EC9F0093B6086B579EA67314BAE01E56331942AEC59E82ACFF4CCF4CC7075A9508A588997DA00B01A172B4B33C71BEF312678F10202D7952440B1F38BC977501D33377E602D689C3F963E224209C52BC3300C03FF8DC95812858AC78A478FDD67F2DEE1BBB8DE9854060CA3442E902BB9791B2E558A3D03B478E2C50DDEB31E75523245C07F1A5B462C18CF10B74D1A64D0587EC59FBEE24F5FF1A7575D75D555575D259A56F49482FA84F7EC5C930ACF024113F14AAE1DE552E43E91EE612A963CE12082D152408E525555558DAD19D1CEA16ED48D3A78DDBD33BD33BD33B88ACD776FBE7BF3DD177AA679765A1A01A7F61F3434A89F9D9D9D9D9D955E3AB0716FDC1B8F7192897BCC728F704E9012643E273357638DE428E68B91658858C471122B5E71B48DD38CA95C31998B2C49808AF5DF2539C32427393669526C9D644133B759328289689B473E16A7B2916BE4E326C537986494CC67C732E29C3105418C416FA5D4AA23C1D2848541D8E9C65C350964266B55CF376ECC968F45ED7C453CB6DCFB888FC2CF09BFD8128AD97C2F78D1C67707BF02FC22843CC5AAD1A48A15DB33B95E467A04524E347EE0DBCBB5C2BCE7586C4D2A5D92FD4D72B3292217AEBBE7799EC70AEDA9FD202CCD01A7F65D1B7ED2FFFCCFFFFCCFFFFCCF0FDFFCF0CD0FDF0CFEB310AFB687DBC3ED92DF1DE98E7447C06DC654D8F25B7E4BF896A2CD6418866120EAE2321851472A0485A020D95CA2CC48537722A788865449955409442A6425C3A9702A9CE2B8107B1337CC1C699E76833008038E6F242683739A082682D572975EDDAB7B755337751304A855F69161191678CEECB0C16215B670C92C99ABB03095BE04666006924114D73E614E98E2D8A0788CAC6160055660497E1A4B1C333003C106F0ADD00AADD0621722AA557927EFE4E558C5A018147313B989DC0496447E9FDFE7F789C39B3027CC892439CB366DD336713EC2BF22B66D327D10736F5C9EC40B08ADB4D249401B23C3C293E07B831C274704C3BCA88AAAC8F437719C45AFE815D1015A9626A3C6A831CA988AF0ED71750DBB6137320732073207826C900DB20286538763A101BA911BB9603CFCCBE17F39FC2F8771FE2F7ED18B5FF4E21741CF4BE42441822BAAA25AD556AB06D520D6DA41C450A9DD217A00CBA2D0D7BEF6C15A1065693425AC9815B3A226D5A49A8C45C34EE4440E34A519BE96E8DC888C68B57D21B8FA13E1443881ECFB895B4EDC72E296F091F091F0910DC7361CDB702C15EBF8FE5A1A01A7F65DDBFCFCFCFCFCFCECF6D9EDB3DBB14666093DFC6821F1C8F0AFB06751459A50DF05F88CCC31E40F999FCC51A99C44425119FFC55402D7CBDD75B85310C7E59C994E42970203637AA28E3D80E9E0A8381A93F89522513E73AE764D669D39565B23DB4DFBE4D1E3BADB18BB38F12D18CE3FD63918542FB258D90F51CC1864E66C68329A649C20D9A082635FEE89C4E29D8C4FB0E237E310ECE063F03B35946419D158DCA9948A9775318601A94B11E5A0767EC9BB8927879711F845A0DB7452E831D6E34829F56DD8FC7C912E753A12218E52500AE25C6E70E3298BACAA4FBF62F9E0048B3E0971F3250231C2E7A9EBFD41589A034EEDBB30B8D5FBEEBBEFBEFBEE3B79CBC95B4EDED21DEF8E77C7F1C39E9B9B9B9B9BBBFF81FB1FB8FF01A859C1954ABE932656A6BD00B81302176941735CC2531E4F7CB1AE3E7093941BE64C278387DCF9270941AF0180D3148CA9190E58F478B3D96C362B4DCE938DF9928D19281F99242271EC128B35E13811FF259711541A9474DB1C6BC2A9200F0AA7250DE92AAAA22AB83A7624F22D5ACA24FBEFE26CD9890A2C9F10F7E07160C21A52129CB610321DF2E2444CE3FC37DF173EB724654F4846786670B689140343CDBC6706D5198A67B197185F9D2AC5F1545CFE5B97FFD6E5BFF5CA3F7DE59FBEF24FD1FC409EAB9A59336B311219396676ABFC093728E48816DB483697AFEE3C2E5C161F55A36A5451B78D883F3B9D9DCECAE2159D9A70159B366DDAB46913B2C269FFE0EF97A510746ADF85CD6D9BDB36B76DF117177F71F11739838569A2FBDEEE7BBBEF65472B316E212A4405CEEF429D07254912A3EC0DF606ABC0A03294A1D82D891301A888922152698EECC88E6CD610C6D94AB90BD5B04ACC99577995E7A5A7C4738636B4C1F1B438184319CA303246C6C8700C27D9505BDBDA86D6316A55A50258E6FE288C56E32DAAEC14809AF48151A283BE40EC723862132C8172A8B21C717DD777A11A1D13AC50810A5673BA63C1583006B03456714B39720838246B4063CB742C3274A8439DCC9A03729712A0B25136CA56CDAA59B5D87DA4084C1A4A9A811998B1FDBBA11BBA222D427D81781B3C0F00D8C5A595CC92295BB2D615BA1BA13887E1F1A43C88DC3BB402B4422BB4D831CBF38C57312A4645EC5952092A52912C9BCCB25936CB6ECDADB9356485B13CCD1572855C01A03D205F7693100C916C2E494BE3A279612115E4F8F5A1A08BAA8DE56981E025307D40EB5AE955427AECBB655556653CE1A28435A126D4845377EA4E1DC54BA8F25FB86AE1AA85ABD6A9756ADD859E8C9E159642D0A97D470630ED1B6FFEC69BBFF1E6A591A591A511C9A1C20A41212840A38A5B7C4BA7582A10C28F1FF95D28EB4AAD272C41C9E10985494331F52BA28D70D42B4D059452ABCD0358DE129F73DCB646CC6D18866120C296572693C964B83F4F0C7CA65C328F5EAC8350A25429D660002A57047D8BC214E2428A4AF19EFB113107FB7CF290227802B6333A28D339008DE03DE36CF109EE9A887A269BDB532C9E4C10704C89B3E5389BF9C94014D0EA60E8E8D0D1A1A3C01B18E1E0E5118E8BA788E9751861CEEB33F690249A31470D9F609F784A93DDBA98BA85B3C29973C40C43CAE6EF7FE1EF7FE1EF7FE1D1773CFA8E47DFD1DEDFDEDFDE8F821F190192908C9530B1B324AA1447C62CAC21BF858257F0A49D49B2BB17AB46F311591E04B12F9751C131A3E0F042CF46CF1E4B23E0D4BE23C32A9EAB7B63794AA5D4AA9BD1DFD4DFD4DF14E129C49D2DD5522D89B426BD496F52B6F4B4A7BD982A53312A4645B8736839490453D2255D424425937B18855118FAA11FFAA0A8B083E118578A7C90ABC671A94D1BC791C96C2E4FD93C41E37A99DF2B57515665B55A6C9328AD497274F9BB884739038D084F622F2FF4428F235A7C1265A24C94411C8656F6E8538B481AF437817CAB66D5AC263B1CCBB52498D532927879CA531EF72A96736EE8866E883C45A002254216A27B855E4CA08F252AAAC53D035625CA9B446C344A56C12A5805768D7EDDAFFB750853F099035C15ED33E607548C8A217727A6E98D6B514A29852164C1B4350AA83CE5290F4B816416DFB00DDBB0637710C752A10A450213A57A5BEEDA72D796BB825A500B6AC06920E78933E7FB02C72C442D685DE11455A42271BD403EA426B81A55A3AA7455626D6A44BAB852E24E4B8F2FC4DC666446501F918438C8928252348366D0F48FF9C7FC6358A8A144ED42CF4CCF6C4B1D706AFF8E3DFECEC7DFF9F83B1FFC8707FFE1C17F689D6B9D6B9DE3BA43CE2D8178E2CFFAB3FE2CE2C595EE4A77A58B9F2BA609CE9C71398737E68D7963D099E2B88AA77E57B9CA5570E7966BB9163E7019640EF785FBC27D4C2C124012C02062444C944AA95527EA4C3953CE94B861C7744C078D11338732873287327D99BE4C9FD4D16632994C46F2C496611942208A45249C1905FFB96256CCF31714A1FB8D36B5B92A2D89E9BB16D5A21A98D5987C3192AC5E84695D62C4197BC69EC136A2E50468BDA44BBA041EAC2C65284AC67EE05492A55C382BCE0D4B1C9C77F36E1E6712F9911FF970F9E0F70AC45A36CB661930B25DB12BB6884208B1CBB00D7B557E241366C20C97AB256971D2690FDAD1BEF6B5CF4FA0BCF7233FF281DDC65A684098B31015A24292AEC5E56A1C2BA36D25271D38EF6E7AA6677A193363664CC4EECCD096140CF2B515555115DC9187661E9A7968C6FF25FF97FC5F7A69F8D2F0A50238BB55B7EA4A834E29AFA292215E3282722E7710F8504DD59444C031EE74499554C98FFCC88F78F9188C07E3C1B870A7CB66D9143E390617CF099E2B9CBFE8BB295BD98A71AF0B3D333D1B2C75C0A9FD3B969BC9CDE4669C37386F70DE108B05B16A269EEDE6CD9B376FDE2C80B376B5ABB146C68F19809EB419A0B21C4C9A9814A4336B442FCE3812CC2BC28D15AB62554CC3344C03B51BDCAB4784F1497680E500057C564A2925FACFA8AAE11E4D4DDDD44D6C13BB7638CE5A548B446842622C8A7E64A28F822890E4B544F38636B4C115A249AD2B7196C8E352C617E70FD94876F3185B91D4683A4DA789F224F92E22423827A5D42A0D4A241D12002C6F83FC9F59348B66519A09369DA6D3F446BD516FD40DDCC00D20CC6997EDB25DC69808E88D612DEBB22E23CB2B413D463E91B314F14BB843F006CA413928C72A59912688CCC88C38D245E98EB85894DC20F0843326B6700C6F404E14779372AE9C83E7DF02A73FFC925FF24B613B6C876D3DAEC7F538B007C7722CC7329B66D36C727D3C9692B0B367CF9E3D7BF6C1071F7CF0C1072FDF7FF9FECBF73B81133801F6201D907CC337569735308A6551FEC4CAD22CD0C16E581C39E33178E651A96C28431918491C5EA26ADBB00D5B843EEA5EDDABA3EE1F42958BBB16772DEEEAB9B8E7E29E8B5342D6F762690E38B5F31A28575FFDC5AFFEE2577F11FA56CC5596FC19CA27CA61392C234F0CB7CA3A56D892813B380CD44D62928A453F64E7CBECE2853D40394B147D1B56C36A70F614F9DAFE43FD87FA0FE13D727558D7E33C51170B652BBC1F1818181818E8EFEFEFEFEFC7FB81C30387070E631B8E78588823290D1173E7541015138B20662F83D2DC5A112390E40F73E6181F880E73369BCD6665C1C1AE1D102E11E5F02D1E79A61D611BB0D9A16B26F7773A379D9BC65283CF3399758EC9A730B89DC8BBF35D630672ACE522F1E159CA89A54C6379624A079CAFA1241735B1B80A679AB92C8DEF2C2B9AF1132BF03BE5D139A38C840E7E2F8079E5BE14FDA25FE4569B92C72D7805AF80FF027BC0DEA4AF57212804859818276791A9AD216330E2988923CD857C9966A69969E2F95F7FFBFADBD7DFBE75EBD6AD5BB75E73CD35D75C73CD968F6CF9C8968FA4AEF77BB7B40C29B5F3DA53B73E75EB53B77EE58D5F79E357DE78E6CC993367CEB4F7B6F7B6F726556431CD7DFD1B5FFFC6D7BF81291B5321D6F8002D99D604C78CCF9926C36E18E7C059C924A42C041F9AA063D3374DE2C95A5BEC9FCF0AB19D283AD1848E4F62CE2CF1DD5864CCA54D14B5E35B98DCB9C428E91E92128F31EE2E46868A61707086C7859A04B89894B1D991C7D4B8A8A636F60991B6E04838F307C78C3DF388B16423E06BD62F635037A9AEC5F42EA9D2267A578C54C54D0CC9A132554A7A48535769BE6A969914E63639F86461921456D1B7B8744DC63FA198CD24449C2D9671C3C3C3C3C3C33FF1C99FF8E44F7C72E39D1BEFDC78278FBFDC858471D207DBF082832174D6DE8A711788B4256548D843DDA81B7576C0486DA074EAE28B2FBEF8E28B2FB9E4924B2EB9E442CF4CCF1E4B21E8D4CE6B00CAB8E93D3E978980957DE8734C58CBE3CBE3CB42FFB14B76C92E49DC5C0ECA4199A73680B7E260D079861BC3910A12C76D681527931DAA188961CB71275F11D73E8AC3A636035C010C7A91E477A9B38DF4EDA15CA9807854D823B11D5E48A22AADB4305401F4C5D48CCBBAACCB1C9B623F96699996C913BDD4BC029A9E0826820923300243DC1240781076249A29D925BB849E45F81C99CB6EB15BEC16D1FD97DBEDC5C42E2836C5F0E00E62F104470B47D29DEC4E7627B9BA1A195FBFEA57FD2A160196677996976D641B59C10CB8F2152D8784D55E35AA46552878B4B0C07D978AE104958C9F3D00E6E2321DD3311D29B0816BAF87F5B0CE854C4C03143F8C0A39DC9DA22EEAA25FF6CB7E391A8D46A351146BE1B84CF1C308B003165E34F2EB76644736FA1C03B9716DD77645D465687C687C486A04582F9AAF4E1237094C25A60A87D406FDB292CF3FA867025F57C36A58C533C945683887B02FEC0BFB50019CBADE1F84A510746A6B188A2E0097617201D42C54231043121A3A0206A28500E41712FAC61C89F2B4C2002CC72231A6B1526A35824C029549779BCCAD72AC990445F93DC74F5CD3CC7B66967592131E2307514CCCDBF03933DB36A9661CFB1CE7C059DB24A79A72C6BCB0E0EF9EAFE313EF33768FB8DC8814C4F82E73038364956D2CC2E6A88ECE3C89C9F193938497CF07E033022157C1422BC44248E216B1F3499C5BACD48ACF9616552CD0C17B60C7896D205983650D5760B36A55547AFAB58692338C8B94924B13EEA104FE33B11062CF2A1D4BBA3ED36F3CB5EFAFA511706A6B98E4A890F7DDD6DAD6DA26051E28FF47E982D24AAF4E13E5A81C95014E2E16178B8BC5F6D9F6D9F659BB6B77ED6E8C178A2978AFDAABF6F234C4406B6C9252810A540C6285EB3D8FD3E5292CF639B5F0139871C2983056D595E1D81AAAA11ADC354832826492332388584831C5A8184904099EAA69999669F1F9406583D5A1D9D581F602255ECE9E827D2AB17BD3681A4D59DC948DB251467CC67074ACB2B9A66BBA96AD642BD98A75C83A641D72C69C31670CB97CE4CEF12D56BAC61549552832CACD6C33DBB40FD987EC439D66A7D9694ABCAB7DED6B869AC5A963BA6FE88696EC38F60C6A1E4B67C8F898CA5466D279C4007C9424294B590AD4A4C00EECC0F6B4A73DCDA0318EC82C6871BA25A36494100DC71A7564BC8C27CF95CAA99CCA0599201364403EE27C362F5C806DC822C30DDCC065A7CE75EA50EA1685E748452AE234047A697FF1E7BEF8735FFCB9EBAEBBEEBAEBAE5BD7B7AE6F5D5FD7E93A5D07447F06C9E114CD8ED9313BF224578DAA5165B14C10FDF09B9527BCA00BBA208B66C4BE2061910595A01254C0C4C6DE70ACC7DEF1D83B1E7B47DF0BFB5ED8F7C2A1DB876E1FBAFD42CF4FCF1E4B23E0D4D630A99A453D2EC9E371DF151607C07B3848866739F2E0288AD7D4493A4CAC5120494EB2BB8A514E3852E4FE48E789A5E43D39D164B4CD7B4E4630B1EA4FA6EA90A845F27C92EE9C8FCBF41F76871CFBC632CDDC0F8A8E1EBB5E1A6D9687E4454C2C76C45DE6CA5A4472946966A2592C6F8D7C3CAB3D636F89F829893AAC71A7788993C015D8BD2573F0313997C475C5D010A5D4B73B22134EC0C03BDF297E869351268F95701A58AE84C6335640C534B7BDEDBDEDBD22CA8132211A4FFE2526DB174AF7A472580ECB2C36C992966B744622C3EF1AE033ABBB63B9967608FE4158EA80535BC390F5D9B061C3860D1B84F15BB7EA569D01C0D817AAAAAAAA8303830383032C4C8F1C18C7314C8761A1FC24448C6F31F589094A49E037A67505F51FD2FEC51E7074514D42BF1D024511F5728B059E8E1972643053D4959B4ED369E2BBCCB566EDE8BE837D07FB0E42E309EF93FF85F6135E205F0357C0367C14394F6A11C1DDA5B8FF31BB3ACE4DE244F01E23C0EE81EF323773C41D013F96BFCB542F61BCE3BBAC98861E59C469674D2E5684E6A89747DE4C986893715766BE77897814679514D194222BA8714DD18B8C097AC9E40B6B5FE31983EB422A072E36F6C4D2F3BF38B238B23802C22362625C0B3A29E1EEF74CF74CF7C498E7FCF472948C4F64A10C2BABB212C72C7C8E84BA16368493864A97286AE5DDBC9B7FE8A1871E7AE8A1A79E7AEAA9A79EBAD0F3D3B3C752079CDA1AF6F8E38F3FFEF8E34FBCE789F73CF19ECEBECEBECE3E01156BBAA66B49E17886883185B1EBE268892312CE909D2F2294134AC4B8EC14939A53EC9EF958220342F06392ABCC041F76F91CE92623729EEE712D225F40596A3878B8674CE5F8045BE23D676D3932636A4F72FFC9BC26BBE1F38D126F13C32412F28DFC5DA92D06CF99CA84F8B8E7C32AD805721639D69F98E24BB6D87FE98E2423E058769C2C1697332B9EAE9A5F7C5CCE85C7F2EEB450886DC9CF3F9D395F35F3243092EBEF587FC7FA3BC08E4E42F1B237285E2522DAF36688293E8E7D8EA524D4D4B91F30F52186FC241CB934068552746ADF274B1D706A6B18485828BDC7270CB2C5DA80D3A49699CA4C65A61057C11923AA8BB5A9A772176E1D188B541260355715E173444B6DB298D8249D1543D9E2BA9A4ED369F2A4B906ACCD46EE077BE0A80B75C38347068F0C1ED9707CC3F10DC7878F0D1F1B3EB67EDDFA75EBD70145B868D3459B2E02ACB069E3C68D1B376EDC7CD7E6BB36DF75E9D64BB75EBAF5A28B2EBAE8A28B86EF18BE63F88E7543EB86D60D0D1D193A327404EFD7DDBEEEF675B7035DC00B8623225696F74343434343884DB96162ACAD1E7543E2783AE9C293B126B79544148BEDC185C67D94DC39D5E662DC50430CF66FAC5D209195D8B5F373C24B044E2E30335C3A534D65A7B2F204A2F21B11241792F17BEE5FC4E56AC9BE58BC18E285A67C8BC0798EC26315D5406848491B578DC81854AC7FF9977FF9977FF9972FFFE2977FF1CBBFD81A6D8DB646A5975725AA44D2BAB177A677A67706D708FE3F1704C6206E087A300D8D81746A5FC83D94844C570ECB61591A302C2C2C2C2CB4F6B5F6B5F67DEB9DDF7AE7B7DE992A617DBF2C75C0A9C50C2B5F8803700C9404B8D818EC125074E25FBFB8329227BE986BA77882A169A6D824558B63E5193CC550AE3119B9C62215B43420E3783796C9A6499F23D718043D959BCA4D31740C3531F964BA67BA675A26F14967D299C4F6F2DD99DC4C6E2636C5B33C45D36EDAE23C50A9C9902903A49CBFC4F8730CCD91744C019B2366DC4D72DBE7CB5EAF319E64BCE735B8D389189D9F3AAEF44D1E8B510A790E494C83D19724041DE39CF3F9737A2581192473DBB1AC3CC7EB7C9E89989E19F552F74455DA673F70F603673F00E09AD5CAE4CBE456E13859E09339191CE38A1C47A2C52173A1634C691A616E73093C0CB9EA0B3D573D1B2C15E2486D0DFBDB9FFFDB9FFFDB9FBFFFFEFBEFBFFF7E51CF2B78054FF2A93C0D257FD28F3EFAE8A38F3E0A5D68C446E7769CDB716EC7A95B4FDD7AEA56ACA6B1256764D94D268511D6884BE8F364FF192616F124B8864BA3E890E342060639A70B878AA83743C6FF75269C096702D189E4CE1B66C36C60BA0484985CCAB0A618E747A52E96AB846949D419EB8C75C6F8BF583CB53BED4EBB1353DB2624803FE1632167893B925486E29164C713939EA06F61382562868A1974CDD0E61DAC665A0470FCCD022F31874AA031A7309810C78E938BCA440A8329515460C6116452DC23E632A97C8B23F818AD8CA37CE2FFE39F4CB2439D34F6CC523010BEF8A9BFF8A9BFF8A9BF40F306F92E6CC29AB08440C7EE569C25B75B802A163D45924D473724B8E7C4C20214303C93B846E05B4014AEB8E28A2BAEB802AA58177AAE7A665B5A8694DA1A26050C0FAA07D5836A5C8DAB715E4DCB465C47588A4A9148FC5BEFB6DE6DBD5BDC58D3681ACDF0B6F0B6F03671B1CB7A592FC7C841DDA81B75653F3CD9415401D3BAA94D6D0A68668446B80AA969431B9A49589CB7E3F606B1D29466D48C9A4C0A8338031CB3B8C650852AA67364E7EC9C9DCBF667FBB3FDB903B903B90388683115B203C696C6A431694C9A53E6943925196BF408AA8495B082DE441CBB87D3E17438CD90A0349CC8AAACCA8A8B2DFA455F007699F43B6127EC307FD59832A68CA908AF46D4881AD2BC2150810AD0BD58C6B91ED6C3BA356E8D5B226D618C1AA3C62843941C0FE13CA1422C406535AC865591B3504A7D5B1D0CA0F1849ED0131C074B867E2C1C0BC750C224F71D395DF46748242064C46CD3366DC636B03C42B387A4DB63B6019F1B1F11BDA5755DD7751DDDA5304AD2739A0CDFE2781A9B88E30F8CC00858CA43468F3B5F055110C5C886F29C8FAB71B5BA2CC84499489A5200AE3FF727E7FEE4DC9F8803C6F36F8666B82ACF82DF63EDE9B240336FE6CD3C0A8A70BD384F2CEC6409558C8A11967B45E94B4D57C7FA5970C3A2B08D2730EFE7FD7C6B4B6B4B6B8BF74AEF95DE2B81CA5CE819EB996AA9034E6D0D034C6AFD57EBBF5AFFD5ADB815B7022979FC57A645E9081886612802EE042C0314C5B4CEBD5AE150BB4137E84A3E0CBB61620BE78365D22717CB0A59520DD936DA469B633516D6979C71C92DB925B36016CC82B45D2BF805BF201C6FE85B4D4553D114CE04CE1579C4FEC1FEC17E49BD22CFDA7751DF457D17611B7393B9C9DC044018CE387334733473947589B140090E0587824312E94E87D3E134262F6C132B4D190C0683412908A162308E6090A1CF05B9201798C7CDE3E671EEFC8A315F1A5A1A5A1AE2E8D3F33DDF13BD6244BDB80B56AFD56BF59A87CDC3E66173C55C3157F04F59D058DAD21643B830543CCB72AA1A56C32A3E6117C89954B7E936DD2644A1F4EDFA767DBBB8C95ED5AB7A198ECEF6667BB3BD49E295ECB9149522C14B3246C6C88800089C9374F531422334D09E0F4D207026B2653DAC87756E7069066660CA33C97C66214CA940058A9B34C8B2A916D6C21A966B38962C74221DE9D5A5249673140D63C982A373C52DA2617BDC1EB7C7E733F399F9CC97BFFCE52F7FF9CBE19BC337876F7E51F945E51795712FA4BF87111991012535E9A945A29292995696B264892C6A6E13D6843581B859166D8883D16DA962552C51C8B2EB76DDAE5B192B636550C6DC1DEF8E77C7FD4BFD4BFD4BD54FA99F523F75A1E7AA67B6A50E38B5352C5696802998BA87CA0A9E1B9F51BB518613DB6EDB6DBBACCDCBD09F55B48A564C444224EC891292E48E322527E61270560DD5500D44C6AC638586801014C436D2D88EE833B28098B6A6AD5596F24066203320D1ED74CF74CF74EF1DBD77F4DE21452F5399A9CC94B42E6F180D43406644C0B6633BB62338414335D46ADF5C43194AA25EB8ED244888ED2148694E9A93E624228F18703DA926D5240067B82227722227428B4673BFB9DFDC0F983153C81432059110412321F4A8C3BD7394A31CD14C6E792DAF65B7EDB6DD0E3A41279065131C1B2B39279F10081CCA1DAC9A55B38ACB958677C8E5178C8251609E79521F8A3B14AD2666B5A157A36D5E5AD11EB8BF5332029673E332B6200CC2008B3F44AE78C2A543978E74B4AA0586FECA44404BC6C4B265F1E9973C8D68CEC8F8015C2681F93286F9281FE5659961477664632481D02CFFC1F21F2CFF41F4FBD1EF47BF2F7C66EAF42509A0822AA882B85EE26448140B94823A044B0BC2A22AAAA22C1D702688DD21B9836BACE99AAE41E053EEF547C38F861F95A34CA80935A152FB0F599A034E6D0D430FE02FFDFC977EFE4B3F8FACAD143954555555A520016AB194A915C5E0716FDC1B47D9FE23373F72F32337232B8CD53D6826E0C4C68A4028E7972C6162863372AE0CC34A0483092E51ECC4E41AA64D250B84002033C7187D60060707070707078E0C1C1938327068E0D0C0A1DE83BD077B0F32892C96F725362CDCB3082350BE9C3BBC72E534E777598349727BA5A8149570E29C5BE53D303509DC5AE1B4E7DDBC9B077D46BE853B580C8B61D1F55CCFF5705F9009063B171289383A03E61C4D323E215129DD236650F3628BAF8E9F1F2C7D621D872843C9D96EAE2D96967F4AA955B1D218518B7A3D314F98655E38C28EE5838924C50E98C7998D178BC95F564CD19A2BE07175349EB80A2049284C7AD5AB5EF5AA57BD6ACBDD5BEEDE72B78CD58433E188F31372168978F0DC1E2B6402218BFE9BAC6E906FD58DBA51677407DFDA787CE3F18DC7AFFDEB6BFFFADABFC66FEA42CF58CF544B59D0A9AD61319940B2A4AA4E3212C20FD56ED80DBB11ABC7A5BC17D36DB81C283959737337017511A310BC9CACCE5C43C18AE8396B284B53AD2D9CB1709B279D4967527856CD4C33D364C13FC9D4922AB59C3F26C144F907FF57DC58DDAA5B31F6B55C2322E986DDB0852683F7185BA6C93089499A5234EDA6DD8CF58302D05D336B662DB625AE053113D3DCE88A84594D2CE8246738A63E96848B89031CD3D3261A173F3F9C8688295225DA6688A33DCF1E62656674C4985A193F33D84362E9765E9D6AFA16B3AC9315C6FCAC2633D33C32C952223872A6C831F2C4CBD6E43EB972172F7C22E743B5BFC95FBAC4D62870A2FC319E46698C48658AA9FDC72C8D80535BC3E6E7E7E7E7E73F77E3E76EFCDC8DE88924D1039474F27EDECF0B2FBAACCAAACC6E004FD4D9D9B3B36767BFFAC6AFBEF1AB6FE43D4826120DDAA0824415A53CED623A6307CCBD7E63A2FF4AA9D5D808EF85F203ABA88AAAC48A85A86887EB9591DF452D2FAA7851538BCF8560D5B49B761385435C2CC447644EB544B43485717FD6351AA7936211477BD20C838C234844B74C85131A5D59955519512CE2605473AEEC59D9B3B207F93C1496E028D80FD7A7A2C61A533FCF1522D39F70BD42E6A2885614A610D792D34D02B9494DB1BEDEBEDEBE5E89E7288BB9D25A69ADB4B86F2E9E228EC26344277A4298E7CCC22C1CBFB2CBE4389BBF25A800E5AD933C73892C8972C83078B2196292772D6566D96C369BBDE2B7AFF8ED2B7EFBFAD75DFFBAEB5FC71A735826623187E70AC7C5920BD72E5AEE84BBC8F20E6C67A2FEF13326BFCA86D9301BD9C9EC6456702354215FF3C96B3E79CD27119D5FE819EB996A690E38B5358C57BED16C341BCD22C314254C5A32C0A120BF08B0BAA22AAB2DE565A209C2200C205BEF8D7963DE98DB75BBAEB46A309B66D36C328796A319DBB44D5BE236A4F3587C80632CD903D8D79856C0A3B6B5AD6DA177658C8C91613729A28347B347B3477B7B7A7B7A7B7A8FF51EEB3D862C2F4F4398B6CC8C993133525C34614E9813124380416A68431B92C7050C4B531B3770048547DAC3D14886F9301F8ADE107290E21E4A41291017AB4BBAA457A39340073A48E647D1D01013B43D628FD823002D4186F2F7FA7BFDBDF092D88F396E8E9BE3680588A956044C56AC156B050E261633E1A4813180914E8CE8983E94A31D2DCB14D0883882944C7CA2CF958C5559955519EF032FF00271FC68ADA8DBBAADDBCC18884599140D4B3579212C84057EBAC461833C55D2255D120E810E7420CB053CDA9279A573E65F8D5C29DA1EF8DAD73E677665B105067222728D553353A42EAD309B413368623184C2B3EC91EC91EC11B9CDF8C5D9CA56B6B097D1A803D448685D55A36A54059F5C9A63E28E57CC8A5911EE773DAA47F2644A76BCA66A2AEE92EB46DDA81B078C03C601E1F6A7F63D580A41A7B68601EA94E9923246EC9863CD1894522AC6B43CF19E13EF39F19EF99DF33BE77772DE0BEC5CBC97B887235A8A60E01A4527CB344DD344A8833C253AF9E03D4BFA31D4CC1A492CFA08770B8529E85241A3EAE20F5DFCA18B3FB47EFDFAF5EBD74BBC0B6099AA78659F5399A9CC144B61C0C9F51D78FA25710960EDA9CC5446A43918CA46D422F0322A86092866A8502653B819BA0B1263F17D514A7DBBAA988A551033F51FEE3FDC7F78DDBA75EBD6AD43561BEDD67BD8A67BA67BA6810AF49361DC38079CACDF15D91512C8945C26886C333D333DA2E284F778A1BA1447146E395503737D33225D966461614E06CC939A5F49891876F62CAEC2507C3241C0680A03CEB17ED20C71E3D7C14034C5B8E2D812DADDF81633FFE7E6E6E6E6E69E78E289279E78821D3633E463856DF40CF0F3C3BF56EC59524E55A36A54E599A4923C9CA14786FDA410F4F76EA9034E6D0D639053E2E044DE085B326583BF956CB1106B664053364F494988121304A65DD673E6A921396DC554A3A93C891D33374B88C55BC87E112CCC7AB949B520AE9BE4FFB2C4015F1DB661518E642CC535D6C2CE253891475B949248BF973BE1204DC07D72780F986AAD84F18283452559C4311959B21446523423C6F8A5F78C76F0DD149190B1EE58770CA5535DB7EB765D2646B120E2F97A6171AA42105EAA323FAF4615E95EC57A2E11B8CDCF70B25755F25B6BC4E589D1608BE5C8E9B7C3BA54FCDBC4B762C90E222A4AE1162F08123D949247973F485F9A170442814CED7BB014824E6D0DE37684D1F6687BB45D7EA4F9301FE601A3F1F6B2CA2EEBB22E775BDD56577ACD4A2945DB6B7B6D4CA980F200F449DCE0588EE5481FDCAAAEEAAAF0A5BBDD6EB71BCBEAE5555EC54A712CDBB22D1B420A32E5358C86B10AFC3287B6A22AAA8278BAEFF6BEDBFB6E17D7DB6BF7DABDD226615D6E5D6E9D08434E67A7B3D3ACF99CCD6573D99C703E11FD3B9113C5FA44C954482E960B3FE01AA5E658452A52127338966339F82E461EDB0B088CF8AFE015BC02FAE002B8C64802BAD7799DD779E9AA4BDDA200D84AFE983EC73943F6D2744DD77425661A0807C20117AF7EB7DFEDCF0E6587B2431893E5E672735962774132D001A9E257FC0ABB5E40F42870925CAC1DDAA1EDDBBEED8B9A37AA81D9E1718C15ED8FF647FBB9A76F6C51886F8DA9313586FB1B532786835486329465588625C21D52774EE0B355B6CA568C3226721C4AA96F93B0C8BD3139D16B7A4DAF195B141AA111AE2A7979A1177AA66FFAA68F022AA368148D62500ECA41593AF2C2ED955449C935A27A586064386F741DA65FE563EF7CEC9D8FBDF3B2CB2EBBECB2CB86F5B01ED6E22027D5A49A6402A035654D59538853852530168D4563826CD5755D0BE08C5F3A520392B8D1A636059D92FCB1A31DEDE0596A1D681D681DD07FA2FF44FFC9859EAB9ED9963AE0D4D6302E3E89CE639CEFE4490A6B6DF717DC5F707F41D4AF5CED6A17FF95580115AE2C4041D599986818668CADC759951779566C43D34772CA862B6568D41C3007CC01349917FC1150F08035600D48FC97313366464FEB693D2D79DC46D4881ACC01E6A91F932C1ACEA3CE1255B0821C14A24254088CC0080479E25CA06C33168D4563312D2AA4223DED698FDD7CAC700BBD630B66C15CEDB1833D20F38717164FD04F41C94AD9281B65C3355CC3859809729CCCD34605B0945761DC56CC1573056211EC0E39192150A7A10C6588A81822D146D0081A7039BEE99B7EAC61033F091C1973E41A433B388A859C4BA29F1216645C3EC45A5AC858A35E99234E3C87828590D425EB7349DCEF694F7B9CE5958560DEC81B79F9D65834168DF1F32F3C06EE9C8D743AB6C748E2A5955EA5CACA7737059B824DEEABDD57BBAF968520732F6C652B3B8654E177EA694F7BC8016301278B60FC7E6B512DAA4556644596E4F5712D78C255A082D538D85086926688C8465FE8B9EA996DA9034E2D6698EB4E9F3E7DFAF469AC9A83E56039588E415E41144401933BF0E30454F82F0FFECB83FFF2E0DC23738FCC3D128C06A3C1A8D48646992823D28F206175F776F776F78A2381934614E2877EE84B1C601AA621118074CB29EBB22E33D0279382F295AFA08B2480B3565A6927E7E49C5CDF50DF50DF50FF50FF50FF50ACC72AB290033D033D0392D93D9439943924D93E3289ED10D736544335A28968229A90D220CE944751B42A7E29D35F59977519596196F38C81D888DA7366CECC3167959711E02DE31C98E72C8B80866AA806948CC0D696C86FCC1D73C7FC9C9FF373B88322EBD10C9B61131A67866FF886F49785BE18226371CF14DD6264DA87DB87DB8721D9D13DD03DD03D804959EAAA7B323D991E85D74175501D14A7588FEA513D59A22395DF104B51BEF28565CD643438457FDC1FF757851BDDA75F721505A36014248E84BB82F3504A2925F11CE0683FF4431F4F974860DA866DD84265C27D81540514AC54A0825899933C8105A36014F0BC7915AFE255E0D8F049500B6A410D2329CECF0DDDD095E582D24A2BA01A4210AB86D5B08A93C253CDCD3A6138072C918548D5301B6643DE4F9BD3E63413FDECB25DB657EFB81BBAA10B714AAEF185280D9E222C4371BD5CDDC04B3DDCEB73DBCF6D3FB7FDB24F5EF6C9CB3E9912B2FE63969621A5163314A5FCDD1BFEEE0D7FF786476F7EF4E6476F5ED9BBB277652F402AC92916C3625864E7013730BF30BF30BFF04FBFF24FBFF24FBF02178E5216D140A4F20CA1D2504C83A3AF912D83913C0257120B984635C44C90C12770B1E8B48A82A281C30387070E830A844217BCE5767E70ABDCA748DAB0D7744DD7D83D73E5AE941229A594E2CA5DB90AC4109C27468451080A4181E3E935A439CA61392CB3D824DF052E224A162C713B0DBC1560BFA22BBAC23A65A8EFECEEEFEEEF4A0A40A40761793FEF4BF1189E0ADC5FC9D4E6BDBC97E7B6F68C5E70863EC621A068129FC48AAF986A946C99406807EF812BB0397E953309C3300C71B6B14EBD5C7D4BECFD58144ECC83E4F6A22B4E16CB6453015EACD889EE3247D83C56B2ACC9643299CCC60F6EFCE0C60FBEE215AF78C52B5EB179F3E6CD9B37F393C6A219BC80130263BBDD6EB7394F0C563C3FDBF21ECC035A446254999C75C925975C72C925AFFCD357FEE92BFF148BCB0B3D7B3DF32C8D80538B19729F035F1BF8DAC0D762BA3978799117792C348F78AEE376DC8EFBE4934F3EF9E493C8E02E3EB1F8C4E2132B0B2B0B2BD2FB086D0324B3DB0DBA4157F4A50BAAA0443348CA8450EC0FE1494CA6A0389554499578AA45F6D12C9925B39499CE4C67A699978B090B812E336F319D19392367E4B0A2B70FDB87EDC3881AF5949ED2AB5C5FE4FC507AD1301A46C3C9381927C3BA57381376A8329455555555EE5F84204B2215CBB4CC55117CB8ED444F6256D816014BC0E0C5A81815D19C405C14A648DFF00D1FF2FAEC24E47E15744117ACD00A2DC45CA1C0E9A10E7508B72DED223832F60CCF10DFE14EBA93EE24EE63665F665F46F8E7C8EFA2B80B7124E7E045C4B11ED4833ABB1C3EF3A49B8C3966E4742DC3322C26F7492116D4989552AB942E2646094C0D8815C88436B5A925133F194D4693312D2AE65DCF7833DE8C2C59A06F458E56DA7500C6C7710B66C12CE0ACB8200AF745F4A56B412DA80111E1AA628C03C7B8B23D55BA83B5B0E9EA4D576FBA1AAE17CF21F2CAB883C8B243FF992BC221531AB48376D0966E5440ADB4A7BD55A198C88C4C79661CC3311C4982202217C40B2AD6DAD086F636781BBC0DEE2BDC57B8AF40BA3FB5EFD652079CDA1A86A2FB359890E42CC5251B911119DE6E6FB7B75B9489DEADDFADDF2D8DC7F7F9FBFC7D3211004086522EF64099AD58D4429F4B0E0C15AECC97C67F2315A9D5DA5F727E3221E6CC9C9963ED2A266445D9281B6575BFEED7FDE63A739DB94EE0E54935A962D7CE9AB7F2BEA99AAA29EF01164EA80925427D2CC22075C313E6843921A031F639A127F40447788225B8CA556E381E8E87E3D21C883AD248EEB664948C12E839B20764ECCA46D928C3D96064E074317506D5A01A54D96D843AD4A14E9699A186159437C90717CDA25934C9B8621B9035F4A525A68434381C9BA10C15BBB332FEC5A77BF288261A18DDDCBF592BAD56DB7EB09E333D03A2E90DE76D6A53CBB94935B6A10C25594C01D8999A07F74F4F97C0C281111881B4EEF0233F12221546060E75950AF174ED353FD582D3148DA25144BF23593420178B18144916D636A7FC34E7A485AE788775877547FF1FF6FF61FF1F029BC1E2438E02C81A47073AD2D00DDD902701C71A33C68C31511D87B63651F3309292576E46CDA8296D1EA8F103CF12789E833F09FE2448A958FF414B1D706A6B182A44CDCF9B9F373FAF77E81D7A874C3170C3E0D5D4544DC9C481B8B9F754EFA9DE53B3DB66B7CD6E03ECD693EDC9F664311921321627EA477E24050C31152D808151100531C13F716C9EEFF91ECB4F66AC8C95914A4DE1B5A2EAB437DB9BEDCD6433D94C16342BA1141180C9511A97DF085D0B3A418EE1180E374E601EAC9C55D12FFA45600312A186511885E877E057FDAA5FB5F65A7BADBD580AC8C2653C1A8F249BCB451D7081388A28528DB6465BA3A2DB3C1A8E86F29EE52924FA19F7C7FD7181E5496C21D817EC0BF66138C511AA4845ABEF41F9818F82FB1F0BC7C255D2106075381E8C7933D3CC34A3E9683A9AD63DBA47F7A0A1A1C09B440D131748CDF89211B05CF6983FE68F317F184B104105DCC00D5C885AAC813428A594423617C95F293CC39DCA1A59231BE005952ED4F8E6AC9C9513A038D170C2A81815A30216319E16CBB33CCBC3530DC7BC5A12EB199EC18D1684F3EC1BBEE14BF38F442731BC9781C02F024B969AAAA9581538D01A71FF5A6BAD376CD8B061C306C13CB0E8B20CCB102915E9F455F7EB7E1D0B351C0BCE52F2C10DBFE14B6B108C98286715CDA2290D0AF144B1F868EC79008BBB1816C3E2CA0B575EB8F2C24135A8062FF4B4F50CB4B40E38B5350CD9BE98F2332C51070C372010AB6DDBB6CD1C6696C5C7E65CF291AC224D46126B64E38801CB712D4FCD1C55C7043A9452FFAAC292F25BE29048D482F596656FDC6D86AA7539F32A6E0FF101E7080B5EC11396B280BA7937EFE6213121E9C452500A4A52DE83CC2E6CCC1D73C7C03BE5C212C90A631140959D4CD14A22191C2725CF9F2BA1797B7E1E6424D12787BB5791C91109E08D3D03D80358C7D42C81F183582E9C21E50416128BAD895D2C102E6B72B13BE127813EE1BDF179F2F6B10E4EF4DDD89EE9998C8960D0939C7CE6933D83790F9C184A1E374A18DF77EEBB25CF464DD7748D7FD7B1BDD11315DB1B0AED50C540B84E6ADFADA511706A6B1877CB8946A29168049F8B962C7EA2E0DF02D82CA9922A2D3CBCF0F0C2C32B9F5CF9E4CA274174027D4948287BBC3DDE9E58F40969C94A50092A087B64C2651216DAA561C20AC2200CE0D411DD02DA1531CB8C9931334E9FD3E7F449440B607346CDA81951FC09ADD00A795AE435BE08D6CF0433C14C6FB3B7D9DB0483DA9C32A7CC291C4BCEAAAAAAAA2A71276253448D98E6DAAAADDACC760E1B61236C00904F3A18BC779F709F709F10FFF390FF90FF90F780F780F740F48EE81DD13B64113067CC1973FE59FFAC7F56DDA66E53B731790A51BB906888B32A2E7F8FB7C7DBC33D7324FE1BF546BD51392ECE10F71D5964D48253E30D2EE911387ACA9832A6C2BDE1DE70AFBBE42EB94BC2E24EB4A3678B292793B88A1A55A36A545CEC68341A8DA2E489DDAAB88A513DAA4759719A494C3262AEE11A2EF2D6808271DFB9B32FD0D55853908A59315733C74114448130C09B4ED3690227407C295E3163648C8C6BB9966BC919FA911FF910CB94C5280998F82DBFE5B782F1603C18979227A59412E81B891E71F9810E74006AA11ED0037A20786DF0DAE0B5381FB95378FE81BEC06512D2C3256D80A3A56B1969B9CB536A8556684987E00963C298E08526BB61E49E33C733C733C7A19BA68EABE3EAF8859EB79E79963AE0D4D63048F6076F0ADE14BC4956C728F708A2200AE06E65538A90A4857B392A4765E79073C839C4A412991C4982439466A98E53FAD4262A2FC56D2BADB44AB6A89349130518A44F84691155BCC641E3A0719073C0FAB03EAC0F9BEBCDF5E67A7D541FD5478D1EA3C7E811C7D9A7FA545FAC411BE57D0311B67EDA898AEC1FE266DFF00DDFA93A55A7CA710FBB1F8E5F19605FE53B79AEE7025296650A1D4B963EC44B07A0ED6B5FFB12BDC9C817A242B49AB32787CAC42540BBD2FE817492A5AE949B43F8A11FFAC203F094A73C14FC48969154BDA47946D5AA5AAB795C2A60C351644CA86733E72365E185A518045850C0E3455EB48650063E5F956F7EFA2E035615FE010A9310134B5A985E344A8207003627CC0655DD7ABFDEAFF7637B59C6A139A3155AA105BA190AA82446C4D515A36254E4C898AF37168527DA740A307EBB71BB71BB7C4289032645F255F019D225CAF2D1D86FEC37F673BA871B844018476554466558C91C9AEA3AA3335A5A6DAAFFA6FE9BFA6F177AC67AA65A5A86945ACC10FB7EF1F55F7CFD175FFFF0CD0FDFFCF0CDC8ED71F98A5075A87B0FA6D787DEF6D0DB1E7ADB57BEF295AF7CE52B60698275FCC05B1F78EB036F5DD8B5B06B61179C343B5716B4E389983F616D5EEEAE03478BF7A22A7CA0F740EF01E97484A68250B39ACE4DE7A6B9EF2F8A8ED0CB057D7FF139AA817B677A677A67A093CC851938058C03006171849EE7791EE79219C28D01C5F439C60DAA52186796F5C004C732933CF9B2F236B6E72E37926F26489905353902E6CE4B920DA5C584AC17A80334C7C1C2828604268D093A2F319D8A4BC8B89B9000ECD41F9759C70CC6F213C874B0980632300FA5D4AAEBE294048B92F2324E7684451B1106D9B972B11683CF8C07F032144F35B4CAC17EE0640A3E47A76DFC1723C3713657D6E2B942A7EA17BFF8C52F7EF18B5FF1F257BCFC152FE77ADF35AE1A854650B7663C86EE7BB22C4DC4479B76D36E22D245519338F2300CC310FBC46FFC252F79C94B5EF2129CDB859EBD9E7996E680538B19F28B70C3B15412C543D892B350F8013FF8EB0FFEFA83BF7EE5EF5CF93B57FECEA51FBBF463977EECE47B4FBEF7E47BC585E7BDBC97E7A981759462AE970A729232F7C92EC2499982643F602E6BE1F6003096AA1779486A47C134314C5B7099C8DD4A59112674AA03865B421DAD4B86290F8E0A55D7D80F6740F15D44C9B817220E9A7087324AE47A39839B6C7A281139B649B6444C529CB876197C6982A379CAE68CBBDCC1445C2B574730B244F605BFE01718EDE0DA71BE76463E04C4A6D220D425AF8CAE8CAE8C723B452441F8C56E5E04533DCFF33C8C3643B8D2B2108E969E287C9E642FF37B3E43AE7A8FB52C247EC31A1501E57FFDC2150950CC6E95EAC2E54C488D5C9211D009E77EDEF85D9325D912BCE8C4F6A892D8FA91AD1FD9FA91D4F57E2F9646C0A9C50CBD7BFFEEEFFEEEEFFEEEEF4E9D3A75EAD429B070995A852DF9A73E776EEEDCDCB9C71E7BECB1C71E7BD11FBCE80F5EF4078877FFE6F57FF3FABF793DD46BF9496357C4542CEE93CAC4AE58D71D8A57E04AA16C259D70D068813AFE4A1F1ED2BD422FA08B3F7CF1872FFEF0E0E1C1C38387B1A2E78A614C2B889EB9A217CE525C4229280525D67CE6389529577063E24A492E03D3A8A814C128EE645D5F81A9C9E94A27665E28D4ADBA55873366E298DC5A1217944C2145BA31CA5525AA44ABAD2413CE9EA95B9C7194AB1EF7C6BDF156BBD56EB51747164716475881995D29EEB538C46EB7DBED8A6C054669DC1D77C793942BA6E0C55C3539391666E1321E9C33373D947E4784A608D45C7FFA258B3F728A2C680A96323B514931B8AEEBBA886EB120606D7338D1C5C5C5C5C545F45AC61E70443C877886457E847A03E3697FC10B5EF08217BCE0E52F7FF9CB5FFE726895737A829B8870AF27E1CFE3DE4132969E462ED3E23EC4F815C896611886213A865DFF99EB3F73FD67D05FEB42CF5BCF544B73C0A9C50C13AE7AA37AA37A23C7BB3103FB9738A298C286CF0D9F1B3EA737EBCD7A33A615C97152E1502CD2F595AFFCE41250D6EF20C8348DA6D1C4E79C3996B53926C79C913372106234268D496352E2304B59CA8AF1511143AF37D79BEBCD8BCD8BCD8B256685A634B29807F4017D00CED59FF027FC0991D1476303566F2E45A5A8046D12E8FD3264202E16B19D177991547F2297292383AEAB34AA285CE528931D24B2B0229D5FD3355D63A28DC4E2A8E6C44822BE41FC4A8549D20000B943D47AE2C50C6722DC89DBC6DEA0F08C4AD6B22E6B29DA9131998826A2D5EEC87842C6D5B81AC7393360CBF80732CA1277528E565C0F570017A36254448698E348A1EF21CF5AD4455D942A6738DFBCCE6BC9C8FA35BFE6D7902C46A633DC1FEE0FF70BCEE19BBEE963FF18498C8C1BB8811B30E50AF960AFEA553DA9AE96C40A780CE3D178342E2349513BABA3EB45BDA817754BB7744BEE17EE424FD413F58499301366987A86F221A02F5828A3E46FEB255B2FD97A89C89244611446D29B19CBA37A580F2591212221DCD7CBD39E969CBA6C6F84466844508ECD46D928ABB22AABB250B7962686793FEFE7BDD779AFF35E77A167AC67B699954AA552A95CE8D348ED47C51EBBEAB1AB1EBB0AB1EFF24F2EFFE4F24FFAD7F9D7F9D7A97BD43DEA1ED9E8467ADDA3EE51F7585FB0BE607D61E02B035F19F88AF75AEFB5DE6BBFBEFEEBEBBFBEFE89E73DF1BC279E175D1F5D1F5DAF6FD437EA1B59AE0F3B636019936F4CCEF0467DA3BE115BE228C6E78CCF199FC34C280032C1D4F2FA82F505EB0BDC4A0F914AF6BEEC7DD9FB868E0C1D193A32F80F83FF30F80FCECF393FE7FC5CE64B992F65BE94BB2F775FEE3EECD3BCC9BCC9BCC9FF94FF29FF532CE5D8FDCBEE5F76FF52223608737E3AFC74F8696C02F25AFB55ED57B55FE55EEB5EEB5E2B91EB75FE75FE7512B151D191BE57DFABEF95621E5424D7ADBA55E778CBFC9CF939F373C6BDC6BDC6BDD10DD10DD10DEA067583BA41E0DF9BCC9BCC9B840EF359F559F559D9E78DFA467DA38C3CAA3631E6F7A87BD43D02AEE2AC3E157C2AF814F6CCE90639AB9F317FC6FC1980DBB823D243F70BF617EC2F707650521237A81BD40DD1EBA2D745AF933169B55AAD16C604771F23E3BDC67B8DF79AE0D3C1A7834F4BECFBEAEEABBBAF16D8F653FEA7FC4F05D705D705D7718C2BF125F6403032B614BD2A38E6D7FAAFF55FCB090EEC139F738F6A1C17FB641E7E744F744F740FBE157E865EAF7BFA95CC61AF9152514AC50BF0F00C9FAFD40AC765A447E0051CF333E167C2CFA0DB18B2C83DBD3DBD3DBDC075701F6599484922E326E326E3263C45D8033EC17FC3EBC3EB43794EF084E0F9C17D97DFE08DEA467523F771C22F68F8CDC36F1E7EF3859EB79EA996E6805313C3740091F718E04C59C058EFDBF31860379E92B85293E1C4D8D7886E93E47326B9A3B10A602A7749D613B394073ED009130099A52148425298BD09CA124CA6E0BC9B77F33256F41225292845B3E614A24F8E8D68FF7CB65C6824C53F047A4BD572E2DCF873D6FE8D7577A63311DE2F758DE53EC4B114003A2311E82D698286D930637DA2844644F5ACACE71C2B28E2D61A74DF63FD7A13BD7BF5794CEE72A2BA3759CBCB7BE6F364679F849759CF59EE0E6865F89C9E797E02D7603324DA65CA1DE7FA60AEA2A6271947C1E2667EE7FCCEF99D9C44E05402A709646C89DBCF79621E797EF6627B86514AE542CF5BCF6C4B21E8D4C440089AFFE2FC17E7BFD87A77EBDDAD77C718B6EC8AA2300AE3120D045D3EF1EE27DEFDC4BBD18C41B24A35B366D6303D019A63610168F7604BC9AE35ADA6D5E40209AEA1C4B7243EA6C94B624DDFF77DD1DD55536A4A4DC9D4039DACF5D67A6BBDF4C13D6A1E358F72560F7A5EA23D14866118628A01E817EC09F60452470B6D26743E86CE143493513F2A6060392C876557B9CA553C218A1A73D1281A45E810B99EEBB91E53BAA0781563232F054BC1124652AE68BFDAAF04389589727FB43FDA0F7413E36317EDA25D141D25808D810A5480F2215E46488F295A8E60CF92413FD073A0E700BB61FD51FD51FD51269761ACC07F464197D7EBF57ABD9DDE4E6FA7B7556D555BD5EE9EEE9EEE1E0199F32AAFF2ACB1CC7C78212B79BEE77BEC900402254D34C0E92221097E72599775995315781E64F9C2BD7D0095230181C67CB823DAD5AE0ECCC00C4CB365B6CC965ED6CB7A994952EE843BE14E182BC68AB182E70763CE796866EFA37B349A4B7102C59C37E7CD79B54FED53FBF8590553DA3C681E340F4AFA86C4C47094766FBBB7DD7BFACAD3579EBE72FE95F3AF9C7FE5A01ED4835AD80965B36C96D1D3E97C891E2C9BCC3173CC1C93E7A4A44B5AD8F5B1E51A57E75BCA52D6FC25F397CC5F824C764AC5FA8F591A01A72606EAC7FA63EB8FAD3FC60DF898219C8C3392D67FA8FF50FFA18D1B376EDCB811A427CEE9F2F4C79302736839CFCA7109B6647E29AFD0F93D17C9304B56C41D5BAD56ABC584A0A423116F400A537C9E32E14E3813CE8494F75094C08E6A0D252932EC7F8DE80D46855E72D5288649286D71DCCC23C071339FE1F9C8743C86F239C5C7B24C99CC4E662771ED426D9BEE99EE99863AF1C0A181430387F031C84120B50D1E193C3278049F30E14E46950A7BF8E8B1B22240BBB42864F6321017E64E0B349D286DE2B836D9EF28C9D916D89CA066EE2C041219971E717CCFCF8CD0E26A4FBF242D92CD66B3595962D2138EBD014FE2D89DCF10E7333F3F3F3F3F8FB411FF5A45228618DD229042880E9E0759F82291C1BFB2F1A75FCC97C6F30000FC89279E78E289273002177A0E7BE6591A01A72676E29613B79CB8E5F1373CFE86C7DFD0DED6DED6DEC63F51519EC0841546611426D9B328B979E081071E78E08147DFFEE8DB1F7DBBB8DB822EE882D7F13A5E07C7E2C2066E82264CDA9257F244A588F38E5026C227A07DC572A5645C3884F7580A0C6F1DDE3ABC75E3F18DC7371E879370C8845455F36A5E0D5A4538DB556F19F9910F355DE91253348B66118DD844E002DD76433FF4C3602C180BC6B881A38C582B6A452D3DAEC7F5383498000622FE96088FD8D1A0A165AA996AA60A952E3E163396CDD00C4DE92F644FDA93F6A42C050033D6755DCBF42AC42B04C2581E0134AE9935B396C96572991C6AA0912FEFFF58FFC7FA3F06579AFDDDECEF667F975D8E7789778977091A14C2190473C15C30E7EFF477FA3BE1FC16AD456BD1C2F3D3D9D5D9D5D925DA6488E0E9E902BA20B22498FCD1437ABFB7DFDB0F8717534CDBABF6AABD828E8C1963C69840BE5DDDD55DE004B2E5A81A55D29DDA5836968D658C063F2776D7EEDA5DE0193256637A4C8F31708DFF426A034DEC41F2D28E76B4308705DD61D14D618569BD2A5402F534C62162003B9CEEB49ED6D3B20CF5422FF48486662A53895E3496CB17DD79D19D17DD190D4543D110A87C2C2F2A09858C99313392AA2887E5B08C7A5F59A88D456351FC4AD12319A9A7BAAAAB3A1723613985A5F61A49A5D4BE034B23E0D4C4E42744FAC60C2FF3CF98B7912D2B5125AA60720460BB462FD8442E9621E564549454EEE58A5EFE2FAB49C72E890A9C18C466784D8E4511A7E4C6A8F807D34D3276975993642864CF895C32B37F2586469724CE02520189E86D51BC92EC220C6729A5475A6BAD85594D8ACDC23DA6F858B8CDA45AC5A54A3C269CFD153193A9DC546E4ABACFD6ADBA55679A1B7747660107160691469074AFA5191F3F09B4A892A78B623E8E2C63CF03E125FC44C55E5CD045F785254138BFCB7733E620A92A3786B5A06A99D80FC9A79DC79CDFB36008CBD4241D1BD7130B431B71B9DB75BB6E2C25C46C04FA9D9E2FE3CB3C0F7EDEB82129F318A43FF4983BE68A1CCD859EC39E799646C0A989212EDCF8958D5FD9F895D6B75ADF6A7DCB1BF146BC9158BC859F2B3538E3E296733BCEED38B763F9BEE5FB96EFC3EA181950019F3DD3333D647C25238BAEA5A6611A264F73B16E36101008833008EDBA5DB7EBE6A439694E42AB5622836A580D858405DD66D6824653425455F6F5F6F5F6F59A03E6803920CE03EE246B65ADAC655BB665A3C7B014A254CDAA5995F6B9A032D5744DD7A40C0395BE5429EBB6DDB6DB16618DA25FF48B4EC9293952C1891229B843A9761D7147DC11E9D88A0CE29E704FB84734B64683D16094B5ABE0E4E0D858074A9A67189111198046DD4577D15DECEDF6767BBBB66FFBB6887B084450324B6689651CB8E8C89AB6A6AD69E7A873D439EA240CDBC815358DA6D1F427FD497F12029C389F4E4FA7A7D3D3CAB432AD8CF498BA2D735BE6B6DEDB7A6FEBBDAD7BA07BA07BC0DBE9EDF47662B9863344DF59601B280D826BE4CC2B46209A8AA6A22959AE65544665D093989D1C3B3076C0C9AEC30265E7BDBC975F29AE14578A28103257CC157345B2E913F6843D21AD1E117DEA48471AB12F3A2B07FB83FDC17E140B59A3D6A8356AEFB7F7DBFB4563AB64948C12500AD129CB44992813E4825C9073336EC6CD881A73D5AFFA92D4C0B2000A6EE87D248B031DE840B76BED5ABB76E2C48913274EDC7FFFFDF7DF7FFF7069B8342CD95FEE94C5D0BDB4A74459DD4438114EE03937BA46D7E80AEE42822DE81385885FF801CA52962C5B718680A38391602418492B83BF734B23E0D4C40046816E83F7B1099AD6C20269521F156CC3119E3439207EB23848CE8FD29E39EFCB7100AFD69379E835F2A6D57FFDE26957028DBA5137EAC24CD65A6B21ADC4DAFC7194C90E8F843258C959AA7ED1CE21088220109EF08435614DF064DA25132017421CC5B0181645DBB91495A29274024EE0109C1A1087DA301B66E3DF66AA332736F639757FC2CF8837C4000080004944415427728F48E6508E48FBE73E513159478A9B63B9676E75400536D87F52678A130A8C73B01C29FF979F04CEFD2733BEBCD4E3E78AA52863D1ED79D4AA3976E4E89C23D4645E59285A14AFE3B8C22427B21847DBB1E2A8E49E41C8C2C20B7AEC8C57D16F939F6DC65DD6782AF8DE253E97ABA645B93012D2CE48DFA5A50E3835314C67575F7DF5D5575FBD69D3A64D9B36F5F7F7F7F7F72337C9F128836632E1D6CC9A59C31400A51E8E6293595B71D290B0A7098BB59D59CC2139D532A58B758B702DBC256217E42F1197A3A36D4C4091B491650A466EB5E817FD62D2650AA9A7101482427B7F7B7F7BFFFCAEF95DF3BBB00DA2341C1D655D880F9025054F98B7872D2D2D2D2D2DB15E1243BE820D34CC86D9000D8A79DAD81EC06FDF81BE037D07B0908AD19A083C94A611A4B4C5FA47E2567157C19245E11381997207013213258D4795DD336B8DC1A0DACD343DD4B64242122E07F70ECF21FA6BC5EE23193F4BCC25E64F44AEB2D56AB55A2C57897B8A270A7B164571C7711C078915DC356CCFFAC94CE3627728D42782B2B1F890789A58D30CDD33608EBD49FE1BE43B82DF791981A3A0EEE0E4C993274F9E8C2D11AAAAAAAA9CF79504444DD7744DC45BB0182521553E0A7335F899C13DC213884F307A177A267B2659EA80538B190BD789D3A59F5C3226E67C30A65A4C5E1C55C4A261FE2ED7FE52FC1AEB8AA394FA36473A51FB9B8C9539E666890F89991029C2289E3B1F4338592509E3485472604110AC3609E07857E436313E0937262297811FF8818878EC6BEF6BEF039D0D0E5BB001AE21A68955226F4448A086E12A1311244FA012B5B0A1ED20E50865F2C5E7899C776C7C8819905CA2B18367B6732CEE4C5400CB7342B8058B92F2E71C0DB3D637DCB6E4A7273393994938B964AD39BBEA58144E4FAF6C4371276FB9467F62EAE885837031158F49ACBB30677FB93A9996148C28F028C562E564DF6E1EDB44B53A77C54ECE09B13B424818DF77342F1135F2D4BE634BB5A0535BC316762EEC5CD8F9E06F3CF81B0FFEC6A3373F7AF3A3372F8C2C8C2C8C2063C7402B934D304D9C3E73FACCE9330F3FFCF0C30F3F8CB53956E5A2794BC496587C0000B36ED6CDBA107394524A61D24CC6D3ECC239438998494843B95C2E97DBB061C3860D1B2EBBECB2CB2EBB0C5D8F10D3230E06675572724433E1688015AC2426DEDFDDDFDDBFB46769CFD21EBCE72EBC70A592BD6B669A99262A8F1123622411EF72C527C6877586D1C109F122461831313E414C03F7CFDD96E014C1CDC6D125BAAA1B75A39E842571A5D80623262546077A0EF41C407D279C198E8BEF4AB6184BAB8AAE68410B16772DEE5ADC75EA7DA7DE77EA7D737373737373F804578D9A5130A5E7B6CF6D9FDB0EBD685C3B9E2EA6EC891C0AF753021240EE161118B4C7B94D02D3A992742D7684C06CF009E25DE94D04701875E1A5B0144A130E8C808C15752EB21226880E3D99F8045724FA5F63DDB1EE183012B02844C61575F368EE49CACC92CD4D3423C1D372D9C72FFBF8651FBFE69A6BAEB9E69A2D776FB97BCBDDBC88E4989BA979784EB067C4FAA28346691A5ED2E179DE72D796BBB6DCF58A57BCE215AF7845EFC1DE83BD072FF4BCF5CCB334024E6D0DC344F9D4534F3DF5D453B1AA59221C499521E50E319DADBB7DDDEDEB6EC77420AA554481497253D7383C4D2E0C35630A9317316F41B0E2DAE5E4B1927D8DC479D074CC9332F7DC65208E19B331E108E2D6B274A21478500DA5141AF9BEEFFBC25F1DEB8E75C762CC5BD26392CE4BE4627911136BC04E8D11B9C392385ABA523E4F1100A192152676C97169C925842F6A860815B0D8528CC4FD392F98CC4C3360CBF1223BCE6416F97CA42A8EE1640F094BBA615EFC25A349CEDA2633C4FCC4268527054CA65165B09A472086009D27724DE69E595D0BBF38B418B9E843177DE8A20FC5F603BC844AD718CD8A45CCC47FE611632E4212134AED3F66290B3AB5350C110F1C954CF7E05262D58C36EF10A0575AC57F89ACA034979FCBCFE5AD256BC95A42AC806951A67ED4FB968DB25166090E5684E6480240225C6F500B6A418D414889546A612DACA1DE11EB7DF4FD65401286EF4A76B0E015BC82EAAAAEEABA2DB7E5B6784A0AF6067B83BD6026B777B577B577C1E5E0DAB9A699336122D361188661B855B7EA56C1710DF7867BC3BDBCAC418B7BA9DDD4A10EA551A3884B684F7B1ACB8B9EA33D477B8E8AF3EEB81DB7C32DED44014A29A514E72911230E8C0D8C0D8C492C5E75AA4E95DD3393C570A5A88736F6187B8C3DF6903D640FA93D6A8FDA131332DC65EC3276F12203D17FEB4CEB4CEB4C6B5B6B5B6B9BBBE2AEB82BCA55AE7211970FB407DA036DAFDFEBF7FA31FED68035600D740E740E740E20CF8A6507962618436E1FC9E54FE601F3807900FC5BF0B1A108862A5B718D766447B6549683654D6072DFBABE757DEB04163E681E340F72172364F1715C7CD76B780DAFC14BA84C980933219E43A844F12F82170A4C37C3689B05B360162413DC749A4ED31AB146AC11F09CB9A182C0DA4A2BAD10E50B379B9C7AF447D11F457FA4FEB7FADFEA7FE3E8DCA2230641E3DCE08627D4849A603572D9B2A66A6A9568498E1991717467746774A7F709EF13DE272EF48CF54CB5D401A7B68671256B4C948E7ABCC092FC49381206E8F49C9ED373AAADDAAA2D13A21BB991ABC6D4981A637850DE17744117B4A52D6D31E5CA9831668C19B36936CD264A6E92E42C9904EBAAAE043CB42FB32FB32F438FA6180C6B294B59C9884D32A05EE8851E67462110C119628926219708590300D1255DD2A558CC0115418A7D25AAA04828C9C215E7440A4AFAB03EAC0F1BD3C6B4316DF9966FF9722D9EF2948711832BE5060C724510B9440617F2845848D1C41A630EE7837C90EF0E7407BA039DC39DC39DC3122F7674477720702159F00577C15D50BBD56EB5DB1D7547DDD1EE5C77AE3B0747EEEE75F7BA7B637CEFF1703C1C17DADC82B9602E8842F25E63AFB157A2BAB6D5B6DA7EDDAFFBABACE04C948932901795A8D7D6B6B6310ED6A2B5682DF288057855836A5045E19CC4B896B6B4E474E1488CA3C651E3A8A439DA56DB6ACB682FEB65BD2CB95BF405B294A5E45E081E50F7EBBED4435B25AB6495D00F4AA2795BD96AB538AAA11BBA118B4AC15440955B222BAC3AAAA33A10DA948C6F566555569E99A22AAAA214080145381C1E0E0FCB7F5FA65EA65EC64FA938DD866AA8462C8A455F2CDC59A5955E8D77B9BA01DBD3529BF790329FBF174B1D706A6B9838AABFD17FA3FF260679812959D4455D140213AA82138D0B2FAB5C56B9ACD2F960E7839D0FFAEFF5DFEBBF1793C8D2EEA5DD4BBB99178AEA4F392ED1A6500AC5795FA68621C68D155428A5564964D999EC4C76A6FF78FFF1FEE3FD1FEFFF78FFC725CB9B0060636C5230458B61312CBAE7DC73EEB9703E9C0FE7836DC1B6609BC4853BBD9DDECE603E980FE6B137BB6DB7EDB6316E8C1BE3DDB01B7645230C6E098A4B1927E3641C96031CAC0E5607AB17652ECA5C9491D1FEB8FEB8FEB890C23E1A7D34FA287389ED0FD91FB23F84DA5C960CF407FC017F00E72FDCDA8B9C8B9C8B9CADCE56676BECEAFA82BEA00F08818000593B6B67A366D48C9AA870ED90492B05C8830CEA413D88DC79B823DC11EEE0D81A6782ACF6D96D67B79DDD86F79DC73B8F771EF7DFE7BFCF7F1F9392BC516FD41B85B29544A57927EFE483C960329884DF1CD2437A48604F4499D213F7A873D4398AA40383C6FDADFE567F4B8E7B47E78ECE1DC25728F8055F9208612ECC853971D2192B6365068607860786333D999E4C0F5CA933EE8C3BE3E15438154E19AEE11A6E30100C040382D094C25258C27D11F5343BB2235B164C99301366D01C53968C13C68431115B441A866118413DA80775FE1560099219C98C64469C73CE39E71C4629AA46D5A88A9A63D9BF36B4216075A842152A662323B3BEF4934B3FB9F493E08D2773DEF2FC6081688446280917C4BBC67E63BFB11F7B965F25951D8A56DA50662833B4E1791B9EB7E179C37F30FC07C37F70A167AC67AAA524ACD4D630741BBDEFE7EEFBB9FB7EEEE4AD276F3D792BA846B19818861C30775FA1BCDA89F79C78CF89F7806002B980B31F38FB81B31F60BA0D6782B98213D173DFC1BE837D07F11E592E80757CB69CC3034C8DF81BC5545BB76EDDBA752B2068D68D629D648EF845DF27EFE65DD18E1641C48257F00AAC2A8C4990E9579C07E50C31179970BE19BAD9382B9C0F78A4325D52ADAD2C44269C096782D5B2B816538A88708DA8D2A6E847CEAAE817FD224837528842D95F1492817D8D6977707070707010A39799CA4C65A6B025E7C2B17F38BF331F38F381331F00CD0AE43266F372DCCF2DEB4138C25381FFC2216184F9A963FD643C151861EC874BC5F83D3B72293A320CC330500485FDC055CBB700FE436F9C9A2B70391003CB02E323174B2552825E10DF9B1782DC2D1BEF3186E86E84A2AC242191531EF82E17DAA18CF095FFE795FFE795FF67A07FA07FA01F77194F05D011309699EB2EE549155DD1153CE78CD3701D049E01B43EFCFF915DE819EB996A69049CDA1A86091A3F36F371F371F3F1E4360252955449ADCA3840218B0A1586568656865686D4901A52CBFFB4FC4FCBFF345B9DADCE5673955C2557F19A5ED36B42794A0A780A51212AB0FCA1E4C6C0E99DCE4C67A693F5BE924B0384EB188E218CD39E4B7A2EE9B904112100492FF4424F6A675BB7B66E6DDD1A2BE601C5E96C7036382BCE18E282DBDC6DEE36F78C7BC63D2351CB2EBD4BEF622E2ECE4732C18028A9372D26CDBE7D7DFBFAF6614BE9955B6BD55A35E336E336E336B8017BD15EB41763B96DF4E29D74269D49285865CC8C99314DDBB44D1B3A50EC620315A84071B240BE5B336B662D7B207B207BC039E81C740E0AADCCF22CCF42A67371F7E2EEC5DD2BBB5676ADEC62781F51BB356BCD5AB34CF592239682525012E7B17D7EFBFCF63367CE9C397366E5A995A7569ED2B7E9DBF46DCE2E6797B34BAED1B77D5B962652E4632B5BD992936E448DA8C1A806E25D01E727A3C96812E888E483EB66DDACF70EF70EF70E73469C1D392FB0B0C890C87863B831DC18F687FD61BFDBEBF6BABD32F233D68C35130D4403D14038100E8403D1C1E860745058D683FEA03F2824AC9CCAA99C90FE668C1963461CF3849ED0130C2C4BBC5ED7755D8F8D6D2368040DC0F2422ACC66B3D96CA7D169741A402CC44D5AA1155ACA518E7244591A0ACF4DB369367B8FF71EEF3DBE7EFDFAF5EBD7F7F7F5F7F5F7019C02742C770A77BCE015BC02AAC9E5B9458E04422585B0101698FF0C85382C07B18000371EDA79EA0E7587BAE342CF58CF544B1D706A6B98D48CFEADF1B7C6DFF2E712E3065110052061B11B4E6A300911A96ED40D894DAD5FB77EDDFA75E4D224BB56880A51618DEEAD6C00AB1359D25855226591259FB7D5DA6A6DC5197ACA539E929E3663EE983B26ABFE922EE9D5E607285F713DD7138633F2A0C8F2CAFB825FF00B5CCF2A4B10A28FA1F11FA4FED0B842242032AD4C2B83C5013E414B06017B27D4849A403617DBE0133803110F714CC77420E72919D086D5B01A803463195FC4B55C58656A538BBE15BB37C9E322E6DFEE6E77B7435518CED2ED73FBDC3E7BCC1EB3C70056FBAEEFFA6EACDEB41015A202844B931ACB3256137A424F8085C685671C47A2299E8CB06998C6AABA16555733D2208A63DAD29616CE33674CE9EA623CE7513DAA47252E8F54A422B016849DD08A5A514BF9CA57BEC0EFC83723035A53355543AE17D43940F7B18ED41867E2E19B96699931BD3039C340052A40930FF01E544BB5544BAE14B17527EA4452F814CB2BA309238D0F9629032F1B78D9C0CBD427D427D42718918ABD4FB0A3F1D4C5924DF4CB92768D74BFB849E5859EAB9ED9963AE0D4D630512F82A4FEDBADB75B6FE7585332464813255A08F0A48FD88B0152D45C8ABB82DB3042239436EF811118415C95A96135AC46AC67118A408A4131280A91C7311D53005EB8F9BE0D7D1BFA36A04D1EE833CBA3CBA3CBA312FDECF677FBBB31D9C994871C1E026416F92B8485B02014A18C91313250A2469426937B5DD7B53054D1A906C21A42BC2A46C5A808A20D5C0BDC27327912E3922E12A6D1DEC1DEC1DEC1BE3BFBEEECBB1323661DB38E59C764B411972037DCB49B769399EA92235F6FAE37D71B1B8D8DC64663C818328684F5DD13F6843D0C304A53F71DF33BE677883ED74A77A5BB023566BBCFEEB3FBCC1EB3C7EC41E76326E5856EE8862EA2377FD95FF69725540315EE9C3AA7CE7945AFE815A50F74D6C81A5973C69C3167105739A6633AE23C7A6EEFB9BDE7762C4D84D6D4B01A56C33FE01FF00FC4DC522ECA45AB79D64963D298742CC7722C75401D5007A46617A0F45877AC2B75D252598BE5239C25BA08234EED981DB39319CF8C6764491436C366D8E4122973DA9C36A78D43C621E390C49460F54F7953DE14D300E5E5588EE570299D9C73D3681A72D7A0260DE44614CDC085DE69EDB4761A2DA365B462ED3851E05435AA46156388D4CC96176E79E196175EF6CACB5E79D92BB1A5B84F6476A1F5868405844EFB8C3EA38F3B6271B11C8B6C7069DFBAA3EB8EAE3BFAFC3F7FFE9F3FFFCF93C9A0D4BE5B4BEB80533BBF61757C3EB5D8840A34BB5E8E8639E261A18C6487D435040DC845B1A695E408398AA22887759BA5BF6FDECFFB799E8E63F96C5229E2C09B59A9BC7FAE49657A117F3736EDA23E35D9AB87DE7396974B9898A79DE4A6E2EE20C317EB4734E94C3AA2FD84CC5FEC4E111F9BB3B949C563293C43310CB7674FC652E7E976C535B24C0A4BEA75B3D403E78CF949E07C2A679493771F6E89BBED8A6616E5623947CBCF618C934FE719933EA52502F77A6261D41872C3FDBE58A92DC1E48F3D75ACA6AE94FA761CCCE3D3B01A56432460A1B646FA748C76B0EE15FF9619B54A0A5232C284E70A59E40B3D3D3D1B2C8D80535BC3A495FA81BE037D07623F60A5D4BF92A6C34F97265F80AE5858E3735BDBDAD69820868F0D1F1B3E86C80C9B2F6616338B199992A68C29634A2650327C17EE045527887A65826AE886963A60C95B4351EBB07FD83FDCD9DBD9DBD9CB0DC3637077A2D5B9B8C3496BD292D85DB2BC87D421750851ACDFEBF7FABD02B1668DAC9145790CBB58213D1DF00FF8076214242332A2557012EEBCA66AAAC6794A485182852BF13122C5E9EC74761AB5AA224572247324738465499033768FBA47DDA3D88F50DB1A7EC36FA04B315C697BB1BDD85E1495E376ABDD6A7BFBBC7DDE3E3E37E45CDD2977CA9D8AB56544F65199CA94CC373AE982C7EB65BDAC97C5BDEBDA5DBB6B4B7F62725D5C8D2D2363477664DB3D768FDD631E320F9987642195E03023DBAA0FE8035A2050718D9669991693DDB2E56C395B1E3C327864F0888C03120D094115E7B073D839EC0EB803EE8077D83BEC1DF6FABC3EAF8F053DEC9C9DB325E3AB66D48C9A8981F987C3C3E16179BAA6D5B49A1677EE68473BFCA425C52F51E92B63B83BB33BB33B339799CBCC7547BA23DD11F45F923D5BCA52AB0ADB4DA7E934878E0E1D1D3A3A70CDC03503D7C8FEF1AAA99A5A25EBE950879ADB7BB0BC8C8C21E97E4B9D3DE85793C6A43189C50A4879BCA44BED7BB1D401A7765E6331876409FF798D625F990EA0167BA0F740EF81D64C6BA625BC534CFDCBB5E5DA722DAC8495B0826C5CACDC88A25EC3322CC3E27D9E4F11371C0C07C3C1EE7477BA3BCD9035E2C8585E99225400E01C9D0825276365AC0C32A0C86522632713F1849A50D2E3562851A4DF2B255BC8E72AA59442B339D9BEAEEA4A9A4F600111D3EAAA5B75ABEEF43BFD4E3F161C8847A5D95CC6C81819D0A998D5CC519438305C7737EC865D64BBBDAED7F5A4094492D98EBBC0A886A020A8706DE8866EC434C023333223B5A256D40A4790C2F87522277292316E0C1B901D295399A8D335C8E4BF58E405511005DAD0863662CAD28C37501F27DC5310D324126D1A4DA309E0579E1CADB5D6027D076660065205EE066EE04A5E195B9ADA5C1DDA986A159E9986D130A4065D9CA5A497E9FC55A45601025EC8CAB5ECD7FBF57E71D5737A4ECF194BC692B1240D37D9D0D0B3CFEAB3FA7AAFE8BDA2F70A160AE5AE4772A79E2EF15D5D2E2089E0877EE84B738E8A51312AD272110926FA2D5B53D694352511F627D427542ABEF17DB0D401A7B686094FB8D56AB55ABC5266313C595957C24A182B3D8AED88A6E9E1E1E1E1E1E1BE2BFAAEE8BB025BBA37BB37BB37C76061708629EF0B20D19EB2A76CE9F20B110F014BD193958839C253EDF57BFD5ED6F505E185014399F29ABAA99B60C940E0429C1FDAC9134429A523EBBC75DE3A01664B51295A6D2DB7496D529BD431754C1DD3C7F5717D5CA0BCBBD5DDEA6E16FFD397EA4BF5A5C66F19BF65FC96F53CEB79D6F3AC8F5A1FB53EAA2E5597AA4BF5317D4C1F1348B3D7EEB57B1197601120749B6C369BCDF61DEA3BD47708C527D9A3D9A3D9A3320ED9201B64C16A96334449523B6A476D086878CBDEB2B70CB90C44C9420A234813D96EC47C70FF0268DB966DD9BCA410F87A24180946C485A3BAB7E3749C8E9ED4937A12F72593CBE432D26B289BCBE6B2B9A41B534DD5544D292A6B669A99A6488B6CD01BF406EC5FCEB9E9353DD9D2E9757A9D5EE9CED4B01B764358BBE8257567786778272AB9BB07BB07BB073BB94EAE93C3B31174836ED0CD05B92027DD8DC0D3B6F376DECEAB7ED5AFFA390B2BF0724667B46440252287D33DA00EA803D174341D4DC7E427E91A051DA9F935BF064404FB91E773D95EB6979D1DCE0E67873CA5799DD7F9E4EF0B8BB64D7FBCE98F37FD3138C9B1F23343192A265623256A0DDDD00D91954599131CB66DD886FC2EF07B019E84A87760D3C0A6814DC3C7878F0F1FBFD0F3D3B3C752079CDA1AC61AC812038DA8113522FFA6DCB010AF48D129B90DAFA3F193C69E7B4FF49EE83D21AAD1609F365443C5326A56AFD56BF5723C84E90F310DE7D5A4EC27EB67FD2C0A4810B38AD81EC5B5E2CC50C6632A53991C73CBD1A7ED697B9A232A6939D0E7F7F97D5E8FD7E3F5443D514FD4231D8D50F56B2B5BD91C89C2FDE01C209A28A02BE0538C8FA10C65C4BE656A530B2F5AF2E88DA01134989E86321273CA9C32A77892158DB086D9301BA0F008CFBCA55BBA95841FA52067215C081792F945E99D9C313366BCF61A35C4D8CFBE605F20E555E244F7A97D6A9FE9999EE905E3C178308EA592FCF7A03AA80E1A3D468FD1239C6DB837ADB4D2E03F8B1128CAECE2B01136C2C61ADAC8781A4173C372C7D296B64427BCD7EC35E559622C47EFD57BF55E2CD744274B29A554644556648954059C195C2FEE0EEE1AE5B045B811690B6D686335D6442531CA81909B41DE3AD0810EC0A61635AB6ED80DBB200642E653A2613860BE3B503D6B580DABD1F3E73D7FDEF3E7EA25EA25EA259C12923B82DFA9B0FEE8EACE8369C9EFBDA88AAAC8523082B25CAA2FD597625979A167A96783A5421CA9AD6170C0F7DD77DF7DF7DD77FF5BEF7FEBFD6F5DDEBDBC7B79378B57C41AB913512B093E639FC98912CCE4476E7EE4E6476E668D68B804513FEEE9E9E9E9615616B6049F99E312C46110EE40B4CDED194434C3B22DDB42F904FE8B29466A6DA9570CA67E8EA504C845F1125C5D292A4525916E404382425008443681971D4C5F3A2F8C9F20CE08044D9D70D073061418A83AE33D538D703EE8528C38B835DA1A6D8D425E03621710CA40B52E3AF0407A02A30426B950BA40082325327181E5B01C96B95D04EE08F7356289095C17F6837BD47FB0FF60FF4191C8F05CCFF5B8B70F83F02C6D9124F761E439838E7D4A47ACA9DC546E0AD421790ED146A2149482924786E7A7BDB7BDB7BD17A307556A5C17E74A990E864F644C104F53CE581A6C10B58DEB71CF9793067F1B75D550B6624913AE1147EB856BFFEADABFBAF6AF2EFDD8A51FBBF463F2BB23089AC17F6E4022E70CC482B6C199E3F91FBE63F88EE13B9EF7BCE73DEF79CFDBBC79F3E6CD9B81BB5CE8F9E9D963290B3AB5F39A483342FD3891D95D03704E1AF51C4D76C2C1F48AA8028528223148FC5296DD48B25593D9385EB333E5076290203171EB7829B522A8997B0149C7A744075CBC4F76CFE54F380397EC9FBAC64B29F56D521B3A13FFDBAC636C0F81408A17B9604CCE967A1E47A5A75F426EA2450C4C4680451CCB8917696233441FABCF269145E60F738A018808EE0E3737E40C3433B1110D036A8EB958DC53C4CAA4839DEC8CCB39722119019F2017156BFE016E3315119DAF23D31A0C6A36EE408CE787817718F3AEF929C2F68433F1D17186B1DF177734FAB79F37E23C2797C878A2A42528B9E7D4BE5F963AE0D4D630ACC7213F894F622522643A61B116F7B0A483A9AAAAAA226E43FBC24D776EBA73D39D9BEFDA7CD7E6BB2074C75D54E198F11E9425FEAFE8E84E66263393104D047F5B1CFA6476323B89A817195371B755A36A08748CC843A2106AAEC7BD75118B4B3486DC241610094E2FDC36C7854C775A83434EC68546E208A90521D7E0621B960914901F6A4A93D9C9AC284609A84ED13CC761C902187193A6655A269FA7449CD49812229DC2826ED80DBBC1AC75E47A31E6887AE5F39EDE9EDE1EDCA9A1234347868E40BF09B9468C334FFA92F7ED76BBDD2EDEC3DD620FEBEE78FAB5910C5DB00441A13B85BB2988426F6F6F6F2FB0046C89080F12A13871BC078F1A0A50FCB9E4E0814050815CAC48899E52A6DAF1F6B1D69C1093C1C211CC76DA0347AB52354ED292BCA488C5BE3402D26AB3149482526C4189455BDDA81B2277C36382C5EBF9660C2C52591B3CB5EFC452083AB5350C40E217BEF0852F7CE10B8F3FFEF8E38F3F2ED2F660CC5286989D41B26238E960D81963FA9E5F985F985FC0540888F8ECECD9D9B3B380E09021E6F53EBE0B984EA2B452580A4BA011A113EA860D1B366CD8C0D1304FE8EC78381262B90FCE07737F21A988A5E68CC21507A505EE1C3AD2E8FC43E3232DFC30C1D11419ABCBE45671886FA8C408D3BDB881437D87FA0E0D1C1A383470086E8F235138FEA53D4B7B96F62CEE5ADCB5B80BE389CFA1D87CFA7DA7DF77FA7D0B230B230B23DCDE2E260F623BB663C3914B133ACC1894E367C72C8AD9505146945C511555118D30ADB5D638DBA1C1A1C1A141EC996B9D1971E1081EDFC5D207CE00422B7C4F31F22234012E748285C01C69214351B763D0BBDA094B2E9EB8275232A72EAC7BFA9C4982F89C61678C18F2D07063F8C5A133F7E2C8E2C8A2DC23C4C718C32BAFBCF2CA2BAF7CDD75AFBBEE75D7E1D9908816D5E15CE50C5DF1BA55B7EADCBF08A3C7B44A59DA36EDA6DDDCB265CB962D5B5EF8FB2FFCFD17FEFEFA63EB8FAD3F969C2B30DA1879FCA25398FA3BB7948495DA1A8695EF55575D75D55557210E9E9B9B9B9B9B431E31AA47F5A88E821094C47C272DC9189A93497FD95FF69737AEDBB86EE33A4C28031F1BF8D8C0C7D6FDF775FF7DDD7F7FE0AD0FBCF581B782B482E8169305A62DD15AF295AF7C68E4F61CE939D27364DD87D77D78DD879D9C9373724220324DD334659A43C4560A4A4109D025A6729E7C3B5127EAAC42B570B8EF88DE11BD435CE9CDEA6675B34CC4EF52EF52EF92C97DBBDEAEB78B43EDAAAEEA8A5A2FE5E4246FEAFAAEEFEAAEEEEAAE4C8B811558018B75C49C3D1480A7D494924608ECD493D0B430AE5143DCB25B764B26E2BA5137EAFE82BFE02FF867FC33FE19266431802CF0FE8439614E48BD35611BE83A2C503300F0C88CCCD53685AE729570D49143ED6EEF6EEF6EF7CE7A67BDB3A293655996659DF9E6996F9EF9264BAC9827CC13E6097C92CBE6B2B92C9EC39E899E899E09B804D088E0323B4EC7E938C88B671BD946B661F5583D564F301D4C0712ABA14A1BFC76A3F7E9171CAA8CF91175441D61572A4D29F6ACEC59D9936D67DBD9B6B4562467C910B12C2FF0B2B5ADC127B6597224CA47F9288FAA0130B10CDFF00D1F774A44495128D5313A46C7F66CCFF632CB99E5CC726631B39859C49E51072CBF978181818101C4F46065CB92A5AEEAAA6ED04B18F2C87D178242208AEBA03D4ACEB861348C0678EF58D8F56CEAD9D4B3C9DFEA6FF5B7624C70DCD8EFBAA66BBA86FABBCCA1CCA1CCBFE37A45A674DC1BF744FB3A29FDF1DCB134024EEDBC76EAD4A953A74EFDE32FFFE32FFFE32F3FF5D4534F3DF514A228ACD0639284885A287A8BC5C1308A86171617161716115DC9043A999DCC4E0236C444FFB5AF7DED6B5FFB1A8E05884F7AE3A07482AA571137606AD87AC9D64BB65EC2042B3CE1583A6002058009D72B1328626282C7D9B1B11315F096E0BB18FE0E0D6D0600C1464E6A5AD19E9976C4A29EF2DF096BC29A106877A677A677A6FF70FFE1FEC3521C323030303080C504B6C4FEB14C41F8746EE7B99DE776E23D165267DE7FE6FD67DE3FBB7D76FBECF6855D0BBB167689640A407E646741C502F795D1028A2CD780DCF7B5F7B5F761B24699374790DC5948C055EA25C51C6F201F12EB1FE83BD07700D962016FA9AB95E4F51DC7711C8EC8E521A6489A33E5C9FE5D82E810948A1103214B5209FBBBFBBBFB3DDFF3BDD58ECE781E8AFFFA25FB0436434298C27626090EE9DD8462BCBC97F7F22E191631E8278673C098234DF3E23F7CF11FBEF80F7FE2653FF1B29F781947BA9CC165D637FF5A39E78D4F702FB0E601FDEAE28B2FBEF8E28B2FBAE8A28B2EBA483471667233B9EF830616C86E5CECF71D714A9E759646C0A99DD750592892EB8FA847D4237AB7DEAD77330F16F582C9EFB273622900B82E742AB50E5987AC439C43C55A1E79C14D5FDBF4B54D5F3B79EAE4A993A79C1EA7C7E98193F0CA5ED99386E4C26D2EDA45BBD87F7BFFEDFDB7C355E3DCB8F7D1CAE8CAE8CA28E7C9D0F48D9B2B387B9C3DCE1EB36DB6CD766C52461C33AA47F5A85C9DFBF48BAFD11833C68C316150C3B5843AD421ABEC32EC2C47415484732B1925A324FABD4CEAC1049A0B73614E1C0C5CC8E1E8707458C83213CE843301A53040C16A512DAA4568328B83DCDBDEDBDE2BF1DC0E7787BB43B5555BB5E5E838226238287C29A5E2C425A84DA1440AE7EF549C8A53413C2791D6EE6077B05B8A7656F48A5EF15A5ECB6BC1A9E87D7A9FDEE74FF813BEC0DD7C142C02BAF3DDF9EE3C120D703C03BB06760DECC272CDA93B75476A7C11CFB90DB7E1361CE528671556654E3E8A7058B15C452A8AD1C76404268C0963221C0BC7C231B87677D15D741739E900F789FBBB467D3C4680DA05A2D048845F2A66C5AC403F1CAE1AB123D4B6DD6977DA9D36C7CD7153F4A8A1D80CC7EC2FFA8BFEA2084F1EE83DD07B00B9734991D0B32D255B94DFC5F3208D1F405233422334B8542F772877287708BFFA2D1FDBF2B12D1FBBFCF2CB2FBFFC7259DC7C0F861508460C9F241D397EA7CF357DE9D401A7765E931CE797BC2F795F92BC2F9C6E5EE5555EE2455FF9CA479924F47A045381F20E263EFCE0A3300A57F3676C9832A6F5B49E4696D1386A1C358EF6BCA5E72D3D6F91A8C8766CC74693034CE852D75B312A4605C78D155740C887F8CCD069C2B48B6E3F613ECC87ABDD5E219CA994FA76DE1A9B920A12C74C32E1429509716AC5AA5832D14BEE99682F4135A806ABEE16A28065A36CC414A4659982EAD2443C2DB20F9C19BD5DDDAE6E97B3ED537DAA0F2D17B920871D0353BAFCB3FE59FFACB887FD6ABFDA2F342E4A130053848C229781616098538DCA5D2C7DD09ECFCB78192FB37476E9ECD25963D41835464580622C1A8BC698EB1B54824A50E1A722C9FA96B870D29D74279D7167DC190F0683C160509A7030BA004527723C029B4B17FBA78D9741DC0D175F123EF9881ED1235874F218621B896391B706939CF9CC4AA9D50481F09FF32AAFF272ED80A071E680FD8B46D190461A902289BA5137EA8613E14438E1EC74763A3BCD1DE60E730733B48D4F189F303EC18E3F06E7920E172A89F93CA36A548DAA0C3EF38849E7E98FE88FE88F7CEF3309BBDEF3D973CDF5C25216746AE735892DC07A25588F7FEA3255258053711B5410C2931773AA630DC3C92EBEEBE2BB2EBE8BB9A6D2D0908CFD38B2860CB8315D88A5EDA5223351302367024018DD99A8AD1E6A55E10CB8AFAA5452D68DBA5167BEF4C091A75FA879C5A4C68E10E7C91133B661DE724C93AB6A548D18C39CE13B3812A9676DB7DBED36A25E00A7B210A1E60DDC401EADE9454F1B255BD96C369B05D08DF7521454080A4101AE97E171C0C51B8E6D38B6E11868388091A558683A379D13A01871766C71800ADA44630C214915FC825F585E595E595E41ED38EA9B45FC048B122CBC284EC5F83012134365F024D7744DD730CE4CB863E21B7305E477510C8A419199F3023CC30882E6D60BDCC6837F05C2834EB41E11DA1DEADA8F0D1F1B3EB6E1F886E31B8E83668897748BCAFB793F2F8B573206C97934F857CC5C6BFCCA2EFBD8651FBBEC63F8F57D278E33B5EFC552079CDA794DD8BCD4F955FE91A86D9557C20DC78438A84656F643CDF592130797A330C8C65318D7AAF299335739795DC9AE4A7C5CC9DD623A83C383D216B15859FF0891BDC0D45A6BAD59D08339D55CE0C1A520A2B54B4B10B804D18122CD645EFAC47290A5A0149484774D26C542801F112721AAA6029518DB79C29EB057DD3F0AAB8833CCE329717FDDAA5BD25988CF562677EE3B446E2659C9CD4538C9AE44A25F46E53D12197B9EE7C5BAD8268DEF69D2F526A3464916202EC4B5235940B2A332F289AA5CE17BD332829B2E70DE979F6426DFC52875A4DD26E546BDBDBDBDBD68BD80E23D700292EE967906E71B99240A85A70EB9F635EA1752FB01580A41A7765E631853DCEAB81ED7E3326540741E34E550873A34222332226918AE945292201688AFACCBBA2C8DD6ADA75F327D209E3E6E1E378F635ADFD0DCD0DCD0840A0FA8437027ED1DED1DED1DE8982E54AC62500C8A888D7A2FEABDA8F72240D312DF14EDA25D8C893C20926B06CD40BABD0A5D05EEB61935A3A6D4598E67C7B3E3F804110F2B40A1CBAF55B36A560DFC5B4C8843C7868E0D1D43E424F1F1B4316D4C438D59B8DC53DE9427FFC5796607B203D901C4CA025C0F0683C1A010C41ABAA1A51D052F11A243D1A1E890B88DAAAAAA2A948DC39170241C4104DCD9D7D9D7D9876BC42E8D75C63A639D3EAC0FEBC3D283B6DFE977FAF18973D439EA1C950C6B188481149B5965AB6C957941C00A59DCAB0A141E44F3A07AD943F6903D640FDA83F6203A0EC1218993869404A1119C8D06FC6E4D5BD3D634A449A34C948932EC1AA55104BECBB5D118B7C4F24E967194898F2D0DF139E4519552DF16ACD8A976AA9DE86DCCF12E3A22733E58521B9EF6B427AEB71815A3228BC3487C1FF8811FC4BECB7ADA4DA7E934FB3FDCFFE1FE0F3FFFC8F38F3CFFC8F0B5C3D70E5F8BE55D7847784778873448504AAD2E9280AF189EE1195E8CE8D7301B66030B179C03181E78EA10010B4E30AC87F530180342D1A29A72A6715DE859EADF375644BFD0E7F2AF2D8D80533BAFC59A0D24C434F88529407488F0A0B316F4BF69529D496E184704880AD1449C09AA93A5D676DC1D77C7F11E930B267DB0A9391728C548886829066596B2E82B9193968219525C1227417ABCD80378C202E4F6F4F4F4F430BF97E342898CB1FD546E2A37854A5600BC2CFA88288415BB62020B0424FA0903E0DCDAD7DAD7DA07628BF470EDEDEDEDEDC5E24624454B51292AE17C30BD72EC8EB3C27826652BE41A511F6C9AA669CAE1211B82C89EF000E6DC727C2C5D7BA7B253D9294E2B488B05E0070DAB6135E47CA6B3D3D9699C83649DCF23F312ABB74E82CF8C1F702728C227F857E08EB963EE985C232A7D51F54B9FB014A52010780F67CC4727ED36D13027963803D742334469562E97CBE530E67CB69CCF96FD50D72FFC9721742CADD056016C6A489A6CBCF3E9178EC2854CC20088A2288A9E29AE5746FB47D2F5C2D20838B5F31A77E4C5341DB48256D0421717C4BB2C7AC0D319AB22CBB408357AD05EAA6135AC4A73BD0973C294BE3A31A75836CB66B9FFEDFD6FEF7FFB92B9642E993C85614AF24CCFF4A42B6AF685D917665F6865ADAC95CDB81937E3FA93FEA43F29CB88ACCEEA2C22272194D5C25A580B0B61212C043AD0C16AB7D46A548DAA88A14587B99EAD67EB431F1EFAF0D087FD0FFB1FF63F2CDA4F4DBB6937739B729B729BB2B7676FCFDE6E35ADA6D59423E6744EE758210BCE0CBD90392291086683DAA036C4A4253366C6CCA00E180D06927A64B896201364820C0007A966DEDED9DED90E473EDC37DC37DC87E5CB4AB412AD449C5640E7D7C88BBCC8B3CB76D92E8B50A51DDAA18D3DF4983D668F69F41BFD467F30154C05536126CC8419A9CA2DFA45BFE8B6DC96DB12356F02C371D5EBD57AB55EE58673C3B9E1EE07BB1FEC7E104F4B667D667D667DCF877B3EDCF3E17073B839DCBCD4BFD4BFD42F1803C1D4BCA4037F1E8B187958896C25034439D124D42C8549B6699B364BA6C4C4469452713D32A18375DDAEDB95B222377443770DCE3CB10D847067694BAF169B1188EDB7FDB6DF0EBCC00B3CFE15C8B54F9A93E62438CF9BAFDC7CE5E62B3102AEE55A2EF0100B4FAC20D7B8A77EE007BEF294A73C2C533056B96AAE9AAB6EF8BD0DBFB7E1F72EFDE8A51FBDF4A3C8D6F7BEB4F7A5BD2FCDFE56F6B7B2BF25655A4AA9EF8C188512293CE7F28453DAE247DF920CED1FA6A575C0A99DD730657FF90D5F7EC397DF70E2C48913274EA09A56C82F655556654C4C5C85295330594C790751321140F05D5078507108E2127E128F3CF2C8238F3C726EFBB9EDE7B643BF093F782950D9D7DED7DE8725C2D5575F7DF5D557630A90388C7B3A31A9C7F77DDFE76EC74CE4117075C2997026E07EF89C935432C4971CAD0A792797CBE572AC4C24D103950C71949CE4D942AC40D49DA2288A22C42E800DA525034545709CA8FA3D77EEDCB973E7E0E651470BE2D2C95B4FDE7AF25654780363E09886B38012A9CFE4667233889B995F9D8C1D6554414C2B86C5B0883347ECC84F855C51392A4765593C4D6627B3D22C61A5B5D25A69A18658BAFD9008A868811D1A383470082549C9E896A36D96A1886D43EE9933E8B85F384F34B138BBEDECB6B3DB4E9F3E7DFAF469D44CE3D9E3AA5FCEF8B25E9574ED455E9F442871EDC80F00CB4952CF04229EE999E999412304E85EE12EE3BB2CD589ABC3F863CC859C98CBE57239C87362C4F01E35BE7D645225FF5D161D9DBDEDEC6D676FC3B150A19E52B7BE734B23E0D4CE6B98F80052611A7247DC1177042BEBA81135228953A57CC256B6B2B9204472C6C4DD45BB6F694B8E9C25A4F687A2A168487D487D487D48A6D4093DA127007B9E299E299E295A234FBF304D200EC31A9F251D0474B40DDBB099B18CB2229EE658B82056A062294B49498F64AF09D0E6D2171662145903B0916B6ECDAD392DA7E5B4501F2C7B0E54A00276B4382E9C1FF689BD617CCC8259308542858847DC794FD413F50898EC466EE42213E9CEBBF3EE3C1C4C5F7F5F7F5F3F8B2DF0D287BB39E12E58BBADDDD6EE9E959E959E1514AE58E3D6B8358EB6F622D3B8B7BDB7BD97B9F152DA94F7F37E3EBA2DBA2DBA4DD49B6FEBDED6BDCD7BD27BD27B52FACE2AA556D10B8845311D0CCE0F2E0757D1CD77F3DD7C78283C141E62F7C9280B1AC56389C0BC77DC7DD933518A92B42C3C4B4002E0BAF82E7037272930C37856C36A28D0370073BFEC977DA95047EE1CF75A3C7F41177401D5B7283AD2BEF6B51F235E29A5BEDD6DA966D48C1ADC76CFA53D97F65CDA7B55EF55BD5775AC8ED589DD4D89DDB11CAC3815A7129881190866903D923D923DF282DF7FC1EFBFE0F7AFFA9DAB7EE7AADFE1DE50B89B687F8C45E1773B4B6CF8E0860F6EF860328EE405E5330BB2FE615A9A034EEDDF31D6D311A3AC2AAB23C5A82E0916652C1393C80DCBB4C8F10A72B160DEB2A22F170E316D2721401F9BDC29E7C78C6E114C201A8ED43A9F2FB3483942CE1673E728318881709CCD46D7122B95A15C7852694B1C7FE5E9178F0FEB91F19DC2E283AF94B71712108A67003E179F7E71A653B8B50039695903A705710FE846E1BD346A745DD775256EA6967CB1EE4054DF1C7B8AAABAAAAB1C1DF2F8E0ABDCD9899F437E8A92631EE333D398F0F54A7C0F5A131112B9BD206B3BCBF9700697A06676B49C2796678C9F67BAD770F6D214A1AFAFAFAF8F21E2187E49CCEDA41E16300676BD305631FB5E668964D4CB4BBD1FCE4CF54CB414824EEDDFB1D9D9D9D9D9D9FBEFBFFFFEFBEF470759FC5C99E8213FBFAAAAAAAAC810EE5EDEBDBC9BA32B997B486399494CA0846CB96BCB5D5BEE021C8D7D3EF6AEC7DEF5D8BBBEF5F66FBDFD5B6F07002E1D67A919036A55211C8F6581C0CEE4A2582C9EFBEAF03A9D632C76DEA2B50BF7CCAD09518644842F011B416802A98A006AE90574B0F760EF415C35B77F90AEC36118862178CB7CCEDC4022469202816BD2997426715F00D1633AC67FF1F9D9B367CF9E3D8BBB09987A6964696469A4D3ED743B5DEE35CB103AA67E816A51D4443DA390028040298E82CCA8BC502644E53AD2DB0A59C95C2E97CB71B763B4E28053C79E71A7500B0BD527A8A401EA8C91E9284DC0D43071421461B37B96A5129E10483FEE6BED6BED83BB457408163778F8F2D471072D685415FC825F8825112A4FBF24A9D1749A4E93B3DAD2736CAC3BD61DC3F8885A96699AA6097ADAA60F6EFAE0A60FBEE4252F79C94B5EB2E9439B3EB4E943274F9E3C79F22420716E56C13C03E9D33CD619EB8C5DFEF1CB3F7EF9C77FF2CF7EF2CF7EF2CF703759071BE386CF7F94C94ACF564B21E8D4FE1D0353B7E7AD3D6FED79AB949A203E68048D40BACF822D0CA210B3A6F5981ED363B1E893A20D51EA81E21240E02D7A8BDE82E3C27DAEDFB37ECFFA3DF347E78FCE1FED9EEE9EEE9EE60C1FA4E4FD8C9FF133CBEB96D72DAF83F3E6521391B9C8DB793B8F6215BFE377FC0E005BBE525C17A62121B620CEEC46DDA8CB9D64185843518A10B8EA513DAAAB7135AEC6A121855E00C8AA42E63ED66789F2940C0BE37C629177644446C49AC642D7EA317BCC1E964514A75BED543BD58EEAA88E12518ED9CE6C67D69BF7E6BDF970315C0C1751C18C5219D097106B02900C7BC29EB0279809668219460E40D702E82D0AD21DBB6377FC7DFE3E7F9F57F12A5E05490AD1EE464F65D85838168E454EE444923E00510EFFCC8C65C63263A63295A938578ABBE61DF60E7B87C56941B6B09969669A108F94251DD513C3AD7296176563F8AF2C9E10E763090558189954E016E02ECCAB7935CF55E0683E61748DAED19572294F7BDA93FF2A53994A994FBF0050E389E232A4D00BBDD0E36CB1FC974AB37AAEE8B9A2E70A90A4E02C07760FEC1ED82D94BACA4A65A582140920713CC3F23CD8811DD870C360510C5D3974E5D095199DD1198DCFE569CF46D9280B96E4776EDCB2F33B71DE7247FE4D8AD6734D90328D8053FB8E0CF10DE260ACC1B9B101620EC46A1C5D3100CB7D6D19F2C58FEDA23B2FBAF3A23B11C532D476EABDA7DE7BEABDA080A1B9DEC2CE859D0B3B999A84022410B8925429069645F81ECA5044D492181D2FCA614B5E9622695E5E08858AE06E5C8BD0A350AE43454AC29ACEE572B91C2A2FC5CD90C294B4A2A3DE3B8C3770AB38BC47FB0A9C095007D4434BDB00CFF33C0FD11BC6F0D453A79E3AF5D4DCF6B9ED73DB97762FED5E129145D642E2D87AA07FA07FA01FC7C279223A07558A5B0888B42455C74A59D45877AC3B86A602381F6C896B87BA9930ED27339399492E5B8261AC807380B5CB7139C3F89C2E6129502994029379DC1BF764E125F42B029C39BB8C9104C9686EC7DC8EB91DF816B70E04858AAF8B0167511683821B8444480446E2EC7DED7DED7DD83393F8A07EF582FFF182FFF182FFB175EBD6AD5BB7621BC4BEF80DC6F4AEB5D6ABAD1E31B6788A5EF567AFFAB357FDD98BFEF0457FF8A23FBCD0B3C8BF6F6880815F22EEF5770262A36F15B0A51FFE397F270B8BF359EA8053FB2E6C7EC7FC8EF91DFFFC967F7ECB3FBF058E109F4B041C455114813B8A868342F1604634F746C5772DCBB2ACC1A38347078F8299393C3C3C3C3C0C300D5D989E7CF2C9279F7C125027F62C3072292C85A5F5EBD6AF5BBF0EE27949BA4DAC0331E053F072494892816589F34A51292A31BB588AA648F480BB18C9A40F6946881702566DDA4DBB89F79858812848552EF52F623297B85E645269B9C0DA55326ED4C41E23CF3D88B007F403C6C47DE2C9134F9E78F2CC6D676E3B731BC06A1C0BFBE47EC37084384F5E2E600CE19C1087C1153188CD2435B4C100079B4169E98934F9F48BAB90598DABBFAFBFAF5FCE0A15ABD2FF3851E1CD795F413E1A76C36E083E818A5E08AA10731B773696AB267A1AF8E4E7E6CFCD9F93E6100C3E8B03CE7B792FCF6A568291D4CDBA59479533D734E38571107153EA978C2D87D70FAF1F5E7FF96F5FFEDB97FFF625775F72F725776364500B001E7BB27B34A724B0D478F55FBDFAAF5EFD5710B4B9D0F3C7BF6FF22B1873C7DC315CC577E2809FB971734AC24AEDBB30916298CA4DE5A658DE41CA4812F28AFFFFF6BE344AAEAB3AF7DCA1A69ED5524BD668C992B1654C421C4856C2CA030F711CD68347129240788BC431C178902C6BEAEEAAEAAAEAEEAA6E0DB62CDB600B1B487818023166F1163CDE7A2B2BB19260322C9C00761CE200B2354BAD6EF5DC35DD7BDF8F6F37FE0EA7AB53ADEED6E0D4AE3FBDAA6FDDE1DC7BCF3EDFDEDFFE36074B355A13D14CCCA91F2F92A055484990E212DC008E5817AB8BD5C5B88C87F37CD852DC617FB43F2ACDF52487DA1FED8FF6634207D37BC9634B1E5BF218D48CB11440C10670F99AA7D73CBDE669E06C9485AC38B4E2D08A432C5FD0FA68EBA3AD8FA24C48ABBF4433C1FAFAFAFA7AACEBF15F4C37A33B46778CEE004EC522035426B3A04BAE118DD373E15C38877113E97CBA7676481033393B7076E0EC0072C068F02EBDE6298F7BF6DEB3F79EBDF7CC3D67EE3973CFF8CEF19DE33B815CA5191FB5A164BD62DC1D41C05D5E9727A41E1C174E9ADD2D78CEF8482A818D4A77707FB54803AE8B54BBF95EF39208638531941E50F97C3E9F6749546E47285CFD54900A04134B1FADDD13BB2776CB68D082630672192B3F1BC64B13D17C26E14F29C78A46A3D1281694EBD7AF5FBF7EFDB5CF5CFBCCB5CF404683DD33F30FE49DA2B70CE81F99F22507971C5C72B0D21BCD4B4FA19B41337CD10CD1056056F3BF92FFDE17DB17DB573D814B74C12A48CFCE6ECCB158BCABAE64B51C70CDE660C07391DF8DFC6EE47785F6E2588E252F09475344D3AA6015AC42900FF2411E9378A427D213E941D33D990AA356D48AF22485894694A8CF96CF96CFDA1D7687DD21B215C3CEB0338CEC9AB870342D58EA2E7597621B741C12978F96E354D223054BDCBB3767E7EC9CEC2D168A85C4A94B863BEA465D694520041650AEFADD7E57F2972230A27CE54FEB2443D69F085991BA485DA4CEEAB3FAACBE12192B36C3B94248C10CA4E3B87ED6CFFA597F8FBFC7DF83DFDA7D769FDDA7C6D4981AC3F6C251EF703A9C0EE9020B3DA6016BC01AB086AD616B5898BA94BF14271AF3625EAC78A078A078802957908494D60508CE178362203214AAA00AAAC0B5ADE542B9502EC8B448FD86A54DA1633996A61A0DA90A647CB9A008F2297EBD5FEFD74B8E3CA6622A66EFB1F7D87BB8E39670D47B55AFEAD5FA2EF7583D9650F320BDA211A698938F6726A1122A21D9EB2DFE167F8B37E80D7A835EDC8B7B52B38B865B827ABB82AEA00B6DA2F8191675E89C97F372E8DD24D9748A16F01E388ED2F0E5862F377C59E34C186FD90C067E7EBD556FD533FFBFD2E62CA103021A9EA866D5AC9AB52D396D34FB2C016756C97D4A64A233D419EA5CD8D94912495EE0055EF5CE5B660C3CA5399553732EC49A8FD542D0359BB32126076632DC2A672B35EBCC77E63B81AECC767EF80604A5AB9EBCEAC9AB9E04CF130155AC914F7CFCC4C74F7C5C3C55BC142FC591258253E1D0AE64BFD0AA9DF5A4103426D55F2E68E1B60782810821692ABBBEEFFB3EDCA470ADD37EDA4FF31B843DB04C2330B77434A25A552E6B299069FF25DD69918DA4F0AC04B4A9F392F090E3A578292EEA54C562B1587CE595575E79E59557FFE0D53F78F50FC08546981A784EF297543402342647E98FF447FAD1930A7A4C125085F008690B23C80CA4C8B97FEE8C8B0FD7B9F24409F78F630105E2FE32C6C5552352828802271AF8889C03C6A8E269E45C3EA3640E470305E2393F37786EF0DC209E614E7CF01D64FD676E3881EBE500BB6B98B469806AD89EE89EE81E647C6FB8E1861B6EB8419E1950CCBAED6EBB1BD9E8E3C78F1F3F7E9C5D9D2CF2C042405C6A6F746F74EFE6CD9B376FDE8CCEBE95DE681C1D29093C15CB972F5FBE7C391717C1317311D4E56997B3F2B369B51074CDE66C9267A2509856D56A844011EC652727AE91749205015313431C4BEB42434AD15A7305EA60C35940E6EE6A2546069798CF99C3987C5CF96FAFDBEB6A1D8DCCC224A60209D2EAF2BBFC2E386F99EE410822472515A254B225E3C035BB94473755A0CDAA50EEB3C435A93CE973A346EE41244289C972B29C44D015EE473BFF78295E920CA8345730B2D4A6C939A0A696485BC08270FFC21B875159913C15C69D6544CB343AE660CB6F29ECCCF8989F04969F64A7CE15C932CE157A004B5D32B9617942A86F9259312C0C7F2C1D68F157C9F8A9E6B7CFEC5736FB7E58338E8DB7A9587F3C6F5BD8BD5D29AE175673C0359BB3016B6EFAE2A62F6EFA22A84F2C16C8B41D645839278ACC31E76261703C98E231F1015BB37362510216E1938998C28C5A6F19949A8014434D17043718AD0345D5961619DC8B9717018211F744F644F66898869CA5E0662A9E811B06C6924A5F0AF3B29343F611F960CE4A8200054C869C2E2839AC9F252171DFF77D1F4CE9554FAD7A6AD553CD8F343FD2FC08F70096ECFB81A6034D0750712BB184AC9B7565C2C5BD8010E379B2E107871F1C7E10342BDC23EE0D0C32DDB265CB962D5BD6FA58EB63AD8FF1D159BF0CF774E5A7577E7AE5A7917147D52FA879109E445E10E7C31C78EEE9CB029FD852643AD0CD8916227C47387220CB29684845A3D1689419D7EC5C35114AA5D4F4F24B1C21E17B2E3DE2223A46F69216A1260D080873E658EBDD84903B9692F454F3330C97894CF0EC6F3496381867BC0BE0BACB181A0E72906CFEF38919D6E67AFD4B3BD72DB6D51C70CD2ED0F07A8068C3C40D0E9CF2CA1AFFE595BEF8DEBE485FA48F4B5F3051627BB34D1BEB58B1133539CF3096D4309581193F09B6A640B1C9E965B5263E8A843AA9A0885194385DA825C74BF1521CE15099FAA981818683F9438B0C7329C00B082967EA2874143A98AB2C6DDB8150511E632C3B98EE64CA92083EA6621BEE02C4DB33C948102D856135D7BBAF6E5FDD3E849DA1590D96B8A406E05A726ECECDB1E804ABA4717441836FA4DBC598985DB2C400B8492514BEE2A57829CEFDB81060C7F572D4411E200868F4FEEC87C3E63076C9DC8411630BBE374469301A9CE6D06AC4D928E1C24F38A220D5BB31395B74C7A2458CE920B168C3968B31B7E0888B4D07BB1CAC9603AED9051A26B81FFDE8473FFAD18F3049491A13DD78DAF3EDF976B8190E9CB2631324DAE3F4383DC037606C227705D52D54AF72033EEC01AB7B603B4CA02662667722AE1A850D24C4CFD2F3C2ADA5DCA1A06A9409514B092E4CE22A4CC9E052B33F6CCF9323B3BBC5DD26BDA497E4EB3205201933F1998B03DE13D913D9837803E36FE4D1A1E38D0C1F677F6126FF130B02C9E277E43BF21D1C2CE5A60282E7B26ED6CDB2A38D4563D198B40E9C810F0C2A1918BC699556698E43F05871A89F173770C3ECD824509FF6D37E9A15BB58738DAF4EF02EB9377E4AF1F4A2EE1CD105698B896507C53664D1462360F29C35AE38396C385D2C5FE0CC56AF5EBD7AF5EAB56BD7AE5DBB16F754167FD4EF7968CBD096A12DC8E54BF5F99EC89EC81EE6C3738AE7FAEBAFBFFEFAEBB167BECB72D58972A29C0002BEB0790023399F3DFC57B61A02AED9051AAFBE1977B236AFD9397806BD5F68F190713657F64938C614C1E08E46828FE97C3828AD2121DA9BD6A88E32C17CB68C42344E72FA8D8F79FE5CEEC2641F1E2571D8B47F76DE7C74A9924C1413C584508A88CE86C994F5894CC4EFF6D2879C84498C6224C76EC3EC7ACB9957ED09A15234E9B344BD8739C0AB897DC289920E33A35E7968A864C8EC67C5C5399C41174C4C636B12E2D8D5B10AB45968A4F52F32B2B99C91E5880246981704DCF1B78E4CE240C47FD6468082D2FC949A7120E95D56E1FD3523467335331A548D494918DD0BBE230B3A515DD65673C035BB4083D362DD22D6823103C59C25E56994C9354C41E20A51ACB221C101BD2769D5D759EC2C7632368513E21C127269F800050AA3355E8817E2C0A31C5EE66B14D445F29308758A4446BC102FC439C72C3D8528F0286431CBB22C8B712D3B540E8AF212411C00F8CCC816274BC992A865494D6ABC102FC44D7D31E67833258DD13332BE087B4279181FB846709EB10DD8B952B74A0E9B2957C07FA8DC65B7CAD5CFCC06D0B4AC73E15C3827A1666342E7B03CA733181D0A1DAC542A954A66AB41FC17CF80F4C582D15289972C9C5060DD2E6E20C1D7CE521B12C7A7F03B93DAC4C130F1AAD7E9757A11BD40F5B92C44980645D95F9C21C6561631FBEBF6D7EDC718F23B282390F4925E12397BEEEC04339B28C878964AA552C9A46299C647A97EF660B29B79AF85CD704126CBB2399ECFA5B29A03AED902183B5453F29E6941B23DEBC752AF5CFCD7E42D3322E14E3B1CA43533C41222A6E0B094E824CA8972420B8C1B2E10BF6561420E1773669ADD3F87A3F10DA31F137B6913107734524A4D67D3B533240CC7488B6B913996A0450EC84C74CEFB61D6AE387583232D2168835EA42133E0BF9E9FFDF0B361F6C8E2FCA54408E87E71B1102B36B37E99471F7EBA340A15C9A36A0572F42CB18334112DE771B53801470BF8FE92D3E57B81451293FE667FD74C9EB9F98C715C04CB1A3C994849548A58C09802598D2394ACB9E1DA673759B81B454D9C74B8B0B988FB3B891EDCBC7B3D2D9ED572C035BB40C39373EAE3A73E7EEAE3E043C2294E918998063777A3A98D3107026EF564D8FF6B77BE76E76B7772253188459850A04BC58C682EF56177C85931098722E38852A81EA7C7E991CE45603E73B911318A257768845E795AE45FE19C19B9B2B63393B3B48548B7EA56DD5CD1CBC16DEEB984122FA8E042750B132EEE118E88AC21329AB82FACFEC323261C6C74F821DE35D7EF4AAE17F81EF9728C2A38E1C46FC74822BB2F2903EA59C481620EB3B338898C0C8D24079979E439BE22CE15141E2398AC252C48F78AD301F806D29E03E706CE0D9C633D2F049F8542454B132E49E28A6A5EA6E057EC60C018DFF8CCC667363E0341362E1CD26865E072BBAEEBBAB83A69A8C044420A53E33DBAF1B91B9FBBF1396488F11E016DF35B5329EA602E172E6C96A8B41FBC0B587CCCF05BA3A217CFAD4423662D37E20537F2F7F81EDD8B2F2C6CBE185653C2AAD9059A383628460D5803D680CAABBCCA6BAA5545A7E81465559EF4937E52C337DD7EB7DF6D055630DD2A4926D6FDC1FE603F1C49F4AEE85DD1BBC6EE1FBB7FEC7EE63C432FC96EB3DBEC36DBB11DDB416BA5E26471B23839BDBBC00F7CE188526D2E0718052B78CA53121CE652224133E812037C067C0F252F03B5FBAEEFFA2EBA3CC97541F718D25C64D2D03EE1253C092CA33B9304E4932AA9344EAF8C39F7AB81F0679FD7E7F589F38E06D120CAF8181A6492431DB7C6AD71732AE46FA4A8C6539E9A669EE31B523916E4B737B437B4D7CEDA595BD35BD6D02DED99F12EF399C51D42D7CCB22DDBB21256C24A887B86DA1421543485F23DDFF3252A00452D8C7CB9B7DC5BEEE5CA6C71C6C972B29CD4902EF6E0055EE0090B2111248284F67CA6FDB43F1DA046EED6B11DDB71724ECE9120BC2C26327EC6CF304B1CA384EB62F42CE980EEA03B986E5E7920742074004B16B9A25EABD7EAE5675894B694523F53C56E04ABE509C11DDF6FEDB7F6CBF770CCBBEC5DF62EBE2F9C21D60889F376BDF25E20A05D2E954B652C1979CF12287E483DA46668A2C02E16F714091774D30AABB0AA1C2CE0380DD7915F3EAE1776199D4ACDAE44C39A1D959DB2C6A79E3FE80B0436ACE815231B4A7A435A3B776ADE20CDF5F646F746252B89D7091D61459EBE2FD217E963C28E96C1A24EBD261DC6C419403CF888E03E706147A1A3D001346FF2B1659A26D10C0E0632F10A67C86D125834CCCC0D8B9386D824C42F19DD22FB8B922743938B7121771DC61D016266B94DEC9F0B633465E35EA7D7E915D5AD034D079A0E40F51AD5BAA834C53D6267C39C64EDA121D916CE8E6B3C79AA701511D04439514E484915358EC4BDC318F2BDC3367C1F7107CDF0E60C217A5A28700F63E47A8126395F6EAA5C490E18ECEE70241C09A3DB311F45DA0B3ED2F44893D446CBB831598CE2221CEAE737485224A92015A4389E843DA3221FDF036DF30870DE7A31E607D389F27FABEF5F84F3E7B69BD5FF0A73945CFB656635075CB37919D76B72C89719CE3227911CA3D4711AC6441BD18EE6AA446416992643CC619C8FC6AFA6FA4E0E39F2B178D2E75033670AB960A65253454151DCB81075BAD076A660AF2057E233738E5926476274F3489A5976E139D3C8734072861B468C62268889C32676347F24C7491424A10251D1CB0CEC5C3A733E051E6D093EC3C52223AB94FAA996385D29D7E972B5AE1640663949A3F88D73DEDC0958CB9BE20CCD5A61230BAE057E19EB130266CAA18629D32AADD212D1C98573E11CDF2F2D8541774D7B36289F2D4B407E422CCB9AAE0E37DBE499DF54C2BB581C9B5CE5EA0D7B96F2BF79CB58F213AB09A75461B3BB6D2163CEE34A2FF08A2EE6C16AF6E633BCF64B46968C2C1919BB73ECCEB13B278A13C589A2E8F152697FCC8FF9317FF2C0E481C9036ABBDAAEB673D6CD2FFB65993FCBC02BF5D1FA687DD469701A9C0677B5BBDA5D7DE263273E76E2635CB2029766A7EDB42D13901377E24E5C5CAF0AD4B40F92E9B8D3EBF43A6542DC65EDB276F12B1D74041D4187DFE7F7F97D65B7EC9685DEE24C3953CE9453700A4E4175A80ED52193321C44D24A5A49AFDBEBF6243018CE8433E10C3703C04456C817F285BCE45C274A13A509EE242A93351C6ACA4A59A906ABC16AB08258100B6265AB6C956559E3F6B97D6E9F966FDEABF6AABDCE7E67BF23A17B59A0148362508CED8CED8CED2C6E2F6E2F6E9712A75C900B72312FE6C5A4AF51E9E1D2C3A58765B0B0D458565E565EE6FFA9FFA7FE9F7A6BBDB5DE5A6BA9B5D45ACA483AD210698834040F070F070F0B77BDCD6D73DB426DA1B6509B562BDCEBF6BABD8C4A593A5F0A9694A31C51B9922505F518E60801C693B3989C29B777D83BEC1DB814B7EC96DDB2C42708798B1BF3033FF0CBA572A95CE26F98AF204B90C0099C00ED22584852443D537ECA4F09620E87C221A96996F588633BB6C3F96CD7711DD7A96BA96BA96BA95F57BFAE7E9D04BD2DDFF26589A0522AA5A60BDE68B1C5510DE131D43BF58EB45E40EB118899A04F76E940E940E9C085615CB8CC91B191B191B1D0CED0CED04E30AE670F5057CA2BB3A1D29AFB19CB926E561A1AC700549FEA53D2831CE99ED9CF8AAB2D4C93E3F6A81E5531AFCC8AF7D2E17B8EA38A88050BA7D41C70CD16C0E0626585BB556D555B396BC5E5137066E26626AD496B12393FD9127D6F5AFC16BF8579BCE1201C8445E6109314E354995E03152809087B3BBC1DDE0E0941FBB66FFB9CDBF394A7BCE93063C80ED9210EFDC94B12B242560819C7C0099CC051AE7295CB1C69F4566297E9F7FABD7E2FE7955939B99C7FE3C36846B8C1213B64CB1119CD70FF254CAF76D80EDB61640A35E523A5D474605326EEA49DB4935CD085EF11B740A659C2E69EE559820FD0F528BC37BC37BCD7AFF3EBFCBA62A418294ABB3737EC86DDB0DAAFF6ABFD2AA2222AE2F6B83D6E0F4B424A0F282C95B018EA0D7A835E2B6EC5ADB8E039CA34733C43A223883A74A92ED58565933C215840184C75AEF4F57BFC1E5F464FAAA27DDBB77DB004B4A3905A9695B6D2561A4F91E04BB8D5849DB013524444854912ADA1D60E9CE6E0275F003B58D95DAA4B75616CB99588385D4AF26B0CEA944AA9147AF5F01D140700CE01159B451F8F3E1E7D3CF696D85B626F91260A6127EC84E7DA341ED782F32CA68AA9A2744D9EBDF36E35795609A45B9EE55948337122A9FAF3BC98022018612C6439FE510D779DAF9A3BC8D558D0355B303BBFF5FCD6F35B8FDE75F4AEA377A167111E38B867BC5458B1428F095AC7DC651638093936E16AC2A953D66A70EBE0D6C1AD23DB46B68D6CE32CA320A44C90093252E60F4C4638CCCC0133A312DB4B7343C29133086BD0E24026442A0B3195B3A4072AB49DA7A6A6A6A6384C2D95A34465E2221CDE8F6C437888BB0E43395938A5E4E0714430D5871F187E60F801AE90C61281BB32430411DF6084815770D770261819FC161328B2C2920DA574031F0BC8559C2E0524B9F88743CA782A581F9B231F1855661598F9668919D01244F019728AD9503694C5F2885132CE014F917440224A9AD6404229A514D8CE5AD52F903A65A3B1252207E83584AE4778CEB9244F3B4F0A5F33C702E3CC7507F82D10EADBBEFAB6AFBEEDABB82FD81BDFE5F9BCE33816EB572FEC1C82E52F731D2ECC303F88BCC9FEBAFD75FB17EA0CE5C92445B6F98C432D075CB305304CACD22C616FDDDEBABD2CD0A12919218C865EB9B48A67F9F819D4B5C8B04FC194DCD2804A7A1897C81EC02FA5EE49BC4FA9EE852347489C5C023B066E14A8E11BAA0FD65A14A186957A1FF14281EB62396F2DFBA71CB0049C7BED5EBB97695F3C354B2ED6ACC6266C8433C4340A4293548CED9EDA3DB55B844D3CCFF33CCEDF63D297221F4310833391F88898258875C6B1E096702C4E3A700910DF536189B3E218E95599395D4DD98AA454387FAF31CC89F3ACD501D3B8490BC26439599E16B9445CC768AA683A69D1CAEEB6BAAD6E4405E01210D1E1FC2E3FF9E65BC04FB22C2E8D62395E6E6AAF6805EAD9EC594F7341C3E5768B3193CCEE7AABCFD4F2F27161CF50DE47E8B9CD7B1C6A08B8660B6C7039C78E1D3B76EC1830134F584C90D144193171C74BF1521CFB4115235E48262841D3E7CCBD67EE3D73AFB05E13C54431C16E9273CF121E44B096282AECDEB80ED57463381F7675F2B7D15BC9ECC8C4063635DC89D06488628657DAA40EF154CBA81147E7FEAFA8B8C596CCFE85F33B7BF6ECD9B367A10B0D778BFDB043C56F45090BE34F86ABC3198AA806F3A8491189B3659A640A059C71BDBCBC60F94FA942669D2F723CA68BE5CA6F7145DC8491922072448A25601C98D6C4C89BCF016D19453C3217CA857250BD96DA5C180B8BA68374908693467061E5A19587561E8232333F331A27DF586071A281471E771FA30D32D7BA75EBD6AD5B07EC6B068A4DCA189E045CA32C9DFBC3FDE1FE4A6F7735F95D7336C03DE25EDDF3995B38877A9127B705312DB65173C0355B0C3B7DF7E9BB4FDF3D343434343484867A1C288613E23E3FF8150BE0C101C81A93300AD47C4E9D3A75EAD42994D8339718A88B758699A3CBF93F66E18AAA3353AB08AFF3ABCE0E5B4A6548DC430B50074110048CCB11C8C5042DF28D906024F7265C4D43154B6B4EA0949A6684629430D54A4BBB8C95B12408CF253A686E8176EE58E830839A71BF888C923C24E43E7074DC233344CF6179BE17DCF3989F1076249A03463EDEF77DDF876B61A62B2FE3B4BC2FA170DEBFE92A38ECCF47E40801267AB825C892F0428A2535A4C502B283A562A9A85DA9708043E1503884E68C70BD28DC62AD6C3939A3E1203F751CD58033431B068C40EBE3AD8FB73E0E314B8C3F87A059B883978CCC00C7DEE65A012C39E60A0C67BEFB950437FE2B5B8D8455B34531F409B6CE5867AC3350CBCA97F2A57C09CEB838519C284EF8E3FEB83FAE26D4849AE0C224ECA1102BC40A313B66C7EC18578BE23546FE0C13D6D13B8FDE79F44EECB93056182B8C21D409A708C62F6770413882F08584F83A5487EA9089AFDD6AB7DA656A8EDB713B5EEE29F79465CA16D4852DF356DECA3B7927EFE48BBB8BBB8B8229394C0766AF560643484B82A2192FE365BC096FC29B60F2949427C1A5EDF076783B18C9013D97FA4A7D2541F9922BFD70E9C3A50FE34C38DC2A95B2A393A393A35EC12B7805198DBC95B7F27EC12FF885D25469AA34558C17E3C578E944E944E984DCCED7D46BEA35FCC92D08A54CE9F7DCDF737F8FD5929D8F391F733EE69E77CFBBE7B5D21D6A65A8E22AAEE23C9E1CAAD5442DC69C31670C0EB5EC95BDB22E12D2A93A55A7D9975774A97A55AF125A1C02C2281092AAD9BDF65E7B2F4E4D2878C972B29C848307750B18974BD4C41D46ADA815958228D20E937081E33AAE83654A536B536B53EBFAF5EBD7AF5F8F4521F4456066BF26160CC11710FA006D4D9E0A377003D7293B65A70C540DD78BED2193C2EF234618CF0082FF3813AEB3BFB0377DF6E2224E305DEA39E972B45A0EB8668B68222FD06BF7DABD32A1502E8AB3505A6D2EB56410FD23A23BE16F04304169C13407B7C1728FD2B69DF6CF989BC3DADC8388738D8CB1344D66721BDCFD97039882DB68FF9CBF141144E4B041D52151054C912C0F09E3C0326B622390889EB5881048AB868E4247A14342C10880274A895202A1547CA6DAA7DAA7DA453BB77DAA7DAA1DBF4523426E4AC881650E2F4B4E374E1F3271696C5D5E97D7A57DDFE575795DDC0691E94BD8524B342467FE70CE950F280BBB8CCAA88C6CC37D766949C4775C1E62EA38244F20756192884EA2942825588A92A308D28802AE976ACA654B42BAFCB726EA42796ECE9A4BB6DE58BCCE501D4B7421539EE552CD0F9C56A8BEA2F7CAB2D9BB1AD71070CD16D1A03E73D593573D79D593F9D7F2AFE55F2BDA45BB280134BBCFEEB3FB34198D901DB2439A7A9451A6C2FB079BF4B5EC6BD9D7B2431F19FAC8D047260626062606840E565757575717EA0A7585BAA45A17054825AB6495BCA257F48A6626988B55E4BFE8DB4A2E1CD5225A3FE02EABCBEAE24C73900DB24116D84528571D4E87D351F00B7EC1075E67AE2C67CA3914EF9DF04E7827CA27CA27CA27B8D38E1C053951AFEC95A771D889F289F20911CD38A14EA813D8A670A470A470A4305018280C14CE14CE14CE48BEF9A877D43B5A3E523E523EA2F52A46FEF22EFB2EFB2EC17CC0AF678233C11967ABB3D5D91A1A0A0D8586D0035810F0366B9BB58DD5A024D3B9CDDA666DD382EAD8E70E6B87B54373C9C3DEB037ACEE57F7ABFBAD7BAD7BAD7B31FEA1C1D06068D0D9E66C73B6492063A7B7D3DBC9FB94902F98D87937EFE631E640BDA2D81CA84005C0D37ECECFF939CED7E2A9403059F037AA8D3BFD4EBF13911B6FCC1BF3C6B40AE0B81DB7E3F2F824555225A3FBA3FBA3FB9BDB9ADB9ADB508F1BD407F5413D9FA730DE2D65298BD322285562672F4B1F283F137BBF3E539FA9CFC4BE14FB52EC4B1C3A36CB78F0E0802D8FA8124649D20AA8A6B52CCBB2E6CF40AE64EC62F90C6549D159EA2C75DAED76BBDDCEC1732C28A1008FA80F14BEAACF435F5A9B7D3CAF800BA8D9956E52B46E28B20A6D37EB649DAC4CD9D0D532B8D32CF4C8C895F584794214979628254A096EEAA7E130CA23F2FE71CE5A7E911B05126F9685EFF12B5E4C986886B585B983AF14EAEC9EDC3DB91BE55BA3DB47B78F6E1F7970E4C19107C7768CED18DB01540A888B2D51D4343E313E313E3149262816DB4C4C4C4C4C6097F89BF1EEC4AE895D13BB781BE4D421D92FC7021A06DEED2C7416A673BA5D5E97D73503EB9B10A1E052426C6CDCEC419602E4868B952C5E8C17E34C55AB84A745851B8B06BE77465722167D946F20B241816BC6D98CB019366BE29D5927EB644168AAA43CA54580081957EC696DC88E329BBA9ADC2DCE87E352DC14A4528FDE4A36BBB654A5EDB928AB1A3A95CC1B4840E099E92874143A166FBEAA64D202751EAD124DAB91B06A76910C8C68E483CF6F3BBFEDFC36A1D8C005D294242A394110040198BD70721CCCC14B8BEAD2C3870F1F3E7CF8F8F1E3C78F1FE79AD1AB0E5D75E8AA4357AFBB7ADDD5EB58FF88E521790A6087CAB88AF9BA82DD89952AF28DD4CB96CBAB047DC60BF1429CCF4D3AD44E4E4E4E4E0E8F0C8F0C8FC0D18E9231879C7B0C33B98C55993813A915CFF037BEEFFB3E5CA9B8E189898989090499B1BD68F464DDAC3BDDE388BA1B711853CE0A0838EB66DD2C6B47B38025BB2BC6A3D2D69E1A2072909973E7921BC65DC0B19452D3CE52EE85EBBAAE2BB5D1D4E158F2F1C8CD539DB7647FB91809AECEF77CCF973C2E155F61C464F1416E9ECFB3E560CBC19683D02A6F7BA2ED89B627C02E96440CCFB7D4DF8933BE1C7CC6F980F98FE70777FFDA6BAFBDF6DA6BAFFFCAF55FB9FE2BF37F37F1C60D3F38FCE0F083D08EAE46A5194C0B386CB3D6164F2FCE19FAEDB3678BB1A590DA665D4C48B226E5A5BC54254910AE3817AC3F471112EE18263A01A4EE2E6FC4AC8CF16AACE6806B76910C4FDAB973E7CE9D3B07378CA99F57C42CA381B539265399BC2863846F80D89E7FFEF9E79F7F1E65368CB1963FB1FC89E54F6C58BF61FD86F5D8FF0C758134094A9947D6C93A595150A216085C74C4116B162560FA15B7C6E38216993E3CCFF33C04D606B70C6E19DC22E893DDF0F6D1EDA3DBE11A716E6681102F17B04F6044B31A955BE9C155030D736D2E3B4E594CE442B9504EA61B929B90B0305D29377260176E160E71F75C71C09885322AA3A615C211CBA065108CC79C5DB8C8A1D0D9C25101ED712345A95007471A2890920BE8DB83B1C2D28AB3A4262F9ACF13FB6F5BD6B6AC6D19D8CE2D8FB63CDAF2A804E749995CEBE85C492B9BB4C707EF1FBC7FF07E3C444B1E5BF2D892C76EFADF37FDEF9BFEF7AAA7573DBDEAE9F9BF9B78D7F06EE2DE2DFDE4D24F2EFDE4ECBF622D6E2C94E5FCA9C9A3F9DF85B2D9253B700E48F4E099B930A219E6221119ED0BF585FA38E6317F72592D075CB38B64986DDADADADADADA967D6DD9D7967DEDE8D1A3478F1E158E34B045C92B7925098B31F2B32256C492366D14227BED0F5FFBC3D7FE70F87BC3DF1BFE1ED495253859F6CA5E599C106B24955559952500DEE3F438D07EEDD1708C6FF9D6B4283FE31284047B55AFEA65C4238D17434EC809B124A7A06ACFF22C0FF293D69435654D3116477B38E435E17E985CC3B8166E72C81BF2863C46A5EC8AE42A8683E160D81EB7C7ED71D6D88AEC8BEC8B482CC16BF15ABC96E643CD879A0FE1B8E2A2BE16FE5AF86BC213460EF8CBF697ED2F0347D6FF7CFDCFD7FFBCFDACFDACFD2C17EDE0E8EE5A77ADBB16BF15DCF996D05B426FC1E021AC0DE4AD9E504FA82704433EEA3DEA3D2ACB9468215A88E24AB5902F858E19610B769C0C2683497C53CE96B3E5AC17F6C25E38D81BEC0DF64A814D47A423222ADF56CC8A5931E13353EE160F0D4741586D5B48558970229CE0021EDC4760DC259B976C5EB279E5752BAF5B791DEE8E68472BA5A6EBAD2159CAEF85882FD251D83DC3E9029BE21B2867696575B3E2C5919191919111E9154D7AE3BC0DBE69E96CE96CE984D3AAE68DE6CC74A42BD215110E84147AA9373E8B61B3E756710E75AA4ED5CDEB28E2B6FB55BF12A42B229A492FE925C78BE3C5F1224876FC2BB39371C5AB5894B1A959CD66354C19CD079A0F341F381F3D1F3D1F954E9FF1201EC485059D0C9281A8F008E1085CD08C9FF133C542B1502CA0C9BC260D48993CB8AED29F95FEACF467A0DEA0E32C94DBA1430BB167A12CD16FC53D2BA594823E332BF1CAAB65767BA54A4DB95484130B56C12A8803469D3114B049BD4844FFB7385B9C2D8CAA199D4B38171FD4A4F63ABD4EAF74565696B2A61B11426B8C8C716AB9AFDC57EE13D75BEFD6BBF5CE3E679FB30FEDF6424DA1A65093DFE837FA8DD8BE6E49DD92BA25B147628FC41EE1ACAA64011B54836A90FD37859A424DD1C66863B431D4106A083548A67367B033D889A3E052CA75E5BA721D6B4BF953FE943FE5E5BDBC9757455554459418C9A22AEDA5BDB4F4C74D06C940C44C407FC3C2C8493B69278D7EB15EBFD7EFF57B7BBDBDDE5E0E17FB7BFC3DFE1E9487616722C10F8E344615773FACC22A2CA1FBA49FF4652920FFCDA99CCA81E7DCDCDCDCDCDC0C31CE4853A429A2B7BDC33310588135DD3D9AE28E1295C1822CB003F1AAD3BDB9C6FC317F0C4E1A75BA584E4D1C9A38347108615EB8E44AEF1ACE19238C6F2A75D2953AF23AABCE9A83D7E208C7EC3D7A17D638775EBD28079677D234658E0C70AD640E22B81D5E87D7C1D5E1D812B3595445D57F06B99D4C2693C9642ED298D5AC6664D1DF8CFE66F4379BFFA5F95F9AFFC5BAC5BAC5BA65EA5B53DF9AFAD6E4B726BF35F92D04DF9CDB9CDB9CDB42DF0E7D3BF46DEB66EB66EB664C67433F37F473433F77F2E4C993274F8EDE347AD3E84DDE5F797FE5FD9573AB73AB732B9C59E1570ABF52F81575581D568763FF18FBC7D83FDA7F6BFFADFDB7E2020F5B87ADC3EEB7DD6FBBDF76FECEF93BE7EF44C118769B7B9B7B5BF885F00BE117B8C7AA0868BC107E21FC42F83BE1EF84BF83230AF6BDD5B9D5B9D52C56913C37497C702994F51EEB3DD67BD033076E207C7BF8F6F0ED38E7E83F44FF21FA0F91DF88FC46E4375A7FBBF5B75B7F1BB9ED25BFB5E4B796FC56E38B8D2F36BED8F0DD86EF367C177FCB37FFBDE1BF37FC77D1767EA8E1A18687EADE5BF7DEBAF7626F3873A941B93D7C7BF8769195E80BF785FB70EDC0708DEF7BE383A3C4EE88DD11BB0361F0A6F735BDAFE97D4D2F36BDD8F462DD3FD5FD53DD3FD5EFAFDF5FBF3F7A47F48EE81DA1DB43B7876EC708E3EFE86F447F23FA1B382CC43D4432E5BD75EFAD7B2F7E8BE761C9F7977C7FC9F7D17B18C7C53E39181E7A21F442E805FC2D0B116644DFFCC687AB8AE5E13BAC0EABC3C1F3C1F3C1F3B250FBCBD25F96FE52CB3DDF62DD62DD826DF00D9E90C6F737BEBFF1FD6B9E5EF3F49AA7373EB3F1998DCFACF8D08A0FADF850E48EC81D913BE429BD59DDAC6E662C2B678567E06FACBFB1FE868BEBD47BD47BD47B6431778B7D8B7D0BD7BE177EB5F0AB855F45507DFD6BEB5F5BFF5ACB075A3ED0F201098482BA78AB73AB73ABF99621088FBB8CB7A9D2FB2863D56D77DBDDA57795DE557A1730AE44056EB56FB5B5FD639FC2489875CF8B61385BE9ACE579DE74EF35DEC68C1080C085F11435B45BEC5BEC5BF05F94F34DFED2E42F4DFE921964E6A5B6B00DEE88DE11BD6306B117BCE37F1DFC75F0D7BCFF19AEA29603AED9E560C872FDE40F7FF2873FF943A868A1EE13C13D4CF798BCB096FFFE07BEFF81EF7FE0D5FF78F53F5EFD0F04D99834846C1670C9DACFAEFDECDACF4623D1483402728DF46A25A94251BC421F2142B18C8385D70ACB8573E11C072A452DB9D7ED7525B8C79C4FEEDBC3D5BDA08A08196AF7C4EE89DDC276DE35B16B62D7F8CEF19DE33B9115961C27300A1024718C85D94B34250ED24A309C453040DDA2F21B0D8553261BD3372659596410C2E62683AC6ECD3C7639C3B44AABB4283C138F5AF2BE24A3C185585C678CED85C89628254A09890774795D5E9710828220080290C2B8D710BED154C7C1C627C7CCE42FC925F747FA23FD829672E15C3887D1686D6D6D6D6D85F005B29B1C0FE00C2E739B399221D41E221EE2DA597815066603AEFAC6676F7CF6C667AFF9C2355FB8E60B98E281B4962D5BB66CD9B2857A13912C00E69670F71CE94B17D34CF409C37BA47569534A4DE7ADCD822B649447B68F6C1FD98E2716A37A618297D5B794A839E09A5D4686D7E6E5975F7EF9E597E186F10248456F5FA82FD40777FB9DDBBF73FB776E17A9CBF6A9F6A976B85BBC3CA74F9F3E7DFA34A6C8F57FBAFE4FD7FFA9945850D52F3B4BCDBD516724299422C76C7663E53CABC84942C30A5D8C885B2B0CE478215E88B39C0526059C9BB8E4CE7C67BE13A3015295D0824873582BCB499693E524BB4FC90793BB35EB65F91BD6B8D6FAF812FB5ABE07498B9C3AD3A66424DD901B72B9559C30CF535ECA131E29E7DD25DF6CB82816D630AF48AE97B0AF3009A83C86F7C9DF48DF2ADFF77D9F91135C3B1C736343634363032424F1743591B1DCBFA956CDA615D419F95A9E81B91716162B67EF397BCFD97B6E78F686676F78F6ED6F7FFBDBDFFE76FE2D3A5C617B2C521194666DF0857A37B9606F3E7ACECCEDA8A674EACD6DB53AE09A5D4606AA08EB5B714F184C70704BD89EDD037383D95D49882CEB649D2CEB19697D668CCE4BFC37174AB143653EB3360523574DCC6466846A38094761652E6A1A2F9D760C87C7DF6806649F75B36E967FCBD857A39B1162D68275999FFD6875B7E41AE5EA10B6A5DA591106214219575D6BCE89D4A3B8A0480BDB9238255F29E7C5A535422C168BC504EFE642B9508EF1AEEC8DCC6492F33920E7BA840C02118CA8F85AB4ABA35A5E33E920CF1B3D755A6530F6865EC541100441A52CAF50AB809BF1D4513FA8857D37A57B5557B9AB3C2FBDAA4A0B91FF9A5643C035BBEC0CABF87FFFD0BF7FE8DF3F84353E538A90F7C57F2726272627266FF88B1BFEE286BF40BAF3A5975E7AE9A5977EF2D19F7CF4271F451069DDDA756BD7ADE51A5C09CC7255625AA5559A7BFB702895B767FC241A494051086913AEC25488ED317971DD33F00D572B726F632831B18B627D6396DB640946969860F78F4BD4A86A14B2AEB407767B5AF10FACE78D0F3B2D2ED0622727C53FE057D39C237959709B292C2C4E083A53A4C3051A9DD6E092E96FDD76B73DBD90A22E4962108CC47169A9C1631B0947C29130CA87D6AE5DBB76ED5A141499F5BBA2D14DB2A31AB50ACE98222EB8D7DC56526B41887B44EDFFD03603F19E5B6FBDF5D65B6F45A7A34BFD765E49C60BE2F92B6771E260A174B86A2CE89A5D7606E7C75279020A20A07FAF7DAF7D2FF8ABADD1D6686B74C5D7577C7DC5D7319DB9DF75BFEB7E37FCB1F0C7C21F935601AEEBBAAE741225FC61D6626AD80BDB80FFDCA37A540FEBEEA2BAC2B77CCBB7B8E3AC6C898C6FD12B7A45B3ED9D38DA8257F00A50209209BD2BE80ABA341D6CA052F4CC711DD771713E76C12ED80537EEC6DDB8DFE3F7F83D2AA5522A0526300B5F7068D74ED9293B05BE340B89044EE0048E5C8B0A5420ED168262500CA01C5AE4B0B0A0C9BCCAABBC9DB7F3761E2D017075B27C3190B7D567F5597D7EC92FF9C2C515348FC3DB8EED684C6F30BA6DD7766D695018F4043D81D6D4C1B22DFBA71E1F6E5B05EAA768029957CFF66CCF2EDB65BB6C97EC925D328B9A82EEA03B10D78EB039C4281AD634AC6958A39A55B36A56DAAE95FAA97E96AF7CE573752F8F83EC5F052A98A65F65ADAC95D5BAF3722F2942CFC57B8AF714EF71124EC249C853F739F539F5B94BFD765E4926499F7C215FC82312369FBD2D4603C45A08FAB2B3EAA5E02EBE710C72F18E82DC15BAC730C104AF13C8359B366EDAB869E33BDEF18E77BCE31D22C587CABFBABABABABA9696969696166C296D1BEAEBEBEBEB39D3C9AE97E3B82C21C98420646A91C195CE4B8444415D016A41661A5A1AA075407003995D6E36A09557B1F61638C9A170281C0226E3F67FC2228628C7FEFAFDF5FB81FEA58123B5C963052BD4E6D6EDABDB57B78FB5A210DE04DF58AA57C9B888451A3F907C07D201208BB150A548555006576856C8DD5241142F92C448FE02D427A9AB866469EE8D0FD75BCB6F1129E90BF585FA34F52E37E4865C56F2E2A5092B6C23BF0B810B849DCD940433DB39D32F4F6985360F5A611BA1674E4960CC59250DB9675C23F4AAAA798310435AECF7946DFE91545CB5B022A8686A3EC64FC8F88EF11DE33B66DF1EFDC52FCE88C16A08F8B2B3F9101C16DB16630DC826A20468B707DB13D913D963DF6DDF6DDF0DA412EE0C77863B3139CA64AA021528604D087D8C368C368C3694BA4A5DA5AED183A307470F36661BB38DD9D6746BBA353D19998C4C46D064500856C082566005D3B961E092EEA03BE8D61AC3916C21EA715542255482736F08244A66D1F66D5F78C8DCD306781755AD5A7F62652B7B1A3FD9CAFE6903E2EE373EB23DB5DB930032CEBCA88AAA28F832E3649C0C879139080C990891A4809846DC8DBB71B822719921155221A9A3A590B8496BD2F2E5081767EDAC9D15B41AB6C25658CED955AE7265FF54836B399663392C5E2147C14729F5D3E5297E4577C4CC648B23A46A728D6F0C95AE74900ED2C27C4681D9AAF0AAF02AEB6AEB6AEB6ABFC56FF15BB44C2D7079CA4ED929895E20F60043601C621BA0F2F9811FF840CF784A51C56EA7EDB42DEE5FCE13E4B26ED5ADBA1DCFF11CAFFEFEFAFBEBEF472B82D16F8C7E63F41B4B372CDDB0744325DE2F1B72C3C2BA4F97D225591CB06CEAC2BEB9F3CFE90A633CA5522A85A62C45AFE81525E4CB84BEB91A165EBEE33BFE7F327761610AF77F715A28D672C035BBAC6D6CFBD8F6B1EDFFF66FFFF66FFFF66F52449F75B24E5623F21031EAE4DD27EF3E793730E8B2C7973DBEEC71E4F390813BF589539F38F50928EBF214A6B96142274C18E1AC2A87AC45780F0DED0DBA96B84F847C3356C6CA604B71A6701B7444D19A863613359090DC217540123496F2525E0AE893D9D19CAF628C88891EDB332A65E94A3824BE0B8CD258829103C25C06C6B81675BAE286E9C3616AB87FACB8B8F395D097C8B573610FDF2FD61EE23DB0042633AE59251B476F7EA4F991E647D67D76DD67D77D168546D2DBCAB66DDBE6840873DA67E8F083C519A512E419A3F80A8F2467CDF12B14D161CB771F7EF7E1771FC6B212FBE1456AF5EF11B01DE23758BC5EEA377B36134E3B217ED69AD642FD8B0C57AA2F28AA5EFD8AAD1682AED925B6D943EE08AEAE7C6AE5532B9FE29A4BFC97A7334CC49828573CB1E289154F40CF16B58058DB42FC818FCB6419766C5AD6D660B70A558ADA08320E632A10872BCDC52ED71CF3E4CE9C610902A3134BA2982826CA5D6F7C24BC693BB663B3C3935680E4E4D8E56899542295607B090E931A97146891E3940A5A626B330B9ABF679297D6AF177F53E09D3B2B6B9DAF70BFB89F3471C503C3B4A02E3D2132E6662110243FE3A578298E64011C1573E699F12E3F232A96C990D7B2BCC6F67CD5720E6CA92015A4EAC9CC6766AE6F19EE2FAE119FF9BCB34846CC670FD59C2D7751E3FF62118684CEE29D038C17DFFC3DBFF5F8E6C2F8E135075CB34B6CB34F28F82FF2375C446FB27C31D5A2F72A5CAF4C3AC952B29404AA683CD078A0F180E4F628B0CCAA55F26AA111216540D1F80F995D4860B20005BB13D361B36C1E0B434AAB3EEABB5228168A852232CA3816F0FAB9C17383E740091F8438C3C0C0C0C0C0C0F907CE3F70FE019C9B9C396159205D4879202A80BDA1F103B28C984CD96989CA0F642949210B39E32819EB5209EA451114103C642613A544495A2EB28C8684CD9552D3CB943CD832C891278A8962829B159A8E1663854A683451E01480343DEC2A7795A5B7AEF441725CC775B81C0B670B57872E46E8DEC3797789BB18EA66F24DCA4B79D351106AF8C1CE1EDF4B02C2486AC81575143A0A1DE84474D3376EFAC64DDF30A9431716EC45019520692EC09BD5B46C379EA842A15028E07D3C73E6CC9933672E2C5F3BC382A6C2BB2FF5D61469C00D817B9EEB71E76A5CFBC0DF23CBCE18FDC242D6B51074CDAE0043081A2E07DF70F09925ECF15F0E57E255073D0A6EE3DC7DE7EE3B779F881828A5A683878C8939382CA498A9C9A94969122075A2914824129136EFA017B11296EFF99ECF75AEDC4F499C7DB9542E896B01BE145944743246C1128A97A8208743C7661D30E7353928CDFA535C53CB7F33178A312E13A93884CB8C6246BD5C8EC59338EB6DF1B1F85ECB02C5711D77BA7297A451388CCC0ACF7CB632FED4038A6B85655449C004BF5DBD6AF5AAD5AB366FDEBC79F36633E408342C4E94700F3F758286B9CE955D1DF7FA251CCF796BB837447DDEF9CD777EF39DDFE4D6F4978F211984A512AAF6E7DA980F0E55D22B55E47779CC17AA04683E86D418EE205769B3088FE49E674D19D41C70CDE6601C5EAB3E0B25212F9A6EE62A83FEFA1FBDFE47AFFFD1D1BB8EDE75F42E71903421621B963B605481EFB9EEF6DC96735BCE6D39BFF5FCD6F35B116CD498CF348D721758B405640A8C5C05C93A72833C76819CC5E49CAB1604A6FA57D99EB0AC8C3FB95E5683D25011ED9FDBD40B22444E949A0072089A5DA3C87A106399AFC2EC83CBF7CBECEF2BF7880C72199221A611D05A5064AC8C9541C91987B87941C0A21C26EF9AF7C6796B69CB4875E1A8B2DDFCE5CD5FDEFC655E7EF17335436099DF0E72CFAC18C5CF2AF750E2DFE23C977F6AF9A7967F0A3815238FC99DF1377E2BDD78768DEF1ADF85A62697337973F1CCA4A4559F23C718CEDEA57876E3C53A7F0F640C02E9EC118B5A08BA6673B6B9124058CE823162F5C6D3A8961D4CD34729F533013AFA5E9C65B7EA56DDF85BD3DD25DD226C2F241A4C79245BC12E930DBB01D69476F71DF98E7C077C3782BDC00D5CAEC30E520B5C13CE338FCB23636ECFCE5BB2B6867A14EF01C7E5AE44A2C08CD06EA2942825705D9CCD6517CBE323D894443F340A15E7C2B170A1FD70EDACDC05DFF33D5F6BA280AB365038030976B46656581B37E86067DDAC9B053F807FC598557B4EF84C32F46136032D37D9316B6E989E52DC22D63C377B48970C439956F521E537A1194BA2EA67273CD5F33978252CCEE57CB3EFA186806B76C518724EE81F3CBA6374C7E80E5620E2BA5E66A2326396F776EAD4A953A74E1DFF93E37F72FC4F309DF14281F1223703E0321B6ECC67EA33630F1CFEC5440FE4C762994C95E2760B9CED6697C3221B7C45AC18653A2D18CE5682DCA4C96CCA4C72609C9B2548ED6C2E940B493B0A531393C531B865022378A954EE8FF447FA59C59A83D58244F9DA591D9A113C11BE709EC200EF757A9D5EB3D65642FA3D768FDD0314BE76CDDA356BD76CDAB469D3A64D1C40D698E7A4A9A4217B207522D0694F1D15B671CC067BC6648DE3AE38B4E2D08A43223843622997F6BDAB86097C61CD012F87EBE23A858B7F0E35045CB32BC0F07A23680CD7CBC2F7D8462B0DE265A5A1B82BBC56D2CB65DE3287D935844A4E48029E14DA35B12FF02EAFB2CD7E447275262234BA1599AE57902B6847B43830D11E3B66CED772C724D9865C3EB3A6B17F0E5FCB370682C7119929AD615FCAD79AFD88F86CE5DEA1472F13DC8CC60CA61E358F2753BDB451256BA86FA86FA85FFD99D59F59FD196D0161085B6AA9047E3E59F9998BA328706D06B1B1376479A5EF10163424897AA9DF3CA594AA4659FA4A0C806B6AF397EA1C2EF520D4AC66B39938952EAFCBEB6A1A681A681A38FBA3B33F3AFB23C98C9226B0F490491693C524F42F049740FAB1EC953DA907853AD5C89991332367FC9DFE4E7FA7E05A7CE85742AB05AE82CBF495AFFC72B15C2C17CB9DE5CE7227CE44483D605551A896B3445EAFD7EBF54AC3F9DD6AB7DAED4EBA93EEA43D694FDA93DCDB07D76EB7DBEDB6702CFD4EBFD3EF14F75C566555660719E4837C90770B6EC12DB85D6E97DB554E97D3654160C274CAB8193703B51127E5A49C941376C24E98D124AC3E539FA9CF386D4E9BD3A6059097FA4BFDA5EA11F5887A84F59F835C900B72E2D4C34ED809436F2BD4146A0A35698E1CD5C975569D55E7F6BBFD6EBF34968062112D0824749CF6D25E1A6DEA05B3FAB66FFB10D4640A9EB6EC48A9944A89E445CA4ED99227162C6B077660BB6137EC869D88137144EC455BCC911365B6336785B5061E246B6A67EC8C3DEDE6116AB694351D6B94E7216DA7ED34AEAEE9E1A6879B1E6EF872C3971BBE3C9F37A5523E7EFE563D116CAED8970BCFAAA26219F95DB03A38B534D7AB9B7DC444FD6DF7D4EEA9DDAC40570D62167E38453EB4549A52AA86806B765999991061B14016A9603C8117187581320D81376B64ECF03A8D6C1BD936B20D850453F9A9FC545EFE5D896243EDFCB80B10076C39F0CBAD1A344465603B468726A6D428549C8B358D32B82C3DC18819DB9847143635755262194BAD1F307519E2ABC3F7D85E2B4F324C02D7847A251C815C758FD3E3F43016672EB4F96C70B61BDF985964338AC099759CBF489652F0DF641868AE17C7422B08EEAFC5366B1D702524BDB0EFCEEC36D7A32FECD9C2388551CDD5A1A4904B98585D6E61CF0D26912D6A215A7DA729EE142E151346CEB89603AED915663FFCFD1FFEFE0F7F1FF960D67BC27F99F6C2214418B0EFBFFC8F7FF91FFFF23F8E1D3B76ECD8316CBFF19A8DD76CBC061381BC60E09AA23E95F4694DF908CE8972771D9387CC0E00BF658721AC5D12D0C036662B40CECBB2D3C5AFD8E1714111AE8E73B7DCFF87CB484C856AA9EB459E3B5E8C17E33CDA92DB26E3A3737650C6A1CBEFF24548C4E49F3362C0D1E51A31EDA2E6D6C852F318627B6EB6C8CF00AE02795F54845FF3F96B3E7FCDE7DB9E687BA2ED0946B77C9735FE3FEF135B52518D595F2E7BA06E57F81564266FBAE9A69B6EBA69D317377D71D317E5E9EDF2BBFCAEF9B07317C37056E8CE04B2D85C4B8F4CE3A21D59FAA4825490AA66CF5CA48725D47CCE61F68CFB5C917AF55643C035BBC20C2F1B635C13E9C2346E73B7EA56DD983E90A915E40AA49573736E6E86E21332A9F7C59E49CA9F15A322958C4A6E58FA9F894808DBB2FE111A2DA03D008412F177C3430D0F353C84FF363EDCF870E3C3C820E27B5491626FF8A6E560CBC196834B5B97B62E6D459B0ADE1EB20FD2C27D4F6C4F6C8F9C735FA42FD2079E2DF75DAE8BD5C5EA62F575F575F57568592FF818DB53C303A92DA65692A2B7DC1FEE0FF7335696F60ABD6EAFDBCB613A71604468E2A229AEC0C67D3173DBF23DD1E5F83ECAA204536A854CADC6B4EF363EC6F3C609110DDED01E64424FFB693FCD015EC67997FA3DFB596385F6F9770596F1376465512E580D2CE427643E30B29A8C3BB65958D70BAB21E09A5D61063CFAAF1FFCD70FFEEB0721AFA19503D10BC9BC68E6A94267EAF8F1E3C78F1FC71E962E5DBA74E952EC1F016A4C048C7725904B7894F1AEB893FE487FA41F0852948350460201480A539BA424519B8AC6A231098742FF160E95FB382154AB21E39497F25212CA239466A2615C23CE0A01790EF9F218629FD2EE2215A402693F201B711E148435E82A73B09D58C49CA9E5331459122849912E18120A5086C21DC71E186BE25AD03BD92C8EE2F2240D195B966559B85F507EBEEEBAEBAEBBEE3A6D0428B029634E6152FC9743FD72C7A9748D9D0ABB2B9C03E88458B8BCEB5DEF7AD7BBDE85AEC37072B85EECD954C2BA30CDE12BCB162F9F7D710CE92D2C566657C8AA21E09A5D61C6792326EC98131FFF8AB1B2E8EF8442A1508805EDE0D8B0DA650769D6FE0AB623F1459E2C247C1AF881AF2F6D29EFCB6C67168E9022165C69B7DD6D77B37E96B8F93D913D913DEC9EA14604FC1A358CC52F595E5172D5C8BCE258861E16234EC1AFB9702E2CD85DEE42AFDD6B0B72E5D681B2676A51C0B4295E1E55CAA4CA681346E1760BA6E8236794F96F1E61AE129620393D2D921E474E9158CD72145ACC698D3AA84504172CF1194A691C82AE9EE7791EC650901FAB9525BDA497048BDE147A9CABEB5D8CDCED62DB95E57AB94A5BCE3F6365AC4C35229D35075CB32BCC306D216327C205543CC38D0A581918532A94905F7BEDB5D75E7BED871FFEE1877FF8E163771DBBEB98A86B613FC01C7066A6E003B6410059C847FD91FE88B07999E8848955829CC091C043869C05D7958A4C47B2942C2545C4A37DB27DB21D2F33CB7AC08496D555EE2A77F1942DED1CA837AD8C4FA29C2827B0581154C76EC6240A9126363B1853834C82F07D91BE489FD9458ACF0AA166FC172C56C68812D2CF86B2A12C82D55824613101F78F60A0FC6D90C2B8C0C994ED844B1646EBDEE8DEE85E615C532C412B1FA2EBC5B384C88139B61AE666B29BE7799E37313131313101156EA4126EBCF1C61B6FBC1179685EB2E0ACB0B4AA9EF20333979EB81788EB54D3EF160AE492ABBEC20D6F04C61C4F3EBEE76752C66D1E5DD8B96202EFA3A412E89DADF4DB9A03AED91569C8624A7723431B8B8B4618130F6D19DA32B465E8FCD0F9A1F3780959B346284E192B6365341176CE321A121CBE6924F2C01421B34A95AF88DD80081D254BC9521261586963102FC54B71144548810499846D0B8542A1C0DA5B9A2448B2942C252B550CF3586928A45B75AB6EB849566232694A26DE12B630E9A0710C43EB0E44F42B8E3430518B83DE1CE2968692544FCC910653D453E8692C125941C9D9E4DBB336B59C159D393F151C9511D4DB1FEE0FF7AF58B162C58A15687A887806C71258E8B41A86308FFC0C51841EABC712A75E0DB1EBC2B4EA2E3793C52E921A483D50E4C054E5E3F4C75C8F25F78BD812D513E86A39E09A5DC1861E473FFCE10F7FF8C31FC2E568BC4A9AFAB13D32BBAC4D0D5C229886789552DAD49E6FCFB7A3F791AC974976516BB4C0428FC80D930C0573A1CDE2192D204C5C65E932D4EBF6BABD5C7D28B94923B7CDB4205C3570BC50CCB80331854959CE9003CED80F46006E5B13154108175358B7EA56DDECD2B06756B3C2AF787B29B54A9413E504E78F396FCA0B2329020182CF04992023E819060C4D0A68BC50C0FDC55D033D0D39D7B56BD7AE5DBB16017C53A34A5A745024C074C65A7B061C9D2AD4F13D164C4D8F343DD2F408F2CDD09DC6E2AF9AE71CCF3667EBABFFEDC5345C29961495641A2B19F3EDE7730E1CA5606E73F523367F8DE8EAADE6806B76051B7A92BCF4C1973EF8D207D1224D589410F3239139C625EC2AD09841DA1D52033BEC017B03696BAA7DAA7DAA5D13A0A00C31AB4D7111111723F16F35AC4C1956594D734F5F030F556AE2266557A4428CE0ADA64C4BD811EE5046A3D7EEB545B2911D27A65459DC18F9699343CEFFE52B6264862D19E5C3ADCAD5512F64D912DDA82627272727594B197787C3892C2A82203F8AA610D8C7DE9A0E341D683AB0EE73EB3EB7EE736B3FB3F6336B3FC35C5C9C2193DDE47CA8D2D40CC2B3242A23516EAAB871E3C68D1B37A2DB52737373737373A5A79AD1338E02520F93FBC000984FF98D691CF9A8BEA5011B222EF82DCEB0FA6C2E7E5BA9C9A0D9746176BBB0F3BFF85673C035BB6486C91D131C325E73DEC3D4D4D4D4142A83D12597F12BD376B03D231BFC1359312069EE8C0B37CC9D65874786478647B82712BB5BB330893590E5742910CD2E9C8B6A84BDDC17EE0BF771CE52BAD89ACD0082200802B8529E9E708D1CF285D315A2190434F644F644F6000173030046786603001E5B76DE5C8EC501645E5E30A295C6F0C952B284A84552E6220496C99D4B507DD7E4AEC95DDCF640EE91C17FE62C3B9F39CE70D5AA55AB56ADDAB061C3860D1B961C5C7270C941AD7102D1AFB037A66571805DA3DD71F637EDA7FDB470B9F3F97C3EBFE17F6DF85F1BFE17D8CE0BA5938C823AFC3DBB3BAFDE78D1834527EE1ADC3CEE823C698B800E7144FC8DD96076E72D4CE3BE485FA46F310A8416CAB887159E433CC98888D472C035BB64C6852E17B607BCA2DCDD482B23E116E89415E69C99C81052C570A58E375C3EC4B42C0E2673E6C94463DA8D2C90100000333E49444154344D8ACAA692B3E0365867A1B3D009C52EEEB0241A3DC804E3BF9DF9CE7C27DADA73E875AA63AA63AA03C1E42299847F91D98DD38772C6722D24A321DB03B912CD8DF7C9632E817D848B136F7C18FB72189939A58C05E58E537DB6A64A467F6B04281604EDB17BEC1E4CD95888CCC01B3018F538AE9C09F73E2277CB217D0EA1C375C141CEEE4ECCDCF9ECD6B0BF617FC37EB348693EFBE4450F4689C3B6FC6C5CD8DB3ABBC1B50B7DA98A5CAC849AE3857861CE59DB8B6F385B2947A4FEE535045CB32BD8868686868686E0C24FDF7DFAEED377A36730F081494B91AC302160B043D1E001AFBD4CE214EAC44B8E10F4F8CEF19DE33BA55233E5A7FC14D7D772104F102D75F995F3E1FE429445960C28B76A30DA20624B462ACCBB96902FC950F0DFB2D0A1DA65119ECC8573E19C94FA5075AF5C0BF5B5D5DAC85335AAD0D648D48283FC42E02257AD71D461492FE94985B1A40C2800CB775CAE971640BCDCD11076A2942849F817FF05DF78E317367E61E317962F5FBE7CF972E1BA53D5AF68A821A140C5247C07CDE710E3809114F67BD6C93A59F09CAF7AF2AA27AF7AB2525EBC7AC32286A30E8BF14E5D29C15B18DED9B922603C215CA17E71CE16313F96A6A921E09A5D9106BC85894CAA60F7C5F6C5F6C9634D2DE4CCEA4C4CEE030303030303DC5B69F6C2121C97F9CF5A152F3903C6B526F6156375626026226A99A86E066C47F296F82D77F015141B2FC68B715696E690AC64494BC552B1C4F8865D23C703B8D456ABEE8511EDC8949F94220D90E00C834BE68885862C0DBC6B766AC229983109981906971291CE7C67BE93975CFCB47061128F3CB3A619F572B61E4EB7ADADADADAD0DEE8165522EEC99C77E16DB358ACC0815ED5CCE7661C170890FC50BF142DCD491E6060C0B5B8EC575F9F8A6D60DA96657A4B1C693EA55BDAA778D5AA3D688639ED833B16762CFC496892D135B40DE692C37961BCB9856808FC7EE1BBB6FEC3EE009EEA3C20ED8B66CCBD654A69972252E2D554A955256D92A5B65B8647C6327EC842DDD46554225544270AC6779D6B42EB417788127DF24FDA49F641EB596214ED9297B3AD04DCDF8A6BDB1EFF95EA9ABD455EA426FA55021540815A43AB9A7DC53EE71269D496792EB98033770034163A162A8182A8AA848D24A5A495C3BBA06A91ED5A3243F2D8A54C0823DAA47F5306DC757BEF295677BB667FB13FE843F813147609CA934F22B8A0414FDA25FF4834250080AAA4375A80E1EF9F2EEF2EEF26E8D60B5ABB8ABB80B5B6A1D820B56C12AB0E38FBA5137EA22B39E3F983F983F38141E0A0F85B91A18F49F20192483A4EA549D4A1A7B045D415730BD844232C2B77CCBE79A63542D87F686F686F6E2EFB59F5BFBB9B59F63929404CF0D856DFC97EB47B107385A8C1E9208757BEBF6D655554AC4FB9C6B8F205928E4544E55ECFEABA54B3A8B9DC54E2C4A501CC85B82A581BB60FEB71A632EC20CDD84E6184B900AF8B25376CAA878CE67F3D97C365688156205568F1DEB1AEB1AEB9AE898E898E8A8DB55B7AB6E17178CCDF52AE41930D0760D01D7EC4D6590E6C01486A94A84DD0979B0D02357A36A3818728C841D19C5F26BCFD8945DA6D6C596262C260D311A66D73B83A2131508F1D1F9B7DC6F5873CF069AE7B3652CCE05545CEDCA2323B896B9C124DF61E245A159318227452A3E4FA14D254A8952C2C4F79572BDF8AFD471A267142201143A96568FA474C6A55FAC48A58D0F657919919B490D0EC59BFA59B22565FE4CB7C18D2BF8B7121BF07DDFF7852257B52D5E7AD1ACEAE614036F597D357325E3E5DD5C47804D8B6681E847CC7F33B78D2C7BC3C30D0F373C3C7FD75BF1EA6A39E09ABD990C2FD2CB2FBFFCF2CB2F9F3871E2C48913E83923591F2A4CC2EB04343CFAE0E883A30FB222B1F4D925B6AD3018497F0AD301F2C11284E416F7A4C4C415C0EC50B96049CE903A1709A18CC29B5C292BED0B2B04BD05D7B24A54AFD3EBF4B22C250B6270B3043E0756AB16B10B7236DA42845CB264791118276C87BD71D098478379CB52B865645E657140B95EE6BD6BB976CBB22C2BB637B637B6B7F5B1D6C75A1F5B7968E5A19587C082C608F09E3949C1542F79B0889B2D46A556CC2747D8F9AD5F7DEB57DFFAD5857DB659C61277A11A02E35C0B78AE7403E696051611BBA40A60D6714059A370B01734370C0A2482DE8007000035045CB33795C14970FF607C1F98C6728C4A299D61CB5A484C8F628CCB3D7467A050C108536A7D6AE18AC8B4BC32999C9B8186D93D332E67ACCC82218C92799F9CEF64A4CE2E50C3826887907AE3C3A42A76BD1AD667A4CB3103EC9972BADCE15898D5C9373EEC9E39C600ECCBCB11AED2E627845DAF96D3C59950B911635F8EA068A8D7884F54DFBE7ECECF3654CAD37EDA4F17C866FF159E735146DB3DB57B6AF75CD9D15798A1888EA8641CF398FDA7B8838B313E381311C6E168470D01D7ECCD673FFEF18F7FFCE31F1FBDF3E89D47EF1CDC3AB87570AB4C3DC47185ABC6147FFA9ED3F79CBE07DF600FA2FA449A4D086C72375C3883895D13BB2676498B43C6D9866985491462ADA457AC75F0254EB5C853C0E590C407CB7AE00CD9E9F26F99B9CDDFCB24451C6C6E38C14E5DEBC24B016D9C0F50886035223D09F6351604D2AD28514A94125A9FE3643959D629308684A7B8610A68E33CA178850FF2BB6DCBDA96B52DBBFAEAABAFBEFA6AB30D8318059045B39A42F172CEAC7D4DFD8F51D979C3576EF8CA0D5F01BE59BC279C8548AB2F739245E71C894B787724A133C78CF295683C56D22CC44819980BDF0B3B560D01D7EC4D655CC1895527CB5004A9373E82DFA80C860198D6409E8C51A666845059148233BBEC8CB96100E76EB99CC60C68CB37F4373B48EE62247D768DFFB28BAD74E6BC50E0ACAD391AE67FD9719AD5CC92DFE560B991D995E0BF91AB66276D72C5F9571CA6669C0D740EE6F30C4C669299E402AA191E32F37B76DBB4B8998F99EC5C3684BB41F21246777BBE3DDF8E2131B797A7EE8238C32CFCB9B06FEBE5698C83A1C46EDE0B4D3AA60AABB4658D055DB337956132829B41AB86C6D1C6D1C65135A6C6D4D88433E14C38F008417BD01EB4233487DC8CB8EA8CCAA80C8731D90DF0B40E9710EE0A7785BB545CC555BC142A854A21DFF11D5F502C78C29C8515863339182FE6C5BC585017D40575EC6EDD7EB7DFED67B70A572AB8B3DEAFF7EBA77253B9A99CD7EBF57ABDAEE55AAE385121BFEC77F63BFBBD8817F1229A16559FD7E7F581056DB62B088A4131288A7BEEB03A2C61235BE3D6B8356E8FDBE3F638C613DF94464A23A5110911A3FA76A430521891711E0A8682216CAF76AA9D6AA7BBDBDDEDEE96968220525570BA6089ABA44AAA691256DC8B7B710ED7CB39A78374900E9543E550D94DBB6937ED47FDA81FC57F27774FEE9EDC8D6F70596B9E5EF3F49AA751BAA605ED7356CECA714B0639161A29DA966D098740C29B5127EAC83E31C242FE2A0485A060B276ABB7D9CB8DA4C5828AAA6925CA424FA1A72024AFD939CC30CE289B62A26C22F7F1B07A583D3CD7AB3033D0A23797F4925E723182F65888CC7F9F28FA0AA9909A29C98E119BC3EED22AADD2E313E313E313180D3C7B35045CB33797018B50968E0522B89212132B5CAFC9A46594A64946184C66EE7DA465857B7EF6831364014BE6E20A032A17CA8572D883FC4DC895D12A0793B550336174C6E27274A68031B18BB6E44540A520B35989CB63380335CCE02D57C2D33CE65C97AC71B9E94CC479B32E378B9F90E218D20A501303375BAED7E846CC2C814A0F9A16FFC858194BDA5A80758F74C6E2E9469926318F2A1C83D0FAA8CBF27CAA93673733F3CAFD821623DB3A57518E8B931117D25C5FA82FD4A7B1E86B39E09ABDF9ECF5D75F7FFDF5D721B5810C162A29871F187E60F8014C8BC89F9D3C79F2E4C993935393539352ADC8E162CE2F62CF1A4A26EC65E263FEAFE9F6A4E29682CF26CD0ADF8BAB26C5690EAB567251385BDE83C97C36C3CEB387974D9A18F396116496A6871428D602DDDD56B7D58D8505CE90C3DD122826CA95DC4E8E49109B5A22107D6F7C38232BA547E852D56D755BA2C6D5F050C3430D0F5DF7E7D7FDF9757F0E1C2CE3C08D1171AFD9311387967B158BB0A5E3388E037EF5355FB8E60BD77C01C2266693C1F93CD54CA7C29823046DA23D4E97CCFF6D5A6C6D2C6062D6245F8CA32C9E71B678AEBFAD21E09ABDA98CF3885AD7583854B42984F5583D568FE77BBEA7693BB31BD09C13B90AB3C88719C54C6BD22A77495E03672BA166B80AC2A3827109C96955C546775B8DAB6CB87F536B5A6B6040942B6D28B90B3239515E70F06F1971F27FF97B76A51C7C36630C1A4B9CA311849E3983CEBC741E7F7E2AB84A988BA3987433C323453115CE0D57AAFA959ECD535353535352AE863CE2FC9116897A4EB64FB64FB6A399E60C67BE688876310CCB26DC23697F79112307F3B7F92C1A6A0EB8660B60B307EB2EA6A1AFD1F9F3E7CF9F3F0FD28DD46B6643D95076E9634B1F5BFA1810035EFB96E696E69666383F99DA764FEE9EDC8D40A5483976795D5E17938930B1E27BE02DEC8D1BF069A163CA269A6D1898126532A52B1197E08AB83D0333B1B51611E9201DA4B125D72EC3847B6C54C44A172683C0C5E174332CCCDF7341112F1AF0B58C24B50B14114D6491E9BFDC7C42903131C63980CFB5CBECB0B13760C7E1E1E1E1E1E133F79CB9E7CC3DD012E7E58BF6541B8168A0648D8847EAE2329EC952B2945CF2D892C7963C56FF50FD43F50F21DB876B47A5296AD3E1A465C4A8A161A5671B076C3ED87CB0F920D036F60F4527DE7261D1EAC5D18546F01CEFA63863EA008DB1AA547685FE4295DCB6E881CF4A6AAB640B1BA0E6CA757C530B41D76C5EC653EAE5D024FCC8478F7CF4C847115816B62A356907935326E207871F1C7E10C16A4C612828C294CD3C640EC04A8531B925693B6854F46AD42D2AB6E13D739657231FB14B2067636652B51034A14F130BB25BE5303B8B6FF0D179547941C07A555A9D2E656D598B0A67C5922330B3048B97208C893932C1BC6E11928C46A3D168A43FD21FE9E7E50EC70F709E585AE17B142321108DC60C1C2F61E70A7C8392242E3D82C390BC6F381C0E87D77C76CD67D77C76CD9A356BD6AC319F4C2063B870B398074FA6A8B6556DCC4C9EEB6F4DE305C7A22B4ECF316C0B375C29C38DF7178B6C2C77F8BF40D5189F850ACBF39E85205945F61D4B0A10D0B078AA39E09ACDCBB83EF2D29E0956C12FBDF4D24B2FBD746ECBB92DE7B6A0EC1D93A6B8909497F2520809A27FF0A953A74E9D3A353A363A363A66763A62B704970307C693BE99C5E44CAD862FC9CD7089915986842B32C534CCF60CECF2CD3E4B1C98D52A59B9388A0B9C8CF3C19930A2654213E7C835590C72C39AA08721C7A1757CA23801BB7C2DEC0F17D81FE98FF463F9C2E43546E73C62B8A7E8388B6D8020DFF6B6B7BDED6D6F5BB76EDDBA75EBF859E2FE4E4C769338073A3E914BC6E4BE71E3C68D1B372E5BB66CD9B26582D83A0A1D850E68202F460F5D183AE382AB5CC9C108233D0882206085EA4BF6B64E4E4E4E4E62F9326746F12532DC5316D794E73315A482543557013E0A62244D4D4D4D4D4DB51074CDE6659783EB854988385E8817E2DCF64EF013A93DCB0FA8FBAF96AA25A7CBC892494066F18CA939C5594C0EC67200D9EC3EC40A501298855120DACCE6CEC0CD663C5D2123CB19654DBBCAD886CFCDD4B866DCCCCB02CECE62C8CD73E3E5029F0FA35E46B495D8DDDA37946BE77034DF0B095053CF1FC9E9F2B3C17108206353F399BEE13032F739E650F37CCC4CF4F0D284CB8A247901F113140241212E1BCA86166011C052AC8C9B79C4F8E895AEE5CAA25C49AF6B0A4A4B12A4EA05042F7D307AB53AE09A5DC1C66C4FACA98183C7778DEF1ADFE5EFF277F9BBAC87AC87AC871CCFF11C0F93A6DBE576B9921B8E0DC6066383E23CF67A7BBDBDDE4E6FA7B713FD7C34690E8452734ECEC9C9249EF7F25EDE293A45A76897EC925DD2B8D0988E8B413128A2D39138062BB0020B5318AA6C85115DB24AD6B4332E7805AF104C0553C1146344A7E0149C027A2B8953497A492FE927FC849F102754500555907328F925BF84DA5981BD492B6925598EA3E497FC926F25AC8495F07BFD5EBF57738154F053CC17F3C5BCDFE177F81DD8274F46CC8B46FD6EE0077EE0FB65BFEC97F1373ECA57BE9AEED36C294B4DF3C6712DD86759955559702D8CBA38CB48868250100A72412EC8890BEFF6BBFD6EEC1FE38F71964CF36861B4308AEE49A02FA12EB3747DE9FAD2F552224261671C51028CBD6EAFDB5BF00A5EC10BC2413808D7DBF576BD2842DBFD76BFDD1FDA18DA18DA88336C3CD078A0F140A36A5433B5FFA9C42BAEE496A62BB47CCFF75CE5FE54BE01C792D48FAD6C65F31EF054234C0A652E73B92CBE3AE925BD64F5416CD108233223EADD7174541C880EB31DD8816DD62523006B5E236215AC4C5ECDF9CC1E8743DE1DB7D10C50F3D1393B6B9222714FE7335F61AC9A54936A9AD67E9FCFEE6A56B34B6BA259430D0098E6C001226C6F265CB4AA59C21366A10EB6D7AA570D629196B33454A3B1070DE711B6E6F21BC6318C3B2B552433AAE33D334E651A57A580B089CBB9C7F00C8C6553D38A46401389E49127EE341FDD0C9ECFD0338ACA99B4703AEF99EE358F367F6F2A54F353216E981A4E2080CC62265A69598FD3E3F4540AFFCEF0DCF6DABD766F25820F9E58E48CE52BC88054C08BF2ACD2A2813B13C3AD56724EEC66E6F0DE6131649C0FE7CB71DC6AD021DE5FEE0F5D0D8B5B3A74D16F196D6B5122C40392A564295949CF4B1679DD76B7DD8D61E37BBD18AC7219F985DD69CD6A76F14D3AA79281E98A520DACC7113EC2DC8B90205E5ABC77C845D5C5EA627531E417812A24D74B2658B9CBEBF2BAF0728AA3A2FA57D142E226833016B540A0927ECBFC6A213791492FA6DD93BB2777B3FAB4765C5287665111D66116D9C20A8CE8A9F6A9F6A976E4C2471E1C7970E441D05B9065C4B8E1E8C215C7AFA6A6A6A6A6F286996E9BEB95B5A50C2219D485894B8C78F466E066A3D2D708FB73D11133B16708AA2360CE2D164801589C2BA6E6FE707FB85FF4B328640D614B297E2343CE0FA3374330D698D6F9E8BC80A8A692582B7823630E44A5DF56729317C601AE1E490B72EDB17AAC1EBC5FD0B5AE464C03BFC2B21B6F811489D16860C45A1E6D79B4E551BCCB4851551A0D93A8C5D117DED20C47CFD564B97F613FAE59CD2E374389D1B24F2DFBD4B24FB57DB2ED936D9F040546E830F142BC10E7D01F04FA45B4018C56A3A088D9B6DC3B1653391C982960696688390BCBEC5CD318C3693898F6C6CE6386AEBA9C752637CCCE8F912EE780B55680B44F46E1FC31C3D48C2C2B2E4108E9F21D649C6A768E92BFC9CC5039E7B9853D4EE43229520A822008C6768CED18DB81A2B5C1C1C1C1C14110F4E4B7D4E1588B22906638D3FAF05FEC078B0F9C2D267D09CC1A996066683392C37FE160103E9DFFDBC199E9EA7FB5B09C61D36688615430494F18A544781F41401335EF0A265BEEADDB5BB7170B230E38CFD530638822F40515614EABEDD458D035BB024DCB75A5825490FAFE6F7FFFB7BFFFDB2FDCF6C26D2FDCF6EA475EFDC8AB1F812B424758FCAABEBEBEBEBE7ED553AB9E5AF5141C2A32645271D855EE2A77312E0422649CC4B88A3BEF5652BC62DCC9130D3B3C7E0735E76A0472790434CEB0D1FEC194A5ACD474811D15EF9383CC5AC89D82D8BC670D4D828F4D585FEE9A31DB68216516DA34C44C708650BC92DA5F1242D1963E14CCC79D025EC7078BAA152B56AC58B1E2AD6F7DEB5BDFFAD6CD9B376FDEBC190DD8196532E799D130979D70B612FB5CFEA9E59F5AFE293C99389F0B2BCF83B304731BE7803EB5F82F9E4F89DF54D1A108CE06C1E14A2546ACCFCCE4C4857D73B1108182D8ECC54E126406CAACA29B6FF5C6743966A723EC5F097FE34CAA5F345463351256CDAE4803E32AEA45BDA8303C276E9BB86DE2B693779FBCFBE4DD677F72F627677F82C9377A327A327A1253C9B24F2EFBE4B24F2EBF76F9B5CBAFE5E68392CD8AABB88A5B45AB6815EDA25DB48B4E87D3E1747896674D2B2A9A4E82F156A0021528108B82DEA03790D60B56D92A5B650D191A595833D31924836490E49C2EBB79666B6B5967046F7DCBB7B406127CE62AA5526ABA06D757BEF2EDB49DB6D3DC7ED12C31120A9552EAA79311692F2B4F79CA63172E5327A152C6A90E19283CCC21178E71AFD56BF5B20356BDAA57F54ACB048C9215588126FF8933D4020B386EBB6A57ED725F0EA943EA902C50107C6EB01AAC06519BA2AA5374AC9080338EEF2A57B912F07494A31CD5A7FA541F38C67EB3DFEC3783FE260B2F2845CFB14E1747AFEFACEFACEFF41CCFF11C5EF4C0E50B22EC537DEA3F09D8CEEE7A61EC8AC08E9BDD980259FD7561B9504D9DB168B92B472D80CFD5ACD2D167BF16493925CA897262AE8AD315F75943C035BBB2ECC89123478E1C014EBDE69A6BAEB9E69A339F38F389339FF8EE77BFFBDDEF7EF71BEFF8C63BBEF18E973FF8F2075FFE209C876473F744F744F7DCF01737FCC50D7FF1962FBEE58B6FF9A27480E9B6BBED6EC92475163B8B9D0856E3EFA9FC547E2A2F4A58541424F42ED40723904B0E098E8451ACA99FCC88D6243471ED2C87884D9C6DBA73EC93D9C2DA3764A638C60C0B0246E78C7DB9E65829A5AB3A9BD5C99522045AADB3524ACF658A5427E35D52C666F94F8D62462564784E807D7107E1BA5007FCD667DFFAEC5B9F851C47D3C34D0F373D0C27042C880035C2C8CB9F5CFEE4F22711C0C4368C3E611B366CD8B061434B4B4B4B4B0B5C2314D9227B227B227B805FAFC4F29B4A2699FE78295E8AE31AABEF166CF2C081F599C0C5F11BB83DE0F8C5EBB52C6F77D24B7AC985EDD154C96A08B866578CE1151D19191919194108CBDFE06FF037C065863F14FE50F843A25DF57EEFFDDEFB25C7935119958966A2996826FCF5F0D7C35FB7AEB3AEB3AE9B21018BB05BC24ED8097112BD4EAFD38BE2163B6EC7ED38CA8DACC00AACA0DC5DEE2E77DB493B69EB9D4181E4BAAC2EAB2B2807E5A0CC8E810F58A9AE57052A9886708C6EE5A302154C87A0517F09D78BCC256B4D03D792FBE760AFB967D5A5BA942688C88B008D80E6599E258546B28DE77BBEA60226D817A38A4E7E54CB6BD96F7CB47C30A3619C29FA2C02F5D232027B63D42BD715F8813F7DFEB8B2C9603298E45885B5DA5A6DAD963301BA6D548DAA115F6071169C0A4E05A7860BC385E14278383C1C1E0E9542A55009980C4BB7201B64832CCE01E90CF569F569F56951613BAFCEABF3B847F9503E940FC9F779955779389BC590A180BBAA44209AEB7E2A9DA1384890A1905DCEA99CCAB11B365132464332DF93FEA43F89B6A16AB7DAAD7663298CA241FC968B91163B278DA8981376C24E55CB88F95B0D01D7EC0A30E48D5EF9DD577EF795DF052ED9F8CCC667363EB364C992254B960001A3B2F35BBFFCAD5FFED62FFFDF5FFEBFBFFC7F7FF9FC03E71F38FF009013D0C92F7DEB97BEF54BDF02D392B37A4251817007D161848E9C28268A09E48399DFAB75D2E5802DE1634684A67A94D6E0CF28C8115747E890112A0B5BF258C9F746169631B199C1D51CA7526A7AB233E707E6FA5614FD504A29A5097656CA9C51D8998D19CEBC1FFEA914A119F96926C109024607A14429514AD4EDABDB57B76FEDDAB56BD7AE450E18081808154E111817BDB3FEFDD57F7FF5DF5FC513B8FC89E54F2C7F62F553AB9F5AFD545B5B5B5B5B1B54AE98C40732E0AAA7573DBDEA699CA794BEA006BD8A50309B76EF66DF1219D3B49FF6D37CD558AA6219842A7930212A55B58E6C1BD936B20DB5032253DA6D77DBDD88242D2CFA9427075101ACCA16540253A85B693FEDA7ABAF2A5E0C93EA03AAC9AE9521D5EC8A31147288BC06D6C5D95036946512134246A0D260CAE690A9680593BBE52210D31933E9430BF99269142783FAC4680F4761D56833386C869135F469668E0D352B7696A643AA6433647CB99A99CE818FC27B60276A92A7669099ACA0776D56F7728E99F7A0E5950D17654623789CA5A5602E940BE5C2A170281CC27D379708A2F9ECB88EEB804F80251D5A389CDF767EDBF96D2875C3F65860A1700B3C5B7C8F806AF5B94FB6EAFB0271F76B604A385A7986A1D595F6D37E1A2F13B3B5D998310E3157945D2D8603E31AEBC5509FC69EA5723DE925BDE4FCF7796186E5A3F0EA89CB5D43C035BBAC0D7D638E7DECD8C78E7DECE8D1A3478F1EC58BB4F2A9954FAD7C0AF939C16AA92015A4C07F7EEEB9E79E7BEEB9EF7DE07B1FF8DE07308DBEFDEB6FFFFADBBFBE7AF5EAD5AB57B346345758F27A19EE998BF70BC542B150349BD9999C5B664BB29360690BE15D137318D75BC905F298702ED9FC2FBB37AD3920FE6B8497991865BA312EB2D272BAE40867E05A5710E6C49ECDEA5EC9EA1AC6FD83F18D6874D312C75C2208C39C6AA351F78CEFF13C80B1FC962FBDE54B6FF9D2F57F7EFD9F5F2F2D19847845A81DA8E595DF7FE5F75FF9FD63771DBBEBD85DD2BF361C0E87C3507EDEF4CCA667363D73D555575D75D5557826D77E66ED67D67E66FDE7D77F7EFDE771A1F8D55C19D1C8B0C265A2C3D2ECDBBF9972CCD598994BC608209A7569512FE693D935C06B08B866625C757AA9CFE50D435B85A3771EBDF3E89DE7B79EDF7A7E2B6AFE563CB1E289154FC8A44C2B4A04A287B60E6D1DDA0A3709D1F3FAFDF5FBEBF70BC6455E120E869AAE9B2E534369648C414D97C65B322E643211FE16FEB01116D6F4B90CECCB4C693E8AE98A66681441795C4D98C2A0806994310A4DF335323635BBF0CEDE6358F66090ADB8F5A1D600D16865C1E7A3A1792AE5E20F460CCFCFD2C7973EBEF4F1AB9EBCEAC9AB9E6C7DBCF5F1D6C7359D678A8EE08902F3008B27BEFB52691D2FC54B711643CD77E63BF39D58BA49483C514E941373ED748BE91B7B901CF3EC861C73D576E502309CB929ACC191804B7B86FCD654322793C96432994B7BA235BB1CAC9292CEC5374C55A7379FDE7C7AF38FFFE78FFFE78FFFE7993367CE9C3983C90BAF56D3234D8F343DC2B2F8E5BF2CFF65F92FEBFFA9FE9FEAFF09D3A5F757DE5F797FB5EC83CB3EB8EC8370C0EEAFBBBFEEFE3AB75557CFABE7D5F3C1BB837707EF5637AB9BD5CD82026F5637AB9BC55F3D1F3C1F3C8F73134D66B0706FB66EB66E667109F9EFDF397FE7FC9D3AAC0EABC3DEAF79BFE6FD9A7D8B7D8B7D0BC2E0E1EF84BF13FE0E3701C47F1136E7CCAB868FDFA3DEA3DE23AEE83DEA3DEA3DFE7FF3FF9BFFDFB4CCEEF3C1F3C1F3F85E7375F8FBB03AAC0E33DEC57EF8B7F27977F0EEE0DDD6DF587F63FD0DAE51CEED96373EB8466D34808C315687D56175187B9071BBD9BAD9BA597E652C4AB07FC1C1B7BEF11195EC9BAD9BAD9B79ACF85A70B6CCB2E671C0F8E31A813E5B7FD0FA83D61F0001AF7865C52B2B5E69FD9DD6DF69FD1D71FCB739B739B7D9B7DAB7DAB7E2496B785FC3FB1ADE871CF0F0B6E16DC3DB0AFFAFF0FF0AFF0F4FE3F837C7BF39FECD735F3DF7D5735F1D7C6EF0B9C1E78E5F7BFCDAE3D7627B9C49D3FB9BDEDFF47EEC07CFDEC82F8CFCC2C82FE02E9B284DCBD05B96655975EFAD7B6FDD7BF1F4CEFEEE54932D9EEBF688D648A01ECFBC526A1A7D5AB758B758B75CFC590267AE0946CE631C16C3F00CCFBE4D0D01D7EC32324C6AC8B1A15DE0C8F691ED23DB813326764FEC9ED80DED212E7461DD22E4AB567D7AD5A7577D1A0521409C668F1D014AD03FA25E2E5A401515A27018DD76B7DDCD7D76D9F1B0CA95A05B2330CB570AD7222E19DAB340C62CB208333A079BFABD5A7532058DCD9032E7412B65AFCD7390EBA22582B67FEA3E24E7C3D39F7126BC8D899ECD1880799EBC67BE3A0E8CF3F7F88675CDE43E42D398949F6738C38C95B13292B6C88572A11C9F039E28C45A809521830AC63E32C400C6B24FE06CCBB22C0B4A6D264EBAB4D94AD3F00C201DC3DF23CCCBA28C8804985DA1AE5C9C3DBBCDFF4ED572C035BB2CECE4C993274F9E3CF2D1231F3DF2D133F79EB9F7CCBDC8FE227306E633A6AD5FFCE62F7EF317BF79F5E7AEFEDCD59F038AC544862D3159C06DBFF0C20B2FBCF0C2D13F3EFAC747FF18533C6829E0C1825C83101FF7F814B14970A193A56429C95925096F229C582E954BA2D2CC7ABF8C629183C435B2BB623763B63740CE922966BCE0D0EA8F8DA60B5C858C0F87E3E40CC9E19915CCA643E5EFF99B4AA2925AD98981E798E6C3FACFBCE060652E334160562A6B4B2B1A43518CEAB17BEC9E96832D075B0EAE7E7AF5D3AB9F060B7AFDFAF5EBD7AF473A839D319E0AC17C3D568FD533BE637CC7F88E17DFFFE2FB5F7CFFB163C78E1D3B86AA628E280061E3B84B1E5DF2E892476FFCEA8D5FBDF1ABA856FFB9E77EEEB99F7B0EF5C41819EC13C74560BCD2DB216E2C1364820C3F63D5D7DD5E4CE3BC2C82F0783B3092780717EACC11F0C7B116AACF31461B310C3C5720785E98A2D9EC5643C035BBC406C739B46568CBD016A007E4BAE0FCF00280FF8C17188D1358B917B4297C447E32168BC562CD079A0F341FE06A51ADD6B65B75AB6EA9E64CBDF191C01A9022D4B2A0CA84A919D2FC98AC0D3A925C12FDAD35BAAF80E1380FCAD85ABA8D0277F27F89C7CB689B4B77B48F81A459D442DBBF71261A9DAA8260A4968D3699CC847D2B61740D071B576AB2A935552FA5D44FB3D1C63242EE0296567DE1BE701FA20EA2F58DD226242390F7A57B2D7F5B9665592CB861CA80F082038B122C8FB0881C1818181818387DFAF4E9D3A7597F184FD1EC4AC25C52C52C7D13AFCFD5E45D5804B4CD942830C051E225D29E0BD49358C68778DDA652F47C4C94C3334126C8C0252F063FA6E6806B76910C1307CA333025BDFAE1573FFCEA87FFFEF6BFBFFDEF6F7FE595575E79E5157C8F901DCA39C07FC6B4858A4668EE6082C3DE10F89290170AF97B9C1EA707559E1BFE6CC39F6DF8334C97D2B7A723DF9197D09F709EC9B436E67075D9503694E555B088FF6643D990846AE1F26542A7703467D62BB57EC399E3BF700FD89B944E919B64A7C2E162F10CA4932C8D25680FF82FBB10D933656167086B736195515C647E6F3A515E1C48709B32BEBC8DB6E0309C2E2F65B4650AB9432DC600067528140A85808D9A0E341D683A80CADDFA7DF5FBEAF741D98A4F5FC431A80730F689D4C6CA432B0FAD3C04B46A169BE129C5D33570DFC07D03F7FDEBEFFDEBEFFDEBEFFDC31DFF70C73FDCF1EC8DCFDEF8EC8D9FFFFCE73FFFF9CF7FFBDBDFFEF6B7BF0D52A116BDA0E701933EA23BDC6A10CF862985885F01F163CF66FB07364E43CCFFED9EDDF9C10D63DCB8D793F6DEC54BF1529CCBB7AA31B87670D1AB2F649AFD6CC18447B52ED258E85ECC55CBBCBDCC2AD550E4CC63CD7FE86B56B3D94D4A29768DEF1ADF357266E4CCC899F3C7CF1F3F7F7CF413A39F18FDC4F9A1F343E787F2DBF3DBF3DB85CB9AF2525E6AE2BE89FB26EE9B3C3F797EF2BC4CAF98868059F7047B823D12942B7A45AF2821CA54900A525E8FD7E3F5B89D6EA7DB099783FF9A9D8230C97A592FEB659D9C93737212D3CC0499206365ADAC95953D43E719F5C10927E1242450496E55EB220C8D620AD28AEE13E59567280AE2F21EA86E25AC849550099550094CF7E8682F532789F60A11296DA5ADE9B222DFF22D5F4867F886347E67483F619BC00AAC40A335B10217EE45C6CA58A27205DD2E767E5ADE171F728A681DCF6858C865ACB4ECD88EEDCCB04F1C3D65A5AC142B82E1F485C75DF24A5E49255552256DDFF66DDF89393127C6A8578448D7D86BEC3582AA51BAD3ADBA55B7F0E4EDC00E6C0EA163F1872582049F7133D00BABE4953C69B981851AC2D46A97DAA57605FB827DC1BE8115032B0656D45D5D7775DDD5A14DA14DA14D90ECF0B7FBDBFDED7051E67355522555FA4FCA5AE4B890DD8806D1205A8D735DA8EADBB9163E6199CB81685952E05217D92EECAA7147A4C04985D434734E8A123B83CEA033EC87FD7055FAD8F25CD572C0355B28837BC31A1628F6EC7D67EF3B7B1F826FA30F8E3E38FAA0D4BFC248790A5F8CED1CDB39B67370CBE096C12DA0B4E0F94447A3EBBE74DD97AEFBD23BDFF9CE77BEF39DE27AD10E8CB0AF74E321FACC898F9FF8F8898FFFE0073FF8C10F7E70FCF8F1E3C78F03330912DA5FBFBF7E3FC2DA3C41B34400BB76B3A4072174944370FB3FE9F25B28140A854A23C6E8475E4843978AB9D05A9910496DB0B807E7894DAD66CEDDCEA0234DA295728A663E98CC6C38C82363E671192F72785CD8D440C01C542734CCB5D1A6B467A50A60FC168A69575F7DF5D5575F0DFA33BE01A2053EE6E59DE06F2A4CC237A001BEF8E28B2FBEF8E2EBAFBFFEFAEBAF43651A4707F6354BC844D00391098A43E0FB959F5EF9E9959FDEF4854D5FD8F485D6D6D6D6D6563C990D0F373CDCF070CB232D8FB43C02CE3F16B24066F347AEBCB030FF2B1507947091B7AC5C2E97CB17A7BE9639109767B67BFE560B41D76C010C9323FAA19EFAC4A94F9CFA045CDDE9BB4FDF7DFA6E64763179C12141A41E4166B82E647146B78F6E1F15CE334F0D98AC813FF08D049190A5A3A993EB38315923640781403872CF3071E7292FE509D90AA169CDE966E863D41D3202E6D02EA62AB369BCB607436C92DD989961D5D8D764A6D88586202B19E14BB3E9A149CBD22427D961732F5E3A1F2D6B4BCA569CB535DD2D8F15EF5FF64C8B066D948CB3C5F75AE81BC8124F0BA15E8E4C080EC6DDA72EB3B89B40993C3EBC30C212D3ECE5CCD95CD413E3993F73CF997BCEDC831623C7FFE4F89F1CFF132462CEDD77EEBE73F70D3D30F4C0D00358BCE2F9BCB050A7F9B68A7BAB908196F03BE15AC97653D3FBC5368975BD292062A5ABA821E09ACDC1F0EAA24C086E154E74F0FEC1FB07EF07F7582620C2A640C34084835B07B70E4A768A0B6F846CB5737CE7F84EC634F81BD9BBB73DF7B6E7DEF6DC0D5FB9E12B377C85F5AAB8293A1CB32042929304CBFA471FF9D1477EF4919F1CF9C9919F1CC1FE914342AF24290772436E48EBF6CABA483808A606217ED1C4CA7C665C2F7F63B29D99B12CCACFE43279E23655A3F18D4CFDD8B3213CC98B180D0113B6E650B089A4D9259B85465AF3446A86C859705E34705855E33F533E586A7F79FF3426E6356ACC70E85EE5F3F97C1EDF60F9B572E5CA952B57429DAAF960F3C1E68340C040C38CAE04EF12231ADF3326C653F4E23FBFF8CF2FFE33F8F9633BC6768CEDC058C9F34C4ADD5A819951ED8DFDE309E4DED578F6D05D18D8BDED89B627DA9E008BB8F5D1D6475B1F859E33F2D940C9D5BFCB63DBC7B68F6D47B91430772575E82BC5AA5101437C4E4879736C10B9185643C035ABCA4009113EE7DDA7EF3E7DF7A98F9FFAF8A98F9F3A75EAD4A95340B422798FF298B49FF6D31C86457859C84D8411B9653D2B1B9B328ADAB4058C4B2ED0C42B8C833199324F985DA6765CC2BE12F0844425AA1B91634E79292FC57A49300E5732D757EA50A9B216DB6B795F324D1ED2D497361BD7C3EDD16FB5D0A28180352D2D4348C4643EB3CBC71ED89D9B7BD3D02DAB7DD19666ED3287A36740DE1546C9D4B5E6E0AAD0E5B88ABA873E60BA92C9DD3772F37C7F45D519455C248D89F0B28C0FA176EDE9A2E51A2FC5F08E001963793AF2E0C883230F0E9C1B3837700E6914C1C44343434343781325CE74CFE97B4EDF83829CEADF686EAAA8BD351764787FA5271259356A50DAF6F496CDF51CB816191F731B3C0E12EB32CE76F1CC544393E5420D01D70C86471FD201087901D1A23B0AC2CBC0BB9CC7E5698B1D24260864C5C0C5C5AF106436C392D29E8C6A5239108DAACA5F78FB2FBCFD17DEBEE98B9BBEB8E98BA670E60CF95408D0FBBEEFFB98E08EFCD1913F3AF24750F485D007972D8102C3416346C0C81373CB7A2E56910C2505C6251F0C4E75D7CF7E84B8614A5A7248138B03C25266AF24763C5A7E94F6C6DF9BE16233B02C542FFA95165ECEFCEC8703ECB817664995C99D66CEB370BC9552BA8807CF4EECC04CC72C79F778315E8C6334B04F20DD554FAD7A6AD5532B9E5CF1E48A2701F6963DBEECF1658F23E76AE251593CA150CD20D420740C26F3AB7FF0EA1FBCFA07BC7CC49DD53A1CF7D83D760FDC33173CCBEEA8144D843E2CCBB22CEEB8252918CA19E3FCD1D70BF42504C6A1918E023CEED4847D22DB0D5111A1A1D9B63D5D893E9F3A5720695436E37C20015B49A96AAE367BC61A86771C771FED2816B6C1039CBAC4C3E6A1B6CD75D235045C3309CB20380CC2D44932E474D1FB056B7391A7E03C2538B1A92015A4E0A4414EC1C4816DD865623F3CD1306F16D319877C35AC032747E8D32CE4608E2E3E58EF6BC530F4F70CDD7ED8C921AC9DF2529E3842AE1194D53A5591CA3930CBD7304D8BCAC8E6324D895B0E684E8E0B7518B9C2C8459905515A39935101CC185A3BE74AA42A3ABA1952E65FB1D3D5749EE99C67B8463EA2519EC43960933720A4277C40B5CB86B2A12CD38824BBC9B9673C33A02051D613F75AAAC3695122995DEA3FCDCFADF924F315718C415C78FC8D0FD204383AF60F048C9A823C19224C884E9D263B7BCFD97BCEDE8305347E2BCBE8F67C7BBE9DE56BE653130C8787622D2DCB3E0FD7CB6F7425256D8C3F4600A21FF2B02E426F2551FEA2769C17667C6EB532A4FF72868715AF223AE902AD8EFE9FD1FF33FA7F4444FE778ABF53FC9DF28FCB3F2EFF585E03927B44AB79EC0D2411A9592C168A85221C6AD48DBA51172B6EAC8EE17A45678A50A946B149A994D2500EB382358C8287B84B75A92EE5294F792CA951CE9433E50CD3B2B0CF2507971C5C7270E8A3431F1DFA28DC4029554A9552B66BBBB6EBC7FC981F631EB5E459E17ACB56D92A631CC49DA384A9C7EBF17A50B1E2649C8C234DDF70743770033728BB65B7EC7A112FE245CAE172B81C1679908817F1228C770327700207E71384825010B24376C80EA1504A2204292B65A53CDBB33D5B39CA510E9FADEDD99EED79AEE77A38B8BCE37244C2C7412EC8053933D40F0B7A83DEA01757A4422AA442683E2FFF0EABB092E22E2B67E52C29DF92753DD5FEA2B84B5C75C80A59213B6B676D29FAD2DC704EE5540EC53F9C7B164798B5B3B61C5D6341978372500EBCC00B3C3B6EC7ED38DC2D6A3785EB0EF5A5FE707FB83FD218698C34C696C796C796DB613B6C8735D74E0E839D314AAD38D2B062F98AE52B969FFCDEC9EF9DFC1E922F1C2DE0A50CEE82DFE3F7F83D669C8609680EE4D9C24ED809FB8EEFF84EB15C2C17250E24571D0B62014236317FC01FF007DCB3EE59F72C1616A37DA37DA37D2732273227642903D6B4FBCFEE3FBBFF0C948C8A76E90AFC5B8DBFD5F85BF85B3A22FFB1FBC7EE1F2372803194F072B95C2E972B297601F5B6A816D532FDFC388113546C8780C5047824F806EF26F6C3492595555995C5F7F24D8FEA513D7C8F64611773636E0C13CFEC73A03039AA281662C398AB3ED5A7FA2A6DC33A65D52C3E6A0EF8BF90C111A2487FE0FE81FB07EE1F1C181C181C400617A8B4DC5E6E2FB7CB44434427D9455AA555BA582A968A25293F4738BA502E940BA562A9582A621B50993CCBB33CAB3C561E2B8FF99EEFF95EB9B3DC59EEF40A5EC12B88BE0FF2C1DD6EB7DB0D6C8DC251711270A84DE5A67253F0B5E06BC1D7C4BDA5EC943D4D0E0266F57CCFF750972908B83BE80EC425C3554BE3F423E123E1239822F383F9C1FC20826FBC38C09E51452A81D690137242707B588208B2A1A27E3FE367FC4CE0077EE0CB5560FAF694A73C413F292B654D674F93413210CC21AFABA52C2535C7E214532AA5525292EA055E202177C1BB9EF294DE5D1858D0B33CCB936BE7802DF6C035C1F86D5AA5559A973BE24250148C33C16971F899CE964DCE0D75BD748FE4DC7AAD5EAB57CEC1B55CCB656E79A55C2FFF1723CCFF95DA5F2CC528C600A4CB52A372A52BAC15D60A7332E5D8892CBC50154DB9FF5026940965502624B110666BA7544AA52CC7722C47469E172EC0C7BD7EAF2F91211E8D52BA942EA5ADA495B492526D9C0812418217497ED48FFAD1C26385C70A8F8D8E8D8E8D8E49A264CA9D72A71A3B1B3B1B3BE162A5097C3E9FCFE7B1582C3925A7E414B615B615B6E523F9483E32B96F72DFE43EB855B8616C895FB56D6BDBD6B68D71ED5C5D17EBCA71D856088FA150281442E07AAC7EAC7EACBEB1D4586A2C497C22ABB24AAF78AED0EB49B6CFA99CCA5573569C85856B5FA8EE4973DD8F75DB6DB7DD76DB6DF33F70CD6A56B39AD5AC6635ABDEFE3F3146D2BE5E610B3D0000002574455874646174653A63726561746500323031352D30392D31355431353A35323A32372D30343A3030397740240000002574455874646174653A6D6F6469667900323031352D30392D31355431353A35323A32372D30343A3030482AF8980000000049454E44AE426082>|png>|320px|243px||>|Linear
  combination of subject01 and subject03.>

  Just from the above you notice there are additional issues that arise:

  <\itemize-dot>
    <item>image alignment

    <item>feature alignment
  </itemize-dot>

  These are interesting open research problems. For now start investigating
  practical application of the concepts learned so far by answering the
  following.

  <em|Questions>.

  a) Are images from different poses close to the original image? Since two
  images are vectors <math|\<b-u\>,\<b-v\>>, the smaller the angle

  <\equation*>
    \<theta\>=arccos<around*|(|<frac|\<b-u\><rsup|T>\<b-v\>|<around*|\<\|\|\>|\<b-u\>|\<\|\|\>>
    <around*|\<\|\|\>|\<b-v\>|\<\|\|\>>>|)>
  </equation*>

  between the vectors, the closer they are. Compute the angle between the
  various poses and the normal images for at least 5 subjects, present as a
  table, and comment the result

  \;

  Writing a function to populate Table 1 as so:

  <\session|octave|default>
    \;

    <\input>
      octave\<gtr\>\ 
    <|input>
      function angles=computeAngles(subject)

      \ \ \ \ states = ['happy';'glasses';'leftlight';'noglasses';'rightlight';'sad';'sleepy';'surprised';'wink'];

      \ \ \ \ statesArr = cellstr(states);

      \ \ \ \ angles = [];

      \ \ \ \ nf = img2vec(readface(subject,"normal"));

      \ \ \ \ for i=1:9

      \ \ \ \ \ \ \ sf = img2vec(readface(subject,statesArr{i}));

      \ \ \ \ \ \ \ angles(i) = acos(sf'*nf/norm(sf)/norm(nf));

      \ \ \ \ end;

      endfunction;
    </input>

    \;

    \;

    Subject 1:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(computeAngles(1));
    <|unfolded-io>
      \ Columns 1 through 8:

      \;

      \ \ \ 0.15307 \ \ 0.13680 \ \ 0.49227 \ \ 0.28903 \ \ 0.54664
      \ \ 0.12274 \ \ 0.12520 \ \ 0.15476

      \;

      \ Column 9:

      \;

      \ \ \ 0.17745
    </unfolded-io>

    Subject 2:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(computeAngles(2));
    <|unfolded-io>
      \ Columns 1 through 6:

      \;

      \ \ \ 1.3200e-01 \ \ 2.2688e-01 \ \ 3.4713e-01 \ \ 1.4901e-08
      \ \ 3.3278e-01 \ \ 1.0414e-01

      \;

      \ Columns 7 through 9:

      \;

      \ \ \ 3.1041e-02 \ \ 1.9390e-01 \ \ 1.5186e-01
    </unfolded-io>

    Subject 3:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(computeAngles(3));
    <|unfolded-io>
      \ Columns 1 through 6:

      \;

      \ \ \ 9.3133e-02 \ \ 2.5586e-01 \ \ 5.9210e-01 \ \ 1.4901e-08
      \ \ 5.6979e-01 \ \ 1.1343e-01

      \;

      \ Columns 7 through 9:

      \;

      \ \ \ 1.0144e-01 \ \ 2.1762e-01 \ \ 1.3635e-01
    </unfolded-io>

    Subject 4:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(computeAngles(4));
    <|unfolded-io>
      \ Columns 1 through 6:

      \;

      \ \ \ 1.1528e-01 \ \ 1.5575e-01 \ \ 4.1224e-01 \ \ 1.9663e-01
      \ \ 5.9920e-01 \ \ 1.4901e-08

      \;

      \ Columns 7 through 9:

      \;

      \ \ \ 1.3650e-01 \ \ 1.6745e-01 \ \ 1.7929e-01
    </unfolded-io>

    Subject 5:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(computeAngles(5));
    <|unfolded-io>
      \ Columns 1 through 7:

      \;

      \ \ \ 0.070096 \ \ 0.072276 \ \ 0.409528 \ \ 0.079864 \ \ 0.538215
      \ \ 0.069781 \ \ 0.066933

      \;

      \ Columns 8 and 9:

      \;

      \ \ \ 0.108175 \ \ 0.048964
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    \;

    \;

    <with|font-series|bold| \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Table
    1>. Angle between various poses and normal pose for subjects 1-5

    <block|<tformat|<table|<row|<cell|>|<cell|Happy>|<cell|Glasses>|<cell|Left
    Light>|<cell|No Glasses>|<cell|Right Light>|<cell|Sad>|<cell|Sleepy>|<cell|Surprised>|<cell|Wink>>|<row|<cell|Subject
    1>|<cell|<math|0.15307>>|<cell|<math|0.1368>>|<cell|<math|0.49227>>|<cell|<math|0.28903>>|<cell|<math|0.54664>>|<cell|<math|0.12274>>|<cell|<math|0.1252>>|<cell|<math|0.15476>>|<cell|<math|0.17745>>>|<row|<cell|Subject
    2>|<cell|1.3200e-01>|<cell|2.2688e-01>|<cell|3.4713e-01>|1.4901e-08|<cell|
    3.3278e-01>|<cell|1.0414e-01>|<cell|3.1041e-02
    >|<cell|1.9390e-01>|<cell|1.5186e-01>>|<row|<cell|Subject
    3>|<cell|9.3133e-02>|<cell|2.5586e-01>|<cell|5.9210e-01>|<cell|1.4901e-08>|<cell|5.6979e-01>|<cell|1.1343e-01>|<cell|1.0144e-01>|<cell|2.1762e-01>|<cell|1.3635e-01>>|<row|<cell|Subject
    4>|<cell|1.1528e-01>|<cell|1.5575e-01>|<cell|4.1224e-01>|<cell|1.9663e-01>|<cell|5.9920e-01>|<cell|1.4901e-08>|<cell|1.3650e-01>|<cell|1.6745e-01>|<cell|1.7929e-01>>|<row|<cell|Subject
    5>|<cell|0.070096>|<cell|0.072276>|<cell|
    0.409528>|<cell|0.079864>|<cell|0.538215>|<cell|0.069781>|<cell|0.066933>|<cell|0.108175>|<cell|0.048964>>>>>
  </session>

  \;

  Observations:

  <\itemize-dot>
    <item>the pose ``noglasses'' varies the least from the ``normal'' pose

    <item>the ``leftlight'' and ``rightlight'' poses vary the most from the
    ``normal pose''

    <item>subject 4's ``sad'' pose varies the least from ``normal'' compared
    to the other subjects

    <item>subject 5's ``wink'' pose varies the least from ``normal'' compared
    to the other subjects

    <item>the poses ``sleepy'' and ``glasses'' have the most variation
    between subjects

    <item> the poses ``leftlight'' and ``rightlight'' have the most variation
    between subjects
  </itemize-dot>

  \;

  \;

  \;

  b) Another way to measure closeness is to compute the ratio of the norm of
  the difference to norm of a vector (this is known as a relative error)
  <math|<around*|\<\|\|\>|\<b-u\>-\<b-v\>|\<\|\|\>>/<around*|\<\|\|\>|\<b-v\>|\<\|\|\>>>.
  Do this for poses, subjects chosen in (a) and compare results

  \;

  Writing a function to compute relative error for poses and subjects in (a):

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      function ratios=computeRel(subject)

      \ \ \ \ states = ['happy';'glasses';'leftlight';'noglasses';'rightlight';'sad';'sleepy';'surprised';'wink'];

      \ \ \ \ statesArr = cellstr(states);

      \ \ \ \ ratios = [];

      \ \ \ \ nf = img2vec(readface(subject,"normal"));

      \ \ \ \ for i=1:9

      \ \ \ \ \ \ \ sf = img2vec(readface(subject,statesArr{i}));

      \ \ \ \ \ \ \ ratios(i) = norm(nf-sf)/norm(sf);

      \ \ \ \ end;

      endfunction;
    </input>

    \;

    \;

    <\input>
      \;
    <|input>
      Subject 1:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(computeRel(1));
      <|unfolded-io>
        \ Columns 1 through 8:

        \;

        \ \ \ 0.15414 \ \ 0.13710 \ \ 0.59721 \ \ 0.28659 \ \ 0.99329
        \ \ 0.12282 \ \ 0.12552 \ \ 0.15500

        \;

        \ Column 9:

        \;

        \ \ \ 0.17794
      </unfolded-io>

      Subject 2:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(computeRel(2));
      <|unfolded-io>
        \ Columns 1 through 8:

        \;

        \ \ \ 0.13207 \ \ 0.22647 \ \ 0.36166 \ \ 0.00000 \ \ 0.40282
        \ \ 0.10400 \ \ 0.03104 \ \ 0.19534

        \;

        \ Column 9:

        \;

        \ \ \ 0.15166
      </unfolded-io>

      Subject 3:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(computeRel(3));
      <|unfolded-io>
        \ Columns 1 through 8:

        \;

        \ \ \ 0.09353 \ \ 0.25750 \ \ 0.68709 \ \ 0.00000 \ \ 0.87659
        \ \ 0.11380 \ \ 0.10174 \ \ 0.21739

        \;

        \ Column 9:

        \;

        \ \ \ 0.13716
      </unfolded-io>

      Subject 4:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(computeRel(4));
      <|unfolded-io>
        \ Columns 1 through 8:

        \;

        \ \ \ 0.11514 \ \ 0.15581 \ \ 0.44989 \ \ 0.19588 \ \ 0.89668
        \ \ 0.00000 \ \ 0.13612 \ \ 0.16751

        \;

        \ Column 9:

        \;

        \ \ \ 0.17909
      </unfolded-io>

      Subject 5:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(computeRel(5));
      <|unfolded-io>
        \ Columns 1 through 7:

        \;

        \ \ \ 0.070225 \ \ 0.072386 \ \ 0.453610 \ \ 0.079866 \ \ 0.938573
        \ \ 0.069822 \ \ 0.066987

        \;

        \ Columns 8 and 9:

        \;

        \ \ \ 0.108772 \ \ 0.049257
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

  <with|font-series|bold| \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Table
  2>. Relative error between various poses and normal pose for subjects 1-5

  <block|<tformat|<table|<row|<cell|>|<cell|Happy>|<cell|Glasses>|<cell|Left
  Light>|<cell|No Glasses>|<cell|Right Light>|<cell|Sad>|<cell|Sleepy>|<cell|Surprised>|<cell|Wink>>|<row|<cell|Subject
  1>|<cell|0.15414>|<cell|0.13710>|<cell|0.59721>|<cell|0.28659>|<cell|0.99329>|<cell|0.12282>|<cell|0.12552>|<cell|0.15500>|<cell|0.17794>>|<row|<cell|Subject
  2>|<cell|0.13207>|<cell|0.22647>|<cell|0.36166>|0.00000|<cell|0.40282>|<cell|0.10400>|<cell|0.03104>|<cell|0.19534>|<cell|0.15166>>|<row|<cell|Subject
  3>|<cell|0.09353>|<cell|0.25750>|<cell|0.68709>|<cell|0.00000>|<cell|0.87659>|<cell|0.11380>|<cell|0.10174>|<cell|0.21739>|<cell|0.13716>>|<row|<cell|Subject
  4>|<cell|0.11514>|<cell|0.15581>|<cell|0.44989>|<cell|0.19588>|<cell|0.89668>|<cell|0.00000>|<cell|0.13612>|<cell|0.16751>|<cell|0.17909>>|<row|<cell|Subject
  5>|<cell|0.070225>|<cell|0.072386>|<cell|0.453610>|<cell|
  0.079866>|<cell|0.938573>|<cell|0.069822>|<cell|0.066987>|<cell|0.108772>|<cell|0.049257>>>>>

  \;

  \;

  Observations:

  <\itemize-dot>
    <item>the values in table 2 are approximately the same as the values
    calculated in table 1

    <item>observations from table 1 hold true in table 2
  </itemize-dot>

  \;

  c) We don't expect an arbitrary image to be within the column space of the
  normal image <math|C<around*|(|\<b-A\>|)>>. But how close can we get?
  Recall that if <math|\<b-b\>\<in\>\<bbb-R\><rsup|m>> is not in column space
  of <math|\<b-A\>>, <math|\<b-b\>\<nin\>C<around*|(|\<b-A\>|)>>, the closest
  linear combination is found by solving the least squares problem

  <\equation*>
    \<b-A\><rsup|T><around*|(|\<b-b\>-\<b-A\>
    \<b-x\>|)>=0\<Rightarrow\><around*|(|\<b-A\><rsup|T>\<b-A\>|)>\<b-x\>=\<b-A\><rsup|T>\<b-b\>\<Leftrightarrow\>\<b-N\>
    \<b-x\>=\<b-c\>
  </equation*>

  The vector within the column space closest to <math|\<b-b\>> is then
  <math|\<b-y\>=\<b-A\> \<b-x\>>. For each of the poses of a subject solve
  the least squares problem and show the resulting image. Example: Execute
  the following random number generator to determine the subject you will
  work with

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      round(rand*15)
    <|unfolded-io>
      <with|mode|math|12>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      b=img2vec(readface(12,"happy"));
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      N=A'*A; c=A'*b;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      x=N\\c;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y=A*x;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      writeface(y,h,w,"yHappy12");
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

    (Top row, left): linear combination of normal faces closest to
    subject12.i, where i is:

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ happy \|
    glasses \| leftlight\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ noglasses \| normal
    \| rightlight

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sad\|
    sleepy \ \ \| surprised

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ wink\|
  </big-figure>

  \;

  Writing a function to render linear combination of normal faces closest to
  poses of subject 12:

  <\session|octave|default>
    <\session|octave|default>
      <\input>
        octave\<gtr\>\ 
      <|input>
        function computeLin(subject)

        <\input>
          \ \ \ \ 
        <|input>
          f01n=readface(1,"normal");
        </input>

        <\input>
          \;
        <|input>
          \ \ \ \ [h,w]=size(f01n);
        </input>

        \ \ \ \ for j=1:15

        \ \ \ \ \ \ fj=readface(j,"normal");

        \ \ \ \ \ \ A(:,j) = img2vec(fj);

        \ \ \ \ end;

        \ \ \ \ states = ['normal';'happy';'glasses';'leftlight';'noglasses';'rightlight';'sad';'sleepy';'surprised';'wink'];

        \ \ \ \ statesArr = cellstr(states);

        \ \ \ \ for i=1:10

        \ \ \ \ \ \ \ b = img2vec(readface(subject,statesArr{i}));

        <\input>
          \;
        <|input>
          \ \ \ \ \ \ \ N=A'*A; c=A'*b;
        </input>

        <\input>
          \ \ \ \ \ \ \ 
        <|input>
          x=N\\c;
        </input>

        <\input>
          \ \ \ \ \ \ \ 
        <|input>
          y=A*x;
        </input>

        <\input>
          \ \ \ \ \ \ \ 
        <|input>
          writeface(y,h,w,strcat("12",statesArr{i}));
        </input>

        \ \ \ \ end;

        endfunction;
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        computeLin(12);
      </input>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>
  </session>

  Observation:

  <\itemize-dot>
    <item>the ``normal'' faces of all subjects could be linearly combined to
    form a nearly identical face to the ``noglasses'' and ``normal'' faces of
    subject 12
  </itemize-dot>

  \;

  d) In what matrix subspace should the differences <math|\<b-b\>-\<b-A\>
  \<b-x\>> computed above belong to? Check this numerically.

  \;

  <with|font-shape|italic|<with|font-series|bold|b
  -Ax><with|font-series|bold|>> belongs to the left null space of
  <with|font-series|bold|<with|font-shape|italic|A>>. To show this is true,
  we show that <math|\<b-A\><rsup|T><around*|(|\<b-b\>-\<b-A\> \<b-x\>|)>=0
  \<nosymbol\>.>

  \;

  First we ensure that all values in octave are preserved from part (c),
  including A,b,x,and y.

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      <\input>
        \ \ \ \ 
      <|input>
        f01n=readface(1,"normal");
      </input>

      <\input>
        \;
      <|input>
        \ \ \ \ [h,w]=size(f01n);

        \ \ \ \ A=zeros(m,n);
      </input>

      \ \ \ \ for j=1:15

      \ \ \ \ \ \ fj=readface(j,"normal");

      \ \ \ \ \ \ A(:,j) = img2vec(fj);

      \ \ \ \ end;

      \ \ \ \ b = img2vec(readface(12,"happy"));

      <\input>
        \;
      <|input>
        \ \ \ \ N=A'*A; c=A'*b;
      </input>

      <\input>
        \ \ \ \ 
      <|input>
        x=N\\c;
      </input>

      <\input>
        \ \ \ \ 
      <|input>
        y=A*x;

        \;

        \;
      </input>
    </input>

    \;

    Next, calculate <math|\<b-A\><rsup|T><around*|(|\<b-b\>-\<b-A\>
    \<b-x\>|)>>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A'*(b-A*x));
    <|unfolded-io>
      \ \ \ 4.0858e-09

      \ \ -1.5404e-09

      \ \ \ 2.1079e-09

      \ \ \ 1.2703e-09

      \ \ \ 5.7906e-09

      \ \ \ 3.5988e-11

      \ \ \ 1.9643e-09

      \ \ \ 1.7588e-09

      \ \ \ 5.8948e-10

      \ \ \ 1.7894e-09

      \ \ \ 2.2664e-09

      \ \ \ 2.0609e-09

      \ \ \ 2.6306e-09

      \ \ \ 1.8316e-09

      \ \ \ 1.4431e-09
    </unfolded-io>

    The norm of <math|\<b-A\><rsup|T><around*|(|\<b-b\>-\<b-A\> \<b-x\>|)>
    being,>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(norm(A'*(b-A*x)));
      <|unfolded-io>
        \ \ \ 9.5341e-09
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>
  </session>

  Showing <math|\<b-A\><rsup|T><around*|(|\<b-b\>-\<b-A\> \<b-x\>|)> = 0>:

  \;

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
    <associate|auto-1|<tuple|1|6>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|The ``normal'' faces from the Yale face data
      base.|<pageref|auto-1>>

      <tuple|normal|Linear combination of subject01 and
      subject03.|<pageref|auto-2>>

      <tuple|normal|(Top row, left): linear combination of normal faces
      closest to subject12.happy.|<pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>