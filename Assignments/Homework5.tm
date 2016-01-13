<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for applications>><title-date|October
  30, 2015>

  <\title>
    Homework 5
  </title>

  \;

  <strong|Due date>: November 6, 2015, 11:55PM. Since multiple submissions
  are allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  <strong|Bibliography>: Course lecture notes Lessons 20-23, Textbook
  pp.367-418.

  \;

  <with|color|dark red|<em|Save this file as Homework5Solution.tm in your
  MATH547/homework directory before starting to work on the solution.>>

  Questions 1-3 ask for the eigenvalues and eigenvectors of a matrix. You
  will encounter the various types of relationships between algebraic and
  geometric multiplicities of the eigenvalues. The matrix you will work with
  is constructed from the ordinals of your first and last names <math|f,l>.
  Replace John Doe with your name on the following line:

  \;

  Michael Gu

  \;

  In the following Octave instructions replace the ``J'' with the initial of
  your first name, and the ``D'' with the initial of your last name:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      f=toascii("M")-toascii("A")+1; l=toascii("G")-toascii("A")+1; disp([f
      l]);
    <|unfolded-io>
      \ \ \ 13 \ \ \ 7
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  In the problems below you will replace <math|f,l> with the values obtained
  above. For each matrix <math|\<b-A\>\<in\>\<bbb-R\><rsup|m\<times\>m>>:

  <\itemize-arrow>
    <item>find the eigenvalues and eigenvectors of the matrix, <math|\<b-A\>
    \<b-x\><rsub|j>=\<lambda\><rsub|j>\<b-x\><rsub|j>> for
    <math|j=1,\<ldots\>,m>

    <item>explicitly state the algebraic and geometric multiplicity of each
    eigenvalue

    <item>state whether the matrix is diagonalizable or not

    <item>if the matrix is diagonalizable:

    <\itemize-minus>
      <item>form the eigenvector matrix <math|\<b-X\>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<b-x\><rsub|1>>|<cell|\<b-x\><rsub|2>>|<cell|\<b-x\><rsub|3>>|<cell|\<b-x\><rsub|4>>>>>>|)>>
      and compute the inverse <math|\<b-X\><rsup|-1>>

      <item>verify the eigendecomposition <math|\<b-A\>=\<b-X\> \<b-Lambda\>
      \<b-X\><rsup|-1>> with <math|\<b-Lambda\>=diag<around*|(|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|m>|)>>
    </itemize-minus>

    <item>if the matrix is not diagonalizable compute a basis for the
    orthogonal complement of <math|C<around*|(|\<b-X\>|)>>, that is a basis
    for <math|N<around*|(|\<b-X\><rsup|T>|)>>.
  </itemize-arrow>

  \ 

  <strong|1.> (1 course point)

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|f<rsup|2>+4l<rsup|2>>|<cell|0>|<cell|-3f
    l >|<cell|0>>|<row|<cell|0>|<cell|2 f<rsup|2>+8
    l<rsup|2>>|<cell|0>|<cell|-6f l>>|<row|<cell|-3 f l>|<cell|0>|<cell|4
    f<rsup|2>+l<rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|-6f
    l>|<cell|0>|<cell|8f<rsup|2>+2l<rsup|2>>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|365>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450>>>>>
  </equation*>

  <\equation*>
    To find eigenvalues\<nocomma\> of A, we must find solutions to
    det<around*|(|A-\<lambda\>I<rsub|4>|)>=0
  </equation*>

  <\equation*>
    A-\<lambda\>I<rsub|4>=<matrix|<tformat|<table|<row|<cell|365>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450>>>>>-\<lambda\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    det<around*|(|A-\<lambda\>I<rsub|4>|)>=det<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>=0
  </equation*>

  <\equation*>
    Using Sarrus Rule to find the determinant,
  </equation*>

  <\equation*>
    <around*|(|365-\<lambda\>|)><around*|(|730-\<lambda\>|)><around*|(|725-\<lambda\>|)><around*|(|1450-\<lambda\>|)>+0+-273<around*|(|-546|)><around*|(|-273|)><around*|(|-546|)>+0
  </equation*>

  <\equation*>
    -0-<around*|(|-546|)><around*|(|725-\<lambda\>|)><around*|(|-546|)><around*|(|365-\<lambda\>|)>-0-<around*|(|1450-\<lambda\>|)><around*|(|-273|)><around*|(|730-\<lambda\>|)><around*|(|-273|)>=0
  </equation*>

  <\equation*>
    Expanding:
  </equation*>

  <\equation*>
    \<lambda\><rsup|4>-3270\<lambda\><rsup|3>+3326680\<lambda\><rsup|2>-1243227840\<lambda\>+144545956864=0
  </equation*>

  <\equation*>
    Solving <around*|(|using wolfram alpha|)>:
  </equation*>

  <\equation*>
    \<lambda\>=218,436,872,1744
  </equation*>

  Finding the eigenvectors corresponding to each eigenvalue:

  \;

  <math|\<lambda\>=218>,

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|218>=N<around*|(|<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|147>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|512>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|507>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1232>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|128>:
  </equation*>

  <\equation*>
    E<rsub|218>=<matrix|<tformat|<table|<row|<cell|147>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|512>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|507>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1232>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|147>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|512>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|507>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1232>>>>><long-arrow|\<rubber-rightarrow\>|273R1+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|512>|<cell|0>|<cell|-546>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1232>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|152>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-273/256>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1232>>>>><long-arrow|\<rubber-rightarrow\>|546R2+R4\<rightarrow\>R4>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-273/256>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|83167/128>>>>><long-arrow|\<rubber-rightarrow\>|R3<rsub|>\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-273/256>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|83167/128>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|128|83167>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-273/256>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|273|256>R3+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    v<rsub|1>-<frac|13|7>v<rsub|3>=0,v<rsub|1>=<frac|13|7>v<rsub|3>
  </equation*>

  <\equation*>
    Letting t=v<rsub|3>
  </equation*>

  <\equation*>
    E<rsub|218>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|218 >is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|218>=1 and
    AM<rsub|218>=1
  </equation*>

  \;

  <math|\<lambda\>=436,>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|436>=N<around*|(|<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|-71>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|294>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|289>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1014>>>>>|)>
  </equation*>

  \;

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|436>,
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    E<rsub|436> = <matrix|<tformat|<table|<row|<cell|-71>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|294>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|289>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1014>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|71>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|273/71>|<cell|0>>|<row|<cell|0>|<cell|294>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|289>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1014>>>>><long-arrow|\<rubber-rightarrow\>|273R1+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|273/71>|<cell|0>>|<row|<cell|0>|<cell|294>|<cell|0>|<cell|-546>>|<row|<cell|0>|<cell|0>|<cell|95048/71>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1014>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|294>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|273/71>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|95048/71>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1014>>>>><long-arrow|\<rubber-rightarrow\>|546R2+R4\<rightarrow\>R4>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|273/71>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|95048/71>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|71|95048>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|273/71>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|273|71>R3+R1\<rightarrow\>R1>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    v<rsub|2>-<frac|13|7>v<rsub|4>=0,v<rsub|2>=<frac|13|7>v<rsub|4>
  </equation*>

  <\equation*>
    Letting t=v<rsub|4>
  </equation*>

  <\equation*>
    E<rsub|436>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|13/7>>|<row|<cell|0>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|13/7>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|436>is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|436>=1 and
    AM<rsub|436>=1
  </equation*>

  \;

  <\math>
    \<lambda\>=872,

    <text|>
  </math>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|872>=N<around*|(|<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|-507>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|-142>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-147>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|578>>>>>|)>
  </equation*>

  \;

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|436>,
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    E<rsub|872> = <matrix|<tformat|<table|<row|<cell|-507>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|-142>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-147>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|578>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|507>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|-142>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-147>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|578>>>>><long-arrow|\<rubber-rightarrow\>|273R1+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|-142>|<cell|0>|<cell|-546>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|578>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|142>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|273/71>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|578>>>>><long-arrow|\<rubber-rightarrow\>|546R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|273/71>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|190096/71>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R3\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|273/71>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|190096/71>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|71|190096>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|273/71>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|273|71>R3+R2\<rightarrow\>R2>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  \;

  \;

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    v<rsub|1>+<frac|7|13>v<rsub|3>=0,v<rsub|1>=-<frac|7|13>v<rsub|3>
  </equation*>

  <\equation*>
    Letting t=v<rsub|3>
  </equation*>

  <\equation*>
    E<rsub|872>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|872 >is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|872>=1 and
    AM<rsub|872>=1
  </equation*>

  <math|\<lambda\>=1744,>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|1744>=N<around*|(|<matrix|<tformat|<table|<row|<cell|365-\<lambda\>>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730-\<lambda\>>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|-1379>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|-1014>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-1019>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|-294>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|128>:
  </equation*>

  <\equation*>
    E<rsub|1744>=<matrix|<tformat|<table|<row|<cell|-1379>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|-1014>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-1019>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|-294>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|1379>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|39/197>|<cell|0>>|<row|<cell|0>|<cell|-1014>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|-1019>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|-294>>>>><long-arrow|\<rubber-rightarrow\>|273R1+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|39/197>|<cell|0>>|<row|<cell|0>|<cell|-1014>|<cell|0>|<cell|-546>>|<row|<cell|0>|<cell|0>|<cell|-190096/197>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|-294>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|1014>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|39/197>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|-190096/197>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|-294>>>>><long-arrow|\<rubber-rightarrow\>|546R2+R4\<rightarrow\>R4>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|39/197>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|-190096/197>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|197|190096>R3<rsub|>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|39/197>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-<frac|39|197>R3+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  \;

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    v<rsub|2>+<frac|7|13>v<rsub|4>=0,v<rsub|2>=-<frac|7|13>v<rsub|4>
  </equation*>

  <\equation*>
    Letting t=v<rsub|4>
  </equation*>

  <\equation*>
    E<rsub|1744>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|1744 >is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|1744>=1 and
    AM<rsub|1744>=1
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;

  After finding all the eigenvectors and eigenvalues, all geometric
  multiplicities are equal to their respective algebraic multiplicities.
  Thus, matrix A is diagonizable.\ 

  \;

  <\equation*>
    Forming the eigenvector matrix\<nocomma\>,\<b-X\>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<b-x\><rsub|1>>|<cell|\<b-x\><rsub|2>>|<cell|\<b-x\><rsub|3>>|<cell|\<b-x\><rsub|4>>>>>>|)>
    = <matrix|<tformat|<table|<row|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>>|<row|<cell|0>|<cell|13/7>|<cell|0>|<cell|-7/13>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>>>>
  </equation*>

  \;

  <\equation*>
    The inverse of \<b-X\>,\<b-X\><rsup|-1> is found by finding the reduced
    row echelon form of \<b-X\> alongside the Identity matrix,
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|7|13>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|218/169>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|7|13>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|218/169>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|218/169>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|218/169>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|169|218>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|218/169>|<cell|0>|<cell|-7/13>|<cell|0>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|169|218>R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>>>>><long-arrow|\<rubber-rightarrow\>|<frac|49|169>R4+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-49/169>|<cell|0>|<cell|7/13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|91/218>|<cell|0>|<cell|49/218>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|49|169>R3+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|91/218>|<cell|0>|<cell|49/218>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|91/218>|<cell|0>|<cell|49/218>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>>>>>
  </equation*>

  <\equation*>
    Thus\<nocomma\>,\<b-X\><rsup|-1> = <matrix|<tformat|<table|<row|<cell|91/218>|<cell|0>|<cell|49/218>|<cell|0>>|<row|<cell|0>|<cell|91/218>|<cell|0>|<cell|49/218>>|<row|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>>>>>
  </equation*>

  \ 

  <\equation*>
    Verifying the eigendecomposition \<b-X\>\<b-Lambda\>\<b-X\><rsup|-1>=\<b-A\>,with
    \<b-Lambda\>=diag<around*|(|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|4>|)>
  </equation*>

  <\equation*>
    \<b-X\>\<b-Lambda\>=<matrix|<tformat|<table|<row|<cell|13/7>|<cell|0>|<cell|-7/13>|<cell|0>>|<row|<cell|0>|<cell|13/7>|<cell|0>|<cell|-7/13>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|218>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|436>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|872>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1744>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|2834/7>|<cell|0>|<cell|-6104/13>|<cell|0>>|<row|<cell|0>|<cell|5668/7>|<cell|0>|<cell|-12208>>|<row|<cell|218>|<cell|0>|<cell|872>|<cell|0>>|<row|<cell|0>|<cell|436>|<cell|0>|<cell|1744>>>>>
  </equation*>

  <\equation*>
    \<b-X\>\<b-Lambda\>\<b-X\><rsup|-1>=<matrix|<tformat|<table|<row|<cell|2834/7>|<cell|0>|<cell|-6104/13>|<cell|0>>|<row|<cell|0>|<cell|5668/7>|<cell|0>|<cell|-12208>>|<row|<cell|218>|<cell|0>|<cell|872>|<cell|0>>|<row|<cell|0>|<cell|436>|<cell|0>|<cell|1744>>>>><matrix|<tformat|<table|<row|<cell|91/218>|<cell|0>|<cell|49/218>|<cell|0>>|<row|<cell|0>|<cell|91/218>|<cell|0>|<cell|49/218>>|<row|<cell|-91/218>|<cell|0>|<cell|169/218>|<cell|0>>|<row|<cell|0>|<cell|-91/218>|<cell|0>|<cell|169/218>>>>>
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|365>|<cell|0>|<cell|-273>|<cell|0>>|<row|<cell|0>|<cell|730>|<cell|0>|<cell|-546>>|<row|<cell|-273>|<cell|0>|<cell|725>|<cell|0>>|<row|<cell|0>|<cell|-546>|<cell|0>|<cell|1450>>>>>
    = \<b-A\>
  </equation*>

  \;

  \;

  <strong|2>. (1 course point)

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|3f<rsup|2>+3l<rsup|2>>|<cell|-f<rsup|2>>|<cell|0>|<cell|-f
    l>>|<row|<cell|-f<rsup|2>>|<cell|3 f<rsup|2>+4 l<rsup|2>>|<cell|-f
    l>|<cell|-f l>>|<row|<cell|0>|<cell|-f l>|<cell|3
    f<rsup|2>+3l<rsup|2>>|<cell|-l<rsup|2>>>|<row|<cell|-f l>|<cell|-f
    l>|<cell|-l<rsup|2>>|<cell|4f<rsup|2>+3l<rsup|2>>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    =<matrix|<tformat|<table|<row|<cell|654>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823>>>>>
  </equation*>

  \;

  <strong|3>. (1 course point)\ 

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|f>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|f>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|f>|<cell|f>>>>>
    = <matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|13>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    A-\<lambda\>I<rsub|4>=<matrix|<tformat|<table|<row|<cell|13-\<lambda\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13-\<lambda\>>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|13-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    Using block operations with submatrices A,B,C,D:
  </equation*>

  <\equation*>
    det<around*|(|<matrix|<tformat|<table|<row|<cell|A>|<cell|B>>|<row|<cell|C>|<cell|D>>>>>|)>
    = det<around*|(|<matrix|<tformat|<table|<row|<cell|<around*|(|13-\<lambda\>|)><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|13-\<lambda\>|)><rsup|2>>>>>>|)>=<around*|(|13-\<lambda\>|)><rsup|4>=0
  </equation*>

  <\equation*>
    Thus \<lambda\>=13,with algebraic multiplicty of 4
  </equation*>

  <\equation*>
    Finding the eigenvector for \<lambda\>=13,we must find the null space of
    the matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|13>=N<around*|(|<matrix|<tformat|<table|<row|<cell|13-\<lambda\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13-\<lambda\>>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|13-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|13>:
  </equation*>

  <\equation*>
    E<rsub|13>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|13>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|Divide
    all rows by 13><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2\<rightarrow\>R1,R1\<rightarrow\>R4,R3\<rightarrow\>R2,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|R2-R1\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R3-R2\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R3-R1\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Letting t=v<rsub|4>
  </equation*>

  <\equation*>
    E<rsub|f>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|13 > is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|13>=1 and
    AM<rsub|13>=4
  </equation*>

  <\equation*>
    Because GM\<neq\>AM,the eigenvector matrix is non-diagonizable.
  </equation*>

  <\equation*>
    Forming the eigenvector matrix X, we must find the left null space of
    X,N<around*|(|<with|font-series|bold|X><rsup|T>|)>\<nosymbol\>. Examining
    X:
  </equation*>

  <\equation*>
    X<rsup| = ><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    There is only one linearly independent column of X\<nocomma\>\<nocomma\>,
    thus the rank of C<around*|(|X|)> is 1.
  </equation*>

  <\equation*>
    Because the left null space is the orthogonal complement of the column
    space\<nocomma\>,the rank of N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    is n-r=3
  </equation*>

  <\equation*>
    Thus\<nocomma\>,in order for C<around*|(|X|)>\<oplus\>N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    to span \<bbb-R\><rsup|4>\<nocomma\>,N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    must be:
  </equation*>

  <\equation*>
    N<around*|(|<with|font-series|bold|X><rsup|T>|)> =
    span<around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>\<nocomma\>
  </equation*>

  \;

  \;

  \;

  \;

  <strong|4.> (1 course point)<with|color|dark blue|>\ 

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|f>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|f>|<cell|f>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|l>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|l>|<cell|l>>>>>
    = <matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7>>>>>
  </equation*>

  \;

  <\equation*>
    A-\<lambda\>I<rsub|4>=<matrix|<tformat|<table|<row|<cell|13-\<lambda\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    Using block operations with submatrices A,B,C,D:
  </equation*>

  <\equation*>
    det<around*|(|<matrix|<tformat|<table|<row|<cell|A>|<cell|B>>|<row|<cell|C>|<cell|D>>>>>|)>
    = det<around*|(|<matrix|<tformat|<table|<row|<cell|<around*|(|13-\<lambda\>|)><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|7-\<lambda\>|)><rsup|2>>>>>>|)>=<around*|(|13-\<lambda\>|)><rsup|2><around*|(|7-\<lambda\>|)><rsup|2>=0
  </equation*>

  <\equation*>
    Thus \<lambda\>=13 ,7,each with algebraic multiplicty of 2
  </equation*>

  \;

  <\equation*>
    Finding the eigenvector for \<lambda\>=13,we must find the null space of
    the matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|13>=N<around*|(|<matrix|<tformat|<table|<row|<cell|13-\<lambda\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-6>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|13>:
  </equation*>

  <\equation*>
    E<rsub|13>=<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-6>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|R1\<rightarrow\>R2,R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-6>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|13>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-6>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|R2\<rightarrow\>R3,R3\<rightarrow\>R2>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-6>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|6>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|-7R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|R3\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-6>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|-<frac|1|6>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Letting t=v<rsub|2>
  </equation*>

  <\equation*>
    E<rsub|13>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|13 > is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|13>=1 and
    AM<rsub|13>=2
  </equation*>

  \;

  \;

  <\equation*>
    Finding the eigenvector for \<lambda\>=7,we must find the null space of
    the matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|7>=N<around*|(|<matrix|<tformat|<table|<row|<cell|13-\<lambda\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|6>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|6>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|7>:
  </equation*>

  <\equation*>
    E<rsub|7>=<matrix|<tformat|<table|<row|<cell|6>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|6>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|6>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|6>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-13R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|6>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|6>R2\<rightarrow\>R2>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R3\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|7>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Letting t=v<rsub|4>
  </equation*>

  <\equation*>
    E<rsub|7>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Because rank of E<rsub|7 > is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|7>=1 and
    AM<rsub|7>=2
  </equation*>

  \;

  <\equation*>
    Because GM\<neq\>AM,the eigenvector matrix is non-diagonizable.
  </equation*>

  <\equation*>
    Forming the eigenvector matrix <with|font-series|bold|X>, we must find
    the left null space of <with|font-series|bold|X>,N<around*|(|<with|font-series|bold|X><rsup|T>|)>\<nosymbol\>.
    Examining <with|font-series|bold|X>:
  </equation*>

  <\equation*>
    <with|font-series|bold|X><rsup| = ><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>>
  </equation*>

  <\equation*>
    There are two linearly independent column of
    <with|font-series|bold|X>\<nocomma\>\<nocomma\>, thus the rank of
    C<around*|(|<with|font-series|bold|X>|)> is 2.
  </equation*>

  <\equation*>
    Because the left null space is the orthogonal complement of the column
    space\<nocomma\>,the rank of N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    is n-r=2
  </equation*>

  <\equation*>
    Thus\<nocomma\>,in order for C<around*|(|X|)>\<oplus\>N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    to span \<bbb-R\><rsup|4>\<nocomma\>,N<around*|(|<with|font-series|bold|X><rsup|T>|)>
    must be:
  </equation*>

  <\equation*>
    N<around*|(|<with|font-series|bold|X><rsup|T>|)> =
    span<around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>\<nocomma\>
  </equation*>

  \;

  <strong|5.> (4 course points) Verify your computations using the Octave
  eig, null, and orth.\ 

  \;

  \;

  <with|font-series|bold|1.>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[365 0 -273 0; 0 730 0 -546; -273 0 725 0; 0 -546 0 1450];
      [X,D]=eig(A);\ 
    <|unfolded-io>
      texmacs
    </unfolded-io>

    The eigenvalues are:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(diag(D)');
    <|unfolded-io>
      \ \ \ \ 218 \ \ \ 436 \ \ \ 872 \ \ 1744
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  All eigenvalues have algebraic multiplicity 1.

  \;

  For <math|\<lambda\>=2>18,the dimension of the null space of
  <math|\<b-A\>-218 \<b-I\>>is:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-218*eye(4))));\ 
    <|unfolded-io>
      \ 1

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    To verify the eigenvector for <math|\<lambda\>=2>18 found by hand, we
    find the difference between the eigenvector found from octave(O) and the
    normalized eigenvector found from the hand calculations(H) of part 1.
    This difference should be the zero vector.

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        O=null(A-218*eye(4)); H=[13/7; 0 ; 1;0]; H=H/norm(H); disp(O-H);
      <|unfolded-io>
        \ \ -1.1102e-16

        \ \ \ 0.0000e+00

        \ \ \ 0.0000e+00

        \ \ \ 0.0000e+00
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    \;

    Because GM=AM,the matrix is not defective and hence is indeed
    diagonizable.
  </session>

  \;

  \;

  For <math|\<lambda\>=436>,the dimension of the null space of
  <math|\<b-A\>-436 \<b-I\>>is:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-436*eye(4))));\ 
    <|unfolded-io>
      \ 1

      texmacs
    </unfolded-io>

    To verify the eigenvector for <math|\<lambda\>=436> found by hand, we
    find the difference between the eigenvector found from octave(O) and the
    normalized eigenvector found from the hand calculations(H) of part 1.
    This difference should be the zero vector.
  </session>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      O=null(A-436*eye(4)); H=[0; 13/7 ; 0;1]; H=H/norm(H); disp(O-H);
    <|unfolded-io>
      \ \ \ 0.0000e+00

      \ \ -1.1102e-16

      \ \ \ 0.0000e+00

      \ \ \ 0.0000e+00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  For <math|\<lambda\>=872>,the dimension of the null space of
  <math|\<b-A\>-872 \<b-I\>>is:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-872*eye(4))));\ 
    <|unfolded-io>
      \ 1

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  To verify the eigenvector for <math|\<lambda\>=872> found by hand, we find
  the eigenvector found from octave(O) and the normalized eigenvector found
  from the hand calculations(H) of part 1. These two should be
  equal/multiples of each other.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      O=null(872*eye(4)-A); H=[-7/13; 0;1;0]; n=norm(H); disp(O); disp(H/n);
    <|unfolded-io>
      \ \ \ 0.47410

      \ \ \ 0.00000

      \ \ -0.88047

      \ \ \ 0.00000

      \;

      \ \ -0.47410

      \ \ \ 0.00000

      \ \ \ 0.88047

      \ \ \ 0.00000
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

  \;

  For <math|\<lambda\>=1744>,the dimension of the null space of
  <math|\<b-A\>-1744 \<b-I\>>is:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-1744*eye(4))));
    <|unfolded-io>
      \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  To verify the eigenvector for <math|\<lambda\>=1744> found by hand, we find
  the difference between the eigenvector found from octave(O) and the
  normalized eigenvector found from the hand calculations(H) of part 1. This
  difference should be the zero vector.

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      O=null(A-1744*eye(4)); H=[0; -7/13 ; 0;1]; H=H/norm(H); disp(O-H);
    <|unfolded-io>
      \ \ \ 0.0000e+00

      \ \ \ 1.1102e-16

      \ \ \ 0.0000e+00

      \ \ \ 0.0000e+00
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

  \;

  Verifying the inverse of the eigenvector matrix, X

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      X=[13/7 0 -7/13 0; 0 13/7 0 -7/13; 1 0 1 0; 0 1 0 1]; disp(inv(X));
    <|unfolded-io>
      \ \ \ 0.41743 \ \ 0.00000 \ \ 0.22477 \ -0.00000

      \ \ \ 0.00000 \ \ 0.41743 \ -0.00000 \ \ 0.22477

      \ \ -0.41743 \ \ 0.00000 \ \ 0.77523 \ -0.00000

      \ \ \ 0.00000 \ -0.41743 \ \ 0.00000 \ \ 0.77523
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <\equation*>
    \;
  </equation*>

  <math|Verifying the eigendecomposition \<b-X\>\<b-Lambda\>\<b-X\><rsup|-1>=\<b-A\>,with
  \<b-Lambda\>=diag<around*|(|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|4>|)>>

  \;

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      L=[218 0 0 0; 0 436 0 0; 0 0 872 0; 0 0 0 1744]; disp(X*L*inv(X));
    <|unfolded-io>
      \ \ \ 3.6500e+02 \ \ 0.0000e+00 \ -2.7300e+02 \ \ 0.0000e+00

      \ \ \ 0.0000e+00 \ \ 7.3000e+02 \ \ 0.0000e+00 \ -5.4600e+02

      \ \ -2.7300e+02 \ \ 0.0000e+00 \ \ 7.2500e+02 \ \ 0.0000e+00

      \ \ \ 0.0000e+00 \ -5.4600e+02 \ \ 0.0000e+00 \ \ 1.4500e+03
    </unfolded-io>

    \;

    \;

    Showing \ <math|\<b-X\>\<b-Lambda\>\<b-X\><rsup|-1> = \<b-A\>> by showing
    their difference is 0:

    \;

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A-X*L*inv(X));
    <|unfolded-io>
      \ \ \ 0.0000e+00 \ \ 0.0000e+00 \ -5.6843e-14 \ \ 0.0000e+00

      \ \ \ 0.0000e+00 \ \ 0.0000e+00 \ \ 0.0000e+00 \ -1.1369e-13

      \ \ \ 0.0000e+00 \ \ 0.0000e+00 \ \ 0.0000e+00 \ \ 0.0000e+00

      \ \ \ 0.0000e+00 \ \ 0.0000e+00 \ \ 0.0000e+00 \ \ 0.0000e+00
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|font-series|bold|3.>

  \;

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[13 0 0 0; 13 13 0 0; 13 13 13 0; 13 13 13 13]; [X,D]=eig(A);
    </input>

    The eigenvalues are:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(diag(D)');
    <|unfolded-io>
      \ \ \ 13 \ \ 13 \ \ 13 \ \ 13
    </unfolded-io>

    All eigenvalues are 13 have algebraic multiplicity 4.

    \;

    For <math|\<lambda\>=13>,the dimension of the null space of
    <math|\<b-A\>-13 \<b-I\>> is:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-13*eye(4))));\ 
    <|unfolded-io>
      \ 1

      texmacs
    </unfolded-io>

    To verify the eigenvector for <math|\<lambda\>=>13 found by hand, we find
    the difference between the eigenvector found from octave(O) and the
    normalized eigenvector found from the hand calculations(H) of part 1.
    This difference should be the zero vector.

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        O=null(A-13*eye(4)); H=[0; 0 ; 0;1]; H=H/norm(H); disp(O-H);
      <|unfolded-io>
        \ \ \ 0

        \ \ \ 0

        \ \ \ 0

        \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>
  </session>

  Because GM is not equal to AM, the matrix is defective and hence is not
  diagonizable.

  \;

  Verifying the basis for <math|N<around*|(|\<b-X\><rsup|T>|)>>. found by
  hand:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      X=[0 0 0 0; 0 0 0 0; 0 0 0 0;1 1 1 1]; disp(null(X'));\ 
    <|unfolded-io>
      \ \ -1.00000 \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ -1.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  <with|font-series|bold|4.>

  \;

  \;

  <math|<tabular|<tformat|<table|<row|<cell|13>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|13>|<cell|13>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|7>|<cell|7>>>>>>

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      A=[13 0 0 0; 13 13 0 0; 0 0 7 0; 0 0 7 7]; [X,D]=eig(A);
    </input>

    The eigenvalues are:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(diag(D)');
    <|unfolded-io>
      \ \ \ 13 \ \ 13 \ \ \ 7 \ \ \ 7
    </unfolded-io>

    All eigenvalues are 13 and 7, each with algebraic multiplicity of 2.

    \;

    For <math|\<lambda\>=13>,the dimension of the null space of
    <math|\<b-A\>-13 \<b-I\>> is:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(rank(null(A-13*eye(4))));
    <|unfolded-io>
      \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    To verify the eigenvector for <math|\<lambda\>=>13 found by hand, we find
    the difference between the eigenvector found from octave(O) and the
    normalized eigenvector found from the hand calculations(H) of part 1.
    This difference should be the zero vector.

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        O=null(A-13*eye(4)); H=[0; 1 ; 0;0]; H=H/norm(H); disp(O-H);
      <|unfolded-io>
        \ \ \ 0

        \ \ \ 0

        \ \ \ 0

        \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>
  </session>

  \;

  \;

  \;

  For <math|\<lambda\>=7>,the dimension of the null space of
  <math|\<b-A\>-7\<b-I\>> is:

  <\session|octave|default>
    <\input>
      \;
    <|input>
      \;

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(rank(null(A-7*eye(4))));
      <|unfolded-io>
        \ 1
      </unfolded-io>
    </input>
  </session>

  To verify the eigenvector for <math|\<lambda\>=>7 found by hand, we find
  the difference between the eigenvector found from octave(O) and the
  normalized eigenvector found from the hand calculations(H) of part 1. This
  difference should be the zero vector.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      O=null(A-7*eye(4)); H=[0; 0 ; 0;1]; H=H/norm(H); disp(O-H);
    <|unfolded-io>
      \ \ \ 0

      \ \ \ 0

      \ \ \ 0

      \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Because GM is not equal to AM for all eigenvalues, the matrix is defective
  and hence is not diagonizable.

  \;

  Verifying the basis for <math|N<around*|(|\<b-X\><rsup|T>|)>> found by
  hand:

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      X=[0 0 0 0; 1 1 0 0; 0 0 0 0;0 0 1 1]; disp(null(X')); \ 
    <|unfolded-io>
      \ \ -1.00000 \ \ 0.00000

      \ \ \ 0.00000 \ \ 0.00000

      \ \ \ 0.00000 \ -1.00000

      \ \ \ 0.00000 \ \ 0.00000

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
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