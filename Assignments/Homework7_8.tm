<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|<name|MATH547: Linear algebra for applications>><title-date|November
  18, 2015>

  <\title>
    Homework 7 & 8
  </title>

  \;

  <strong|Due date>: December 16, 2015, 11:55PM. Since multiple submissions
  are allowed in Sakai, submit after completing some part of the homework to
  avoid last minute time crunch, and/or computer failure problems.

  \;

  The final homework of the course helps you prepare for the final
  examination. There are two parts:

  <\enumerate-numeric>
    <item><em|Sample problems and solutions>. You are asked to carefully read
    the following solutions to problems representative of those you can
    expect on the final. (honor system grading applied, 8 course grade points
    awarded <em|ex officio>).

    <item><em|Challenge, course capstone questions>. Six additional questions
    are presented without solution. These are synthesis questions, covering
    multiple aspects of the course, and you should use them to guide review
    of course concepts.
  </enumerate-numeric>

  <subsection|Final examination preparation>

  <\enumerate-numeric>
    <item>Consider the quadrilateral formed by points

    <\equation*>
      A<rsub|0>=<matrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>,A<rsub|1>=<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|y<rsub|1>>>>>>=<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-2>>>>>,A<rsub|2>=<matrix|<tformat|<table|<row|<cell|x<rsub|2>>>|<row|<cell|y<rsub|2>>>>>>=<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|5>>>>>,A<rsub|3>=<matrix|<tformat|<table|<row|<cell|x<rsub|3>>>|<row|<cell|y<rsub|3>>>>>>=<matrix|<tformat|<table|<row|<cell|5>>|<row|<cell|3>>>>>.
    </equation*>

    <\enumerate-alpha>
      <item>Do these points form a parallelogram?

      <item>What is the area of the quadrilateral?
    </enumerate-alpha>

    <em|Solution>. (a) The quadrilateral has edges defined by vectors

    <\equation*>
      B<rsub|1>=A<rsub|1>-A<rsub|0>=<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-2>>>>>,B<rsub|2>=A<rsub|2>-A<rsub|0>=<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|5>>>>>,B<rsub|3>=A<rsub|3>-A<rsub|1>=<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|5>>>>>,B<rsub|4>=A<rsub|3>-A<rsub|2>=<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-2>>>>>.
    </equation*>

    Since <math|B<rsub|1>=B<rsub|4>>, <math|B<rsub|2>=B<rsub|3>>, the
    quadrilateral is indeed a parallelogram. (b) The area of a parallelogram
    is given by the determinant formed by edges

    <\equation*>
      Area=det<around*|(|<around*|[|B<rsub|1>
      B<rsub|2>|]>|)>=<det|<tformat|<table|<row|<cell|3>|<cell|2>>|<row|<cell|-2>|<cell|5>>>>>=19.
    </equation*>

    <item>Compute the value of the determinant

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-3>|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|5>|<cell|4>>|<row|<cell|-1>|<cell|6>|<cell|3>|<cell|3>>>>>.
    </equation*>

    <em|Solution>. The strategy is to produce zeros in a row and column and
    then expand in algebraic minors. The value of the determinant is
    preserved by linear combination of rows or columns. Carry out linear
    combinations of column 1 with columns 2,3,4

    Why does this work?

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-3>|<cell|6>|<cell|-1>|<cell|-2>>|<row|<cell|2>|<cell|-5>|<cell|7>|<cell|6>>|<row|<cell|-1>|<cell|8>|<cell|2>|<cell|2>>>>>
    </equation*>

    and expand along first row

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|6>|<cell|-1>|<cell|-2>>|<row|<cell|-5>|<cell|7>|<cell|6>>|<row|<cell|8>|<cell|2>|<cell|2>>>>>.
    </equation*>

    Now carry out linear combinations of column 2 with columns 1,3

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|37>|<cell|7>|<cell|-8>>|<row|<cell|20>|<cell|2>|<cell|-2>>>>>
    </equation*>

    Expand along first row

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|37>|<cell|-8>>|<row|<cell|20>|<cell|-2>>>>>=-74+160=86.
    </equation*>

    <item>Solve the following linear system by Cramer's rule

    <\equation*>
      <around*|{|<tabular|<tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|2>-x<rsub|3>=1>>|<row|<cell|x<rsub|1>-2x<rsub|2>+x<rsub|3>=0>>|<row|<cell|3x<rsub|1>+4x<rsub|2>-2x<rsub|3>=-5>>>>>|\<nobracket\>>
    </equation*>

    <em|Solution>. The principal determinant of the system is

    <\equation*>
      \<Delta\>=<det|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|-2>|<cell|1>>|<row|<cell|3>|<cell|4>|<cell|-2>>>>>=<det|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|5>|<cell|-2>|<cell|-1>>|<row|<cell|-5>|<cell|4>|<cell|2>>>>>=-<det|<tformat|<table|<row|<cell|5>|<cell|-1>>|<row|<cell|-5>|<cell|2>>>>>=-5
      \<gtr\> where did the negative come from?
    </equation*>

    Replacing column <math|i> in <math|\<Delta\>> by the rhs term for
    <math|i=1,2,3> gives

    <\equation*>
      x<rsub|1>=<frac|\<Delta\><rsub|1>|\<Delta\>>=-<frac|1|5><det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|-2>|<cell|1>>|<row|<cell|-5>|<cell|4>|<cell|-2>>>>>=-<frac|1|5><det|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-2>|<cell|1>>|<row|<cell|-5>|<cell|9>|<cell|-7>>>>>=-<frac|1|5><det|<tformat|<table|<row|<cell|-2>|<cell|1>>|<row|<cell|9>|<cell|-7>>>>>=-1
    </equation*>

    <\equation*>
      x<rsub|2>=<frac|\<Delta\><rsub|2>|\<Delta\>>=-<frac|1|5><det|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|-5>|<cell|-2>>>>>=-<frac|1|5><det|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|-1>|<cell|-7>|<cell|-2>>>>>=<frac|1|5><det|<tformat|<table|<row|<cell|3>|<cell|1>>|<row|<cell|-1>|<cell|-7>>>>>=-4
      \<gtr\> why make last column 1?
    </equation*>

    <\equation*>
      x<rsub|3>=<frac|\<Delta\><rsub|3>|\<Delta\>>=-<frac|1|5><det|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|3>|<cell|4>|<cell|-5>>>>>=-<frac|1|5><det|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|5>|<cell|-2>|<cell|2>>|<row|<cell|-5>|<cell|4>|<cell|-8>>>>>=<frac|1|5><det|<tformat|<table|<row|<cell|5>|<cell|2>>|<row|<cell|-5>|<cell|-8>>>>>=-7
      \<gtr\> why make middle colum 1 here?
    </equation*>

    <item>What is the volume of the parallelepiped with edges

    <\equation*>
      A<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|4>>>>>,A<rsub|2>=<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|-5>>>>>,A<rsub|3>=A<rsub|1>\<times\>A<rsub|2>?
    </equation*>

    <em|Solution>. The <math|A<rsub|3>> edge components are computed from the
    cross product

    <\equation*>
      <det|<tformat|<table|<row|<cell|<wide|i|\<vect\>>>|<cell|<wide|j|\<vect\>>>|<cell|<wide|k|\<vect\>>>>|<row|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|-1>|<cell|3>|<cell|-5>>>>>=-22
      <wide|i|\<vect\>>+<wide|j|\<vect\>>+5<wide|k|\<vect\>>.
    </equation*>

    The parallelepiped volume is given by the determinant

    <\equation*>
      V=<det|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|-1>|<cell|3>|<cell|-5>>|<row|<cell|-22>|<cell|1>|<cell|5>>>>>=<det|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|5>|<cell|-1>>|<row|<cell|-22>|<cell|45>|<cell|93>>>>>=5<det|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|9>|<cell|93>>>>>=510.
      \<gtr\> property: each coefficient only affects one column
    </equation*>

    <item>Find the eigenvalues and eigenvectors of the matrix <math|A=u
    u<rsup|T>> with <math|u<rsup|T>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>>>>>.

    <em|Solution>. The matrix

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|4>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1>>>>>
    </equation*>

    is of dimensions <math|3\<times\>3> and of rank 1. We expect to find only
    one non-zero eigenvalue. The characteristic determinant is

    <\equation*>
      det<around*|(|A-\<lambda\> I|)>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|4-\<lambda\>>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1-\<lambda\>>>>>>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2\<lambda\>>|<cell|\<lambda\>>>|<row|<cell|2>|<cell|-\<lambda\>>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|-\<lambda\>>>>>>=\<lambda\><rsup|2><det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|-1>>>>>=
    </equation*>

    <\equation*>
      =\<lambda\><rsup|2><det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2>|<cell|2-\<lambda\>>>|<row|<cell|2>|<cell|-1>|<cell|2>>|<row|<cell|1>|<cell|0>|<cell|0>>>>>=\<lambda\><rsup|2><det|<tformat|<table|<row|<cell|2>|<cell|2-\<lambda\>>>|<row|<cell|-1>|<cell|2>>>>>=\<lambda\><rsup|2><around*|(|6-\<lambda\>|)>\<Rightarrow\>\<lambda\><rsub|1>=\<lambda\><rsub|2>=0,\<lambda\><rsub|3>=6.
    </equation*>

    Since <math|rank<around*|(|A|)>=1> we know that by row echelon reduction

    <\equation*>
      A\<sim\><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    and the two eigenvectors associated with repeated eigenvalue
    <math|\<lambda\><rsub|1,2>=1> are

    <\equation*>
      x<rsub|1>=<matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>,x<rsub|2>=<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|1>>>>>
    </equation*>

    (basis for <math|null<around*|(|A|)>>). For <math|\<lambda\><rsub|3>=6>,
    row echelon reduction leads to

    <\equation*>
      A-6I=<matrix|<tformat|<table|<row|<cell|-5>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|-2>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|-5>>>>>\<sim\><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-6>|<cell|12>>|<row|<cell|1>|<cell|2>|<cell|-5>>>>>\<Rightarrow\>x<rsub|3>=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|1>>>>>
    </equation*>

    <item>A real-valued matrix <math|A\<in\>\<bbb-R\><rsup|m\<times\>m>> is
    skew-symmetric if <math|A=-A<rsup|T>>. Prove that the eigenvalues of a
    skew-symmetric matrix are purely imaginary (i.e. complex numbers with
    zero real part).

    <em|Solution>. The complex conjugate of the eigenvalue relationship
    <math|A x=\<lambda\> x> is <math|A <wide|x|\<bar\>>=<wide|\<lambda\>|\<bar\>><wide|x|\<bar\>>>
    with transpose

    <\equation*>
      <wide|x|\<bar\>><rsup|T>A<rsup|T>=<wide|\<lambda\>|\<bar\>><wide|x|\<bar\>><rsup|T>\<Rightarrow\>-<wide|x|\<bar\>><rsup|T>A=<wide|\<lambda\>|\<bar\>><wide|x|\<bar\>><rsup|T>.
    </equation*>

    Multiply eigenvalue relation on left by <math|<wide|x|\<bar\>><rsup|T>>,
    above relation on left by <math|x> to obtain

    <\equation*>
      <wide|x|\<bar\>><rsup|T>A x=\<lambda\>
      <wide|x|\<bar\>><rsup|T>x,-<wide|x|\<bar\>><rsup|T>A
      x=<wide|\<lambda\>|\<bar\>><wide|x|\<bar\>><rsup|T>
      x\<Rightarrow\>-\<lambda\>=<wide|\<lambda\>|\<bar\>>
    </equation*>

    since <math|x\<neq\>0>. The real part of a complex number is given by
    <math|Re \<lambda\>=<around*|(|\<lambda\>+<wide|\<lambda\>|\<bar\>>|)>/2=0>,
    so <math|\<lambda\>> is purely imaginary.

    <item>Prove that

    <\equation*>
      A<rsup|k>=<frac|1|2><matrix|<tformat|<table|<row|<cell|1+3<rsup|k>>|<cell|1-3<rsup|k>>>|<row|<cell|1-3<rsup|k>>|<cell|1+3<rsup|k>>>>>>
    </equation*>

    for

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|2>>>>>.
    </equation*>

    <em|Solution>. The matrix <math|A> is symmetric, hence diagonalizable,
    <math|A=Q \<Lambda\> Q<rsup|T>>, with <math|Q> an orthogonal matrix, such
    that\ 

    <\equation*>
      A<rsup|k>=<around*|(|Q\<Lambda\>Q<rsup|T>|)><rsup|k>=<around*|(|Q\<Lambda\>Q<rsup|T>|)><around*|(|Q\<Lambda\>Q<rsup|T>|)>\<ldots\><around*|(|Q\<Lambda\>Q<rsup|T>|)>=Q\<Lambda\><rsup|k>Q<rsup|T>
    </equation*>

    The characteristic polynomial of <math|A> is

    <\equation*>
      det<around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|2-\<lambda\>>|<cell|-1>>|<row|<cell|-1>|<cell|2-\<lambda\>>>>>>=3-4\<lambda\>+\<lambda\><rsup|2>
    </equation*>

    with roots <math|\<lambda\><rsub|1>=1>, <math|\<lambda\><rsub|2>=3>. From

    <\equation*>
      A-\<lambda\><rsub|1>I=<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>\<sim\><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>>>>>
    </equation*>

    obtain unit-norm eigenvector

    <\equation*>
      x<rsub|1>=<frac|1|<sqrt|2>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>,
    </equation*>

    and from

    <\equation*>
      A-\<lambda\><rsub|2>I=<matrix|<tformat|<table|<row|<cell|-1>|<cell|-1>>|<row|<cell|-1>|<cell|-1>>>>>\<sim\><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>
    </equation*>

    obtain unit-norm eigenvector

    <\equation*>
      x<rsub|2>=<frac|1|<sqrt|2>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>.
    </equation*>

    The eigenvector matrix is

    <\equation*>
      Q=<frac|1|<sqrt|2>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>>,Q<rsup|T>=Q<rsup|-1>=<frac|1|<sqrt|2>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>>
    </equation*>

    \ Carry out the computation

    <\equation*>
      Q\<Lambda\><rsup|k>Q<rsup|T>=<frac|1|2><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|3<rsup|k>>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>>=<frac|1|2><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|3<rsup|k>>|<cell|-3<rsup|k>>>>>>
    </equation*>

    <\equation*>
      Q\<Lambda\><rsup|k>Q<rsup|T>=<frac|1|2><matrix|<tformat|<table|<row|<cell|1+3<rsup|k>>|<cell|1-3<rsup|k>>>|<row|<cell|1-3<rsup|k>>|<cell|1+3<rsup|k>>>>>>.
    </equation*>

    <item>Compute the singular value decomposition of <math|A=w w<rsup|T>>
    with <math|w<rsup|T>=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>>>>>.

    <em|Solution>. The singular value decomposition of
    <math|A\<in\>\<bbb-R\><rsup|3\<times\>3>> is <math|A=U\<Sigma\>V<rsup|T>>
    with <math|U,V\<in\>\<bbb-R\><rsup|3\<times\>3>> orthogonal matrices and
    <math|\<Sigma\>=diag<around*|(|\<sigma\><rsub|1>,\<sigma\><rsub|2>,\<sigma\><rsub|3>|)>>.
    For symmetric <math|A>, we have <math|A=U \<Sigma\> U<rsup|T>>. The SVD
    can be expressed as a sum of rank-1 contributions

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|U<rsub|1>>|<cell|U<rsub|2>>|<cell|U<rsub|3>>>>>><matrix|<tformat|<table|<row|<cell|\<sigma\><rsub|1>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<sigma\><rsub|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<sigma\><rsub|3>>>>>><matrix|<tformat|<table|<row|<cell|U<rsub|1><rsup|T>>>|<row|<cell|U<rsub|2><rsup|T>>>|<row|<cell|U<rsub|3><rsup|T>>>>>>=\<sigma\><rsub|1>U<rsub|1>U<rsub|1><rsup|T>+\<sigma\><rsub|2>U<rsub|2>U<rsub|2><rsup|T>+\<sigma\><rsub|3>U<rsub|3>U<rsub|3><rsup|T>.
    </equation*>

    For <math|A=w w<rsup|T>> there is a single rank-1 term hence
    <math|\<sigma\><rsub|2>=\<sigma\><rsub|3>=0>. From
    <math|<around*|\<\|\|\>|w|\<\|\|\>>=<sqrt|6>>, we can write

    <\equation*>
      A=6U<rsub|1> U<rsub|1><rsup|T>,U<rsub|1>=<frac|1|<sqrt|6>>w=<frac|1|<sqrt|6>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|1>>>>>.
    </equation*>

    To complete <math|U>, choose <math|U<rsub|2>> as a unit vector orthogonal
    to <math|U<rsub|1>>

    <\equation*>
      U<rsub|2>=<frac|1|<sqrt|3>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|1>>>>>
    </equation*>

    and <math|U<rsub|3>=U<rsub|1>\<times\>U<rsub|2>> (by properties of cross
    product <math|U<rsub|3>> will be of unit norm and orthogonal to both
    <math|U<rsub|1>> and <math|U<rsub|2>>)

    <\equation*>
      <det|<tformat|<table|<row|<cell|<wide|i|\<vect\>>>|<cell|<wide|j|\<vect\>>>|<cell|<wide|k|\<vect\>>>>|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>>>>>=3
      <wide|i|\<vect\>>-3<wide|k|\<vect\>>\<Rightarrow\>U<rsub|3>=<frac|1|<sqrt|2>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>.
    </equation*>

    The SVD is

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|4>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|6>>>|<cell|<frac|1|<sqrt|3>>>|<cell|<frac|1|<sqrt|2>>>>|<row|<cell|<frac|2|<sqrt|6>>>|<cell|-<frac|1|<sqrt|3>>>|<cell|0>>|<row|<cell|<frac|1|<sqrt|6>>>|<cell|<frac|1|<sqrt|3>>>|<cell|-<frac|1|<sqrt|2>>>>>>><matrix|<tformat|<table|<row|<cell|6>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|6>>>|<cell|<frac|2|<sqrt|6>>>|<cell|<frac|1|<sqrt|6>>>>|<row|<cell|<frac|1|<sqrt|3>>>|<cell|-<frac|1|<sqrt|3>>>|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|<frac|1|<sqrt|2>>>|<cell|0>|<cell|-<frac|1|<sqrt|2>>>>>>>
    </equation*>

    \ 
  </enumerate-numeric>

  <subsection|Additional course capstone questions>

  \;

  <\enumerate-numeric>
    <item>Determine the singular value decomposition of\ 

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>
    </equation*>

    \;

    \;

    <\equation*>
      \ First performing rref<around*|(|A|)> to find the column space,
    </equation*>

    <\session|octave|default>
      \;

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        A=[1 1 0; 0 1 1]; disp(rref(A));
      <|unfolded-io>
        \ \ \ 1 \ \ 0 \ -1

        \ \ \ 0 \ \ 1 \ \ 1
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;

      \;
    </session>

    <\equation*>
      Performing rref<around*|(|A<rsup|T>|)> to find the row space,
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(rref(A'));
      <|unfolded-io>
        \ \ \ 1 \ \ 0

        \ \ \ 0 \ \ 1

        \ \ \ 0 \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\equation*>
      Thus the four fundamental subspaces of A are:
    </equation*>

    <\equation*>
      C<around*|(|A|)>=<around*|\<langle\>|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|\<rangle\>>,N<around*|(|A<rsup|T>|)>=<with|font-series|bold|0>
    </equation*>

    <\equation*>
      C<around*|(|A<rsup|T>|)>=<around*|\<langle\>|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>|\<rangle\>>,N<around*|(|A|)>=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>><with|font-series|bold|<with|font-series|bold|X>><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|1>>>>>=<around*|\<langle\>|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|1>>>>>|\<rangle\>>
    </equation*>

    <\equation*>
      Thus,U=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>,V=<frac|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>|<around*|\<\|\|\>|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|-1>|<cell|1>|<cell|1>>>>>|\<\|\|\>>>=<matrix|<tformat|<table|<row|<cell|1/<sqrt|2>>|<cell|0>|<cell|1/<sqrt|3>>>|<row|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>|<cell|-1/<sqrt|3>>>|<row|<cell|0>|<cell|1/<sqrt|2>>|<cell|1/<sqrt|3>>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    The singular value decomposition of <math|A\<in\>\<bbb-R\><rsup|2\<times\>3>>
    is <math|A=U\<Sigma\>V<rsup|T>> with <math|U\<in\>\<bbb-R\><rsup|2\<times\>2>,V\<in\>\<bbb-R\><rsup|3\<times\>3>>
    orthogonal matrices and <math|\<Sigma\>=diag<around*|(|\<sigma\><rsub|1>,\<sigma\><rsub|2>,\<sigma\><rsub|3>|)>>.\ 

    <\equation*>
      A=U\<Sigma\>V<rsup|T>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>\<Sigma\><matrix|<tformat|<table|<row|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>|<cell|0>>|<row|<cell|0>|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>>|<row|<cell|1/<sqrt|3>>|<cell|-1/<sqrt|3>>|<cell|1/<sqrt|3>>>>>>
    </equation*>

    <\equation*>
      Solving for \<Sigma\>,
    </equation*>

    <\equation*>
      \<Sigma\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>><rsup|-1><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>|<cell|0>>|<row|<cell|0>|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>>|<row|<cell|1/<sqrt|3>>|<cell|-1/<sqrt|3>>|<cell|1/<sqrt|3>>>>>><rsup|-1>
    </equation*>

    <\equation*>
      Because <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>><rsup|-1>=I,
    </equation*>

    <\equation*>
      \<Sigma\>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>|<cell|0>>|<row|<cell|0>|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>>|<row|<cell|1/<sqrt|3>>|<cell|-1/<sqrt|3>>|<cell|1/<sqrt|3>>>>>><rsup|-1>
    </equation*>

    <\equation*>
      Using octave to find the inverse of V<rsup|T> and then solving for
      \<Sigma\>:
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        \ V=[1/sqrt(2), 0, 1/sqrt(3); 1/sqrt(2), 1/sqrt(2), -1/sqrt(3); 0,
        1/sqrt(2), 1/sqrt(3)]; disp(Sigma*inv(V')); format short;
      <|unfolded-io>
        \ \ \ 1.41421 \ \ 0.00000 \ \ 0.00000

        \ \ \ 0.00000 \ \ 1.41421 \ -0.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>

      \;
    </session>

    <\equation*>
      Thus \<Sigma\>=<matrix|<tformat|<table|<row|<cell|<sqrt|2>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<sqrt|2>>|<cell|0>>>>>
    </equation*>

    <\equation*>
      And the SVD Decomposition is as follows:
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>><matrix|<tformat|<table|<row|<cell|<sqrt|2>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<sqrt|2>>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>|<cell|0>>|<row|<cell|0>|<cell|1/<sqrt|2>>|<cell|1/<sqrt|2>>>|<row|<cell|1/<sqrt|3>>|<cell|-1/<sqrt|3>>|<cell|1/<sqrt|3>>>>>>
    </equation*>

    \;

    <item>Determine <math|s> such that \ 

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|s>|<cell|-4>|<cell|-4>>|<row|<cell|-4>|<cell|s>|<cell|-4>>|<row|<cell|-4>|<cell|-4>|<cell|s>>>>>
    </equation*>

    is positive definite.

    <\equation*>
      Solving det<around*|(|A-\<lambda\>I|)>=0 in order to find the
      eigenvalues of A,
    </equation*>

    <\equation*>
      \ det<around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|s-\<lambda\>>|<cell|-4>|<cell|-4>>|<row|<cell|-4>|<cell|s-\<lambda\>>|<cell|-4>>|<row|<cell|-4>|<cell|-4>|<cell|s-\<lambda\>>>>>>
    </equation*>

    <\equation*>
      Using Sarrus<rprime|'> Rule:
    </equation*>

    <\equation*>
      det<around*|(|A-\<lambda\>I|)>=<around*|(|s-\<lambda\>|)><rsup|3>+<around*|(|-4|)><rsup|3>+<around*|(|-4|)><rsup|3>-48<around*|(|s-\<lambda\>|)>
    </equation*>

    <\equation*>
      =<around*|(|s-\<lambda\>|)><rsup|3>+<around*|(|-4|)><rsup|3>+<around*|(|-4|)><rsup|3>-48<around*|(|s-\<lambda\>|)>=0
    </equation*>

    <\equation*>
      <around*|(|s-\<lambda\>|)> =-8,4
    </equation*>

    <\equation*>
      Two cases:
    </equation*>

    <\equation*>
      If \<lambda\>=s+8\<nocomma\>,s must be greater than -8 for \<lambda\>
      to be positive.
    </equation*>

    <\equation*>
      If \<lambda\>=s-4,s must be greater than 4 for \<nocomma\> \<lambda\>
      to be positive.
    </equation*>

    \;

    <item>Find a matrix <math|A\<neq\>0> for which <math|A<rsup|3>=0>. What
    are the eigenvalues of <math|A>?

    <\equation*>
      A=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>
    </equation*>

    <\equation*>
      Verifying A<rsup|3>=0 using octave:
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        A=[0 1;0 0]; disp(A^3);
      <|unfolded-io>
        \ \ \ 0 \ \ 0

        \ \ \ 0 \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\equation*>
      Finding the eigenvalues by solving det<around*|(|A-\<lambda\>I|)>=0
    </equation*>

    <\equation*>
      <det|<tformat|<table|<row|<cell|-\<lambda\>>|<cell|1>>|<row|<cell|0>|<cell|-\<lambda\>>>>>>=0
    </equation*>

    <\equation*>
      <around*|(|-\<lambda\>|)><rsup|2>=0,\<lambda\><rsub|1>,\<lambda\><rsub|2>=0
    </equation*>

    <\equation*>
      Verifying the eigenvalues using octave:
    </equation*>

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(eig(A));
      <|unfolded-io>
        \ \ \ 0

        \ \ \ 0
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <item>If <math|B\<in\>\<bbb-R\><rsup|3\<times\>3>> has eigenvalues 0,1,2
    give values (or state that there is not enough information to specify a
    value) for:

    <\enumerate-alpha>
      <item>rank<math|<around*|(|B|)>>

      Because one of the eigenvalues of B is 0, then
      det(B-<math|\<lambda\>I>)=0 for <math|\<lambda\>=0> can be rewritten as
      det(B)=0.

      If the determinant of B is 0, then the column vectors are not linearly
      independent.\ 

      Because two of the eigenvalues are distinct and non-zero, two of the
      columns in B are linearly independent. Thus the rank is one less than
      full rank, or rank<math|<around*|(|B|)>>= 3-1=2

      <item><math|det<around*|(|B<rsup|T>B|)>=<around*|\||B<rsup|T>B|\|>>

      <math|det<around*|(|B<rsup|T>B|)>=det<around*|(|B<rsup|T>|)>det<around*|(|B|)>
      >

      Because one of the eigenvalues of B is 0, then
      det(B-<math|\<lambda\>I>)=0 for <math|\<lambda\>=0> can be rewritten as
      det(B)=0.

      Thus <math|det<around*|(|B<rsup|T>B|)>=det<around*|(|B<rsup|T>|)>det<around*|(|B|)>
      >=<math|det<around*|(|B<rsup|T>|)>*<around*|(|0|)>=0>

      <item>eigenvalues of <math|B<rsup|T>B>

      det(<math|B<rsup|T>B-><math|\<lambda\>I>)=0,\ 

      Not enough information to specify a value.\ 

      <item>eigenvalues of <math|<around*|(|B<rsup|2>+I|)><rsup|-1>>

      By the definition of an inverse matrices, if A is an inverse matrix, if
      <math|\<lambda\>> is an eigenvalue of A, then 1/<math|\<lambda\>> is an
      eigenvalue of the inverse of A.

      Moreover, we know that the matrix B can be can be expressed as:

      <\equation*>
        <matrix|<tformat|<table|<row|<cell|0>|<cell|>|<cell|>>|<row|<cell|>|<cell|1>|<cell|>>|<row|<cell|>|<cell|>|<cell|2>>>>>
      </equation*>

      <\equation*>
        with arbitrary values in the blank spaces.
      </equation*>

      Thus, the eigenvalues of <math|<around*|(|B<rsup|2>+I|)><rsup|-1>> are:

      <\equation*>
        <frac|1|0<rsup|2>+1>=1
      </equation*>

      <\equation*>
        <frac|1|1<rsup|2>+1>=<frac|1|2>
      </equation*>

      <\equation*>
        <frac|1|2<rsup|2>+1>=<frac|1|5>
      </equation*>

      \ 

      <\equation*>
        \;
      </equation*>
    </enumerate-alpha>

    <item>Write the rotation matrix <math|R<rsub|\<theta\>>> of angle
    <math|\<theta\>> around axis <math|u\<in\>\<bbb-R\><rsup|3>>,
    <math|<around*|\<\|\|\>|u|\<\|\|\>>=1>. Find the eigenvalues and
    eigenvectors of <math|R<rsub|\<theta\>>.>

    \;

    By Rodrigues' Rotation Formula, the rotation matrix formed from a given
    axis and angle can be expressed as:

    \;

    <\equation*>
      R<rsub|\<theta\>>=cos\<theta\>I+sin\<theta\><around*|[|u|]><rsub|x>+<around*|(|1-cos\<theta\>|)>uxu\<nocomma\>
    </equation*>

    <\equation*>
      where <around*|[|u|]><rsub|x>is the cross product of u\<nocomma\>,and
      uxu is the tensor product.
    </equation*>

    <\equation*>
      <around*|[|u|]><rsub|x> = <matrix|<tformat|<table|<row|<cell|0>|<cell|-u<rsub|x>>|<cell|u<rsub|y>>>|<row|<cell|u<rsub|x>>|<cell|0>|<cell|-u<rsub|x>>>|<row|<cell|-u<rsub|y>>|<cell|u<rsub|x>>|<cell|0>>>>>
    </equation*>

    <\equation*>
      uxu=<matrix|<tformat|<table|<row|<cell|u<rsub|x><rsup|2>>|<cell|u<rsub|x>u<rsub|y>>|<cell|u<rsub|x>u<rsub|x>>>|<row|<cell|u<rsub|x>u<rsub|y>>|<cell|u<rsub|y><rsup|2>>|<cell|u<rsub|y>u<rsub|x>>>|<row|<cell|u<rsub|x>u<rsub|x>>|<cell|u<rsub|y>u<rsub|x>>|<cell|u<rsub|x><rsup|2>>>>>>
    </equation*>

    <\equation*>
      thus R is:
    </equation*>

    <\equation*>
      R<rsub|\<theta\>>=<matrix|<tformat|<table|<row|<cell|cos\<theta\>+u<rsub|x><rsup|2><around*|(|1-cos\<theta\>|)>>|<cell|u<rsub|x>u<rsub|y><around*|(|1-cos\<theta\>|)>-u<rsub|x>sin\<theta\>>|<cell|u<rsub|x>u<rsub|z><around*|(|1-cos\<theta\>|)>-u<rsub|y>sin\<theta\>>>|<row|<cell|u<rsub|y>u<rsub|x><around*|(|1-cos\<theta\>|)>-u<rsub|x>sin\<theta\>>|<cell|cos\<theta\>+u<rsub|y><rsup|2><around*|(|1-cos\<theta\>|)>>|<cell|u<rsub|y>u<rsub|x><around*|(|1-cos\<theta\>|)>-u<rsub|x>sin\<theta\>>>|<row|<cell|u<rsub|x>u<rsub|x><around*|(|1-cos\<theta\>|)>-u<rsub|y>sin\<theta\>>|<cell|u<rsub|x>u<rsub|y><around*|(|1-cos\<theta\>|)>-u<rsub|x>sin\<theta\>>|<cell|cos\<theta\>+u<rsub|z><rsup|2><around*|(|1-cos\<theta\>|)>>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <\equation*>
      \ From the resource:<around*|(|mathworld.wolfram.com/RotationMatrix.html|)>:
    </equation*>

    <\equation*>
      the eigenvalues of R are:\ 
    </equation*>

    <\equation*>
      \<lambda\><rsub|1>=1,\ 
    </equation*>

    <\equation*>
      \<lambda\><rsub|2>=e<rsup|i\<theta\>> =cos\<theta\>+isin\<theta\>,
    </equation*>

    <\equation*>
      \<lambda\><rsub|3>=e<rsup|-i\<theta\>>=cos\<theta\>-isin\<theta\>
    </equation*>

    <\equation*>
      The original eigenproblem with R<rsub|x>:
    </equation*>

    <\equation*>
      R<rsub|\<theta\>><with|font-series|bold|u >=\<lambda\>
      <with|font-series|bold|u>
    </equation*>

    <\equation*>
      The initial eigenproblem is related to the new eigenproblem below:
    </equation*>

    <\equation*>
      <around*|(|R<rsub|x>B|)><with|font-series|bold|u>=\<lambda\>
      <with|font-series|bold|u>
    </equation*>

    <\equation*>
      Thus the following is true:
    </equation*>

    <\equation*>
      <around*|(|B<rsup|T>R<rsub|x>B|)>u=\<lambda\> <with|font-series|bold|u>
    </equation*>

    <\equation*>
      Then,
    </equation*>

    <\equation*>
      <around*|(|R<rsub|x>B|)>u=\<lambda\>B <with|font-series|bold|u>
    </equation*>

    <\equation*>
      R<rsub|x><around*|(|Bu|)>=\<lambda\>B <with|font-series|bold|u>
    </equation*>

    <\equation*>
      Which becomes another eigenproblem:
    </equation*>

    <\equation*>
      R<rsub|x>y=\<lambda\>y
    </equation*>

    <\equation*>
      By this relationship,the eigenvectors of R<rsub|\<theta\>> are the same
      as the eigenvectors\ 
    </equation*>

    <\equation*>
      of the three basic rotation matrice: R<rsub|x>,R<rsub|y>,R<rsub|z>
    </equation*>

    <\equation*>
      Choosing R<rsub|x >arbitrarily to find the eigenvectors,
    </equation*>

    <\equation*>
      R<rsub|x >=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos\<theta\>>|<cell|-sin\<theta\>>>|<row|<cell|0>|<cell|sin\<theta\>>|<cell|cos\<theta\>>>>>>
    </equation*>

    <\equation*>
      Computing null space of R<rsub|x >-\<lambda\>I for
      \<lambda\>=1,e<rsup|i\<theta\>> and e<rsup|-i\<theta\>> in order to
      find the eigenvectors,
    </equation*>

    <\equation*>
      For \<lambda\><rsub|1>=1
    </equation*>

    \;

    <\equation*>
      We know that R<rsub|\<theta\>><with|font-series|bold|u >=
      <with|font-series|bold|u>
    </equation*>

    <\equation*>
      Thus the eigenvector is <with|font-series|bold|u>
    </equation*>

    \;

    <\equation*>
      For \ \<lambda\>=cos\<theta\>+isin\<theta\>
    </equation*>

    <\equation*>
      R<rsub|x >-\<lambda\><rsub|2>I=<matrix|<tformat|<table|<row|<cell|-cos\<theta\>-isin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-isin\<theta\>>|<cell|-sin\<theta\>>>|<row|<cell|0>|<cell|sin\<theta\>>|<cell|-isin\<theta\>>>>>>
    </equation*>

    <\equation*>
      Solving the system <matrix|<tformat|<table|<row|<cell|-cos\<theta\>-isin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-isin\<theta\>>|<cell|-sin\<theta\>>>|<row|<cell|0>|<cell|sin\<theta\>>|<cell|-isin\<theta\>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <\equation*>
      <around*|(|1|)><around*|(|-cos\<theta\>-isin\<theta\>|)>x=0
    </equation*>

    <\equation*>
      <around*|(|2|)><around*|(|-isin\<theta\>|)>y-<around*|(|sin\<theta\>|)>z=0
    </equation*>

    <\equation*>
      <around*|(|3|)><around*|(|sin\<theta\>|)>y-<around*|(|isin\<theta\>|)>z=0
    </equation*>

    <\equation*>
      <around*|(|1|)> gives x=0
    </equation*>

    <\equation*>
      <around*|(|2|)> gives y=<frac|<around*|(|sin\<theta\>|)>z|-isin\<theta\>>=-<frac|z|i>,z=-iy
    </equation*>

    <\equation*>
      if y=1\<nocomma\>,then the solution vector is
      <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-i>>>>>
    </equation*>

    <\equation*>
      null<around*|(|R<rsub|x >-\<lambda\><rsub|2>I|)>=<around*|\<langle\>|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-i>>>>>|\<rangle\>>\<nocomma\>
    </equation*>

    <\equation*>
      thus the eigenvector for\<lambda\><rsub|2> is
      <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-i>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    \;

    <\equation*>
      For \ \<lambda\><rsub|3>=cos\<theta\>-isin\<theta\>
    </equation*>

    <\equation*>
      R<rsub|x >-\<lambda\><rsub|3>I=<matrix|<tformat|<table|<row|<cell|-cos\<theta\>+isin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|isin\<theta\>>|<cell|-sin\<theta\>>>|<row|<cell|0>|<cell|sin\<theta\>>|<cell|isin\<theta\>>>>>>
    </equation*>

    <\equation*>
      Solving the system <matrix|<tformat|<table|<row|<cell|-cos\<theta\>+isin\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|isin\<theta\>>|<cell|-sin\<theta\>>>|<row|<cell|0>|<cell|sin\<theta\>>|<cell|isin\<theta\>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <\equation*>
      <around*|(|1|)><around*|(|-cos\<theta\>+isin\<theta\>|)>x=0
    </equation*>

    <\equation*>
      <around*|(|2|)><around*|(|isin\<theta\>|)>y-<around*|(|sin\<theta\>|)>z=0
    </equation*>

    <\equation*>
      <around*|(|3|)><around*|(|sin\<theta\>|)>y+<around*|(|isin\<theta\>|)>z=0
    </equation*>

    <\equation*>
      <around*|(|1|)> gives x=0
    </equation*>

    <\equation*>
      <around*|(|2|)> gives y=<frac|<around*|(|sin\<theta\>|)>z|isin\<theta\>>=<frac|z|i>,z=iy
    </equation*>

    <\equation*>
      if y=1\<nocomma\>,then the solution vector is
      <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|i>>>>>
    </equation*>

    <\equation*>
      null<around*|(|R<rsub|x >-\<lambda\><rsub|3>I|)>=<around*|\<langle\>|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|i>>>>>|\<rangle\>>
    </equation*>

    <\equation*>
      Thus the eigenvector for\<lambda\><rsub|3> is
      <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|i>>>>>
    </equation*>

    \;

    \;

    <item>Derive formulas for the inverse and determinant of Hadamard
    matrices of order <math|m>, matrices with orthogonal rows/columns and
    entries equal to either 1 or -1.

    <with|font-series|bold|Inverse>:

    <\equation*>
      The inverse of the Hadamard Matrix\<nocomma\>,A,must follow the
      property<around*|(|true of any inverse|)>:
    </equation*>

    <\equation*>
      AA<rsup|-1>=I
    </equation*>

    \;

    <\equation*>
      Because each column of the Hadamard Matrix is orthogonal to the others,
      we know that:
    </equation*>

    \;

    <\equation*>
      <around*|(|1|)> \<nosymbol\>the dot product between columns is 0
    </equation*>

    <\equation*>
      <around*|(|2|)> the dot product of a column with itself is
      <around*|(|\<pm\>1|)><rsup|2><rsub|1>+<around*|(|\<pm\>1|)><rsup|2><rsub|2>+\<ldots\>+<around*|(|\<pm\>1|)><rsup|2><rsub|m>=m
    </equation*>

    <\equation*>
      by <around*|(|1|)> and <around*|(|2|)>, A<rsup|T>A will be
      diag<around*|(|m\<ldots\>.m|)>\<nosymbol\>:
    </equation*>

    <\equation*>
      A<rsup|T>A=<matrix|<tformat|<table|<row|<cell|m>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|m>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<ldots\>.>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|m>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|m>>>>>=m<around*|(|I|)>
    </equation*>

    <\equation*>
      Because AA<rsup|-1>=I and A<rsup|T>A=m<around*|(|I|)>
    </equation*>

    <\equation*>
      A<rsup|-1>=<frac|A<rsup|T>|m>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <with|font-series|bold|Determinant:>

    \;

    <\equation*>
      \ The determinant of the matrix is the determinant of each column
      multiplied by each other.
    </equation*>

    <\equation*>
      Because the rows and columns of the matrix are orthogonal<around*|(|by
      definition of Hadamard matrix|)>,
    </equation*>

    <\equation*>
      then the parallelipiped formed by the columns of the matrix have all
      right angles.
    </equation*>

    <\equation*>
      Thus, the determinant of each column<around*|(|volume of
      parallelipiped|)> is just the 2-norm of each column\<nosymbol\>.
    </equation*>
  </enumerate-numeric>

  <\equation*>
    Because each column is of size m with values 1 or -1,then the 2-norm of
    each column is :
  </equation*>

  <\equation*>
    <sqrt|<around*|(|\<pm\>1|)><rsup|2><rsub|1>+<around*|(|\<pm\>1|)><rsup|2><rsub|2>+\<ldots\>+<around*|(|\<pm\>1|)><rsup|2><rsub|m>><rsub|>=
    <sqrt|m>
  </equation*>

  <\equation*>
    The determinant of the matrix is the determinant of the columns
    multiplied by each other.
  </equation*>

  <\equation*>
    Because there are m columns\<nocomma\>,det<around*|(|Hadamard Matrix|)>=
    <sqrt|m><rsup|m>
  </equation*>

  \;

  \;

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
    <associate|auto-1|<tuple|1|7>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|8|Homework2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Final examination preparation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2<space|2spc>Additional course capstone
      questions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>