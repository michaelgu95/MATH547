<TeXmacs|1.99.2>

<style|generic>

<\body>
  MATH547 Extra Credit Simplex problem - Michael Gu

  \;

  <with|font-series|bold|Question>:

  Simplex in <math|\<bbb-R\><rsup|1>> is a line segment, with
  <math|r<rsub|1>=x<rsub|1>> and <math|r<rsub|2>=x<rsub|2>>

  Then, <math|\<Delta\>=<det|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|x<rsub|1>>|<cell|x<rsub|2>>>>>>=x<rsub|2>-x<rsub|1>>,
  which is the length of the line between <math|x<rsub|2>> and
  <math|x<rsub|1>>

  \;

  Simplex in <math|\<bbb-R\><rsup|2>> is a triangle, with vertices
  <math|<around*|(|x<rsub|1,>y<rsub|1>|)>>,
  <math|<around*|(|x<rsub|2>,y<rsub|2>|)>>, and
  <math|<around*|(|x<rsub|3>,y<rsub|3>|)>>

  Then, <math|\<Delta\>=<frac|1|2><det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|x<rsub|1>>|<cell|x<rsub|2>>|<cell|x<rsub|3>>>|<row|<cell|y<rsub|1>>|<cell|y<rsub|2>>|<cell|y<rsub|3>>>>>>=<frac|1|2><around*|(|x<rsub|2>y<rsub|3>+x<rsub|1>y<rsub|2>+x<rsub|3>y<rsub|1>-x<rsub|2>y<rsub|1>-x<rsub|3>y<rsub|2>-x<rsub|1>y<rsub|3>|)>>,
  which is the area

  \;

  Simplex in <math|\<bbb-R\><rsup|3>> is a tetrahedron, with vertices
  <math|<around*|(|x<rsub|1,>y<rsub|1>,z<rsub|1>|)>> ...
  <math|<around*|(|x<rsub|4>,y<rsub|4>,z<rsub|4>|)>>

  Then, <math|\<Delta\>=<frac|1|6><det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|x<rsub|1>>|<cell|x<rsub|2>>|<cell|x<rsub|3>>|<cell|x<rsub|4>>>|<row|<cell|y<rsub|1>>|<cell|y<rsub|2>>|<cell|y<rsub|3>>|<cell|y<rsub|4>>>|<row|<cell|z<rsub|1>>|<cell|z<rsub|2>>|<cell|z<rsub|3>>|<cell|z<rsub|4>>>>>>=>the
  volume of the tetrahedron

  \;

  Prove this formula for simplex in <math|\<bbb-R\><rsup|m>> (m-dimensional
  simplex):\ 

  <\equation*>
    \<Delta\>=<frac|1|m!><det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|\<ldots\>>|<cell|1>|<cell|1>>|<row|<cell|x<rsub|1,1>>|<cell|x<rsub|1,2>>|<cell|\<ldots\>>|<cell|x<rsub|1,m>>|<cell|x<rsub|1,m+1>>>|<row|<cell|x<rsub|2,1>>|<cell|x<rsub|2,2>>|<cell|\<ldots\>>|<cell|x<rsub|2,m>>|<cell|x<rsub|2,m+1>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|x<rsub|m,1>>|<cell|x<rsub|m,2>>|<cell|\<ldots\>>|<cell|x<rsub|m,m>>|<cell|x<rsub|m,m+1>>>>>>
  </equation*>

  \;

  <\equation*>
    <underline|<with|font-series|bold|Proof by Induction:>>
  </equation*>

  <underline|<with|font-series|bold|Base Case:> >

  <\equation*>
    Beginning with \<bbb-R\><rsup|2> ,\ 
  </equation*>

  <\equation*>
    To find the area of a triangle\<nocomma\>,we perform an
    integral\<nosymbol\>:
  </equation*>

  <\equation*>
    Let a triangle be defined by vertices
    v<rsub|1>=<around*|(|0,0|)>,v<rsub|2 >=<around*|(|0,y<rsub|1>|)>,v<rsub|3>=<around*|(|x<rsub|1>,0|)>.
  </equation*>

  <\equation*>
    Thus the triangle is bounded by the x-axis,the y-axis,and the line
    y=y<rsub|1>-<frac|y<rsub|1>|x<rsub|1>>x
  </equation*>

  <\equation*>
    The integral is thus:
  </equation*>

  <\equation*>
    A=\<Delta\><rsub|2>=<big|int><rsub|0><rsup|x<rsub|1>>y<rsub|1>-<frac|y<rsub|1>|x<rsub|1>>x<rsub|1>
    <with|font-shape|italic|dx>=y<rsub|1>x-<frac|1|2><frac|y<rsub|1>|x<rsub|1>>x<rsub|1><rsup|<rsub|>2>=y<rsub|1>x-<frac|1|2><rsub|>y<rsub|1>x<rsub|1>=<frac|1|2>y<rsub|1>x<rsub|1>
  </equation*>

  \ 

  <\equation*>
    By carrying out this integral\<nocomma\>we have found the formula
    A=<frac|1|2>bh for the area of a triangle.
  </equation*>

  <\equation*>
    Showing that the simplex in \<bbb-R\><rsup|2> has a coefficient of
    <frac|1|2>,equivalent to <frac|1|m><around*|(|previous volume<rprime|'>s
    coefficient|)>.
  </equation*>

  \;

  <with|font-series|bold|<underline|Inductive Hypothesis:>>

  <\equation*>
    Assuming that for \<bbb-R\><rsup|k>,0\<ll\>k\<ll\>m\<nocomma\>,
  </equation*>

  <\equation*>
    Letting the simplex for the dimension k-1 be reprented
    by\<Delta\><rsub|k-1>,
  </equation*>

  <\equation*>
    Then the <rprime|''>volume<rprime|''>,or content, of the simplex for
    dimension k,\<Delta\><rsub|k>, can be found by the integral:
  </equation*>

  \;

  <\equation*>
    \<Delta\><rsub|k>=<big|int><rsub|0><rsup|h<rsub|k>>\<Delta\><rsub|k-1><with|font-shape|italic|
    dh>=<frac|1|k><around*|(|\<Delta\><rsub|k-1>|)>h<rsub|k>
  </equation*>

  <\equation*>
    Where h<rsub|k >is the magnitude through which the simplex in
    \<bbb-R\><rsup|k-1> extends into \<bbb-R\><rsup|k> .
  </equation*>

  \;

  <with|font-series|bold|<underline|Inductive Step:>>

  <with|font-series|bold|Part 1:>

  <\equation*>
    If we expand to the next dimension,the content of the simplex formed will
    copmuted by\ 
  </equation*>

  <\equation*>
    multiplying the content of the previous dimension<rprime|'>s simplex by
    the distance from the previous dimension<rprime|'>s\ 
  </equation*>

  <\equation*>
    simplex extended into the current dimension.
  </equation*>

  <\equation*>
    Thus the content of the simplex in \<Delta\><rsub|k+1>can be expressed
    via the integral:
  </equation*>

  <\equation*>
    \<Delta\><rsub|k+1>=<big|int><rsub|0><rsup|h<rsub|k+1>>\<Delta\><rsub|k><with|font-shape|italic|
    dh>=<big|int><rsub|0><rsup|h<rsub|k+1>><frac|1|k><around*|(|\<Delta\><rsub|k-1>|)>h<rsub|k><rsub|><with|font-shape|italic|<with|font-shape|italic|dh>>
    = <frac|1|k<around*|(|k+1|)>><around*|(|\<Delta\><rsub|k-1>|)>h<rsub|k>h<rsub|k+1>
  </equation*>

  <\equation*>
    If \<Delta\><rsub|k-1>\<ldots\>.\<Delta\><rsub|1>is substituted
    continuously into the equation,we then obtain the general formula:
  </equation*>

  <\equation*>
    \<Delta\><rsub|n>=<frac|1|n!>h<rsub|n>h<rsub|n-1>h<rsub|n-2>h<rsub|n-3>\<ldots\>.h<rsub|1>
  </equation*>

  <\equation*>
    Where h<rsub|1>is the distance between the first two
    vertices\<nocomma\>,h<rsub|2> is the height of the third vertex
  </equation*>

  <\equation*>
    above the line containing the original vertex,and h<rsub|3> is the height
    of the fourth vertex above the plane
  </equation*>

  <\equation*>
    containing the first three vertices.This pattern is then continued into
    h<rsub|n>.
  </equation*>

  <with|font-series|bold|Part 2:>

  <\equation*>
    Now constructing an <around*|(|nxn|)> matrix that contains the n
    coordinates of the vertices\<nosymbol\>.
  </equation*>

  <\equation*>
    As an example,ifwelet n=3,
  </equation*>

  <\equation*>
    Then
  </equation*>

  <\equation*>
    <det|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|z<rsub|1>>|<cell|0>>|<row|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|z<rsub|2>>|<cell|0>>|<row|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|z<rsub|3>>|<cell|0>>>>>
    =<det|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|z<rsub|1>>>|<row|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|z<rsub|2>>>|<row|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|z<rsub|3>>>>>>
    </equation*>

  <\equation*>
    represents the matrix representing the coordinates of the 4 vertices in
    \<bbb-R\><rsup|3>.
  </equation*>

  <\equation*>
    Note that the last column is all 0 because we can place the third vertex
    at the origin to simplify
  </equation*>

  <\equation*>
    the matrix representation.
  </equation*>

  <\equation*>
    Moreover\<nocomma\>,we can simplifythis matrix even further by performing
    another rotation.
  </equation*>

  <\equation*>
    which allows n-1 of the vertices to be placed into a subspace that is
    orthogonal to one of the axes.
  </equation*>

  <\equation*>
    This rotation results in the first two vertices being placed in the xy
    plane,causing z<rsub|1> =z<rsub|2>=0 .
  </equation*>

  <\equation*>
    Thus the determinant can be expressed as such:
  </equation*>

  <\equation*>
    <det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|y<rsub|1><rprime|'>>|<cell|0>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>|<cell|0>>|<row|<cell|x<rsub|3><rprime|'>>|<cell|y<rsub|3><rprime|'>>|<cell|z<rsub|3><rprime|'>>>>>>
  </equation*>

  <\equation*>
    Which can be further reduced using cofactor decomposition,
  </equation*>

  <\equation*>
    <det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|y<rsub|1><rprime|'>>|<cell|0>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>|<cell|0>>|<row|<cell|x<rsub|3><rprime|'>>|<cell|y<rsub|3><rprime|'>>|<cell|z<rsub|3><rprime|'>>>>>>=z<rprime|'><rsub|3><det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|y<rsub|1><rprime|'>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>>>>>=h<rsub|3><det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|y<rsub|1><rprime|'>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>>>>>
  </equation*>

  <\equation*>
    <around*|(|setting z<rprime|'><rsub|3>=h<rsub|3>|)>
  </equation*>

  <\equation*>
    This can be even further simplified by performing another rotation that
    instead places the first vertex
  </equation*>

  <\equation*>
    on the x-axis,causing the y-coordinate of the first vertex to be 0. Thus,
  </equation*>

  <\equation*>
    h<rsub|3><det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|y<rsub|1><rprime|'>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>>>>>=h<rsub|3><det|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|0>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|y<rsub|2><rprime|'>>>>>>
  </equation*>

  <\equation*>
    \ Finally,the determinant is calculated:
  </equation*>

  <\equation*>
    h<rsub|3>x<rsub|1><rprime|'>y<rsub|2><rprime|'> =
    h<rsub|3>h<rsub|1>h<rsub|2>
  </equation*>

  <\equation*>
    <around*|(|setting x<rsub|1><rprime|'> =h<rsub|1>,
    y<rprime|'><rsub|2>=h<rsub|2>,because they each represent the respective
    distance into the next dimension|)>
  </equation*>

  <\equation*>
    Thus we have shown that:
  </equation*>

  <\equation*>
    <det|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|z<rsub|1>>>|<row|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|z<rsub|2>>>|<row|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|z<rsub|3>>>>>>=h<rsub|3>h<rsub|2>h<rsub|1>
  </equation*>

  \;

  <\equation*>
    Substituting this into the equation found in Part 1 of the inductive
    step,
  </equation*>

  <\equation*>
    \<Delta\><rsub|3>=<frac|1|3!>h<rsub|3>h<rsub|2>h<rsub|1>=<frac|1|3!><det|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|z<rsub|1>>>|<row|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|z<rsub|2>>>|<row|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|z<rsub|3>>>>>>
  </equation*>

  <\equation*>
    Which can be simplified into more general terms for nth dimension as so:
  </equation*>

  <\equation*>
    \<Delta\><rsub|n>=<frac|1|n!><det|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|...>|<cell|z<rsub|1>>>|<row|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|\<ldots\>>|<cell|z<rsub|2>>>|<row|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|\<ddots\>>|<cell|z<rsub|3>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ldots\>>|<cell|\<vdots\>>>|<row|<cell|x<rsub|n>>|<cell|y<rsub|n>>|<cell|\<ldots\>>|<cell|z<rsub|n>>>>>>
  </equation*>

  <\equation*>
    In the third dimension example of a simplex,we can include the fourth
    vertex<around*|(|x<rsub|4>,y<rsub|4>,z<rsub|4>|)>\ 
  </equation*>

  <\equation*>
    back into the matrix\<nocomma\> such that the fourth vertex is no longer
    at the origin.
  </equation*>

  <\equation*>
    Thus all other vertices are now expressed with respect to their distance
    from the fourth vertex as so:
  </equation*>

  <\equation*>
    \<Delta\><rsub|3>=<frac|1|3!><det|<tformat|<table|<row|<cell|x<rsub|1>-x<rsub|4>>|<cell|y<rsub|1>-y<rsub|4>>|<cell|z<rsub|1>-z<rsub|4>>>|<row|<cell|x<rsub|2>-x<rsub|4>>|<cell|y<rsub|2>-y<rsub|4>>|<cell|z<rsub|2>-z<rsub|4>>>|<row|<cell|x<rsub|3>-x<rsub|4>>|<cell|y<rsub|3>-y<rsub|4>>|<cell|z<rsub|3>-z<rsub|4>>>>>>
  </equation*>

  <\equation*>
    We then know by reverse co-factor decomposition that we can write this as
    determinant as:
  </equation*>

  <\equation*>
    \<Delta\><rsub|3>=<frac|1|3!><det|<tformat|<table|<row|<cell|1>|<cell|x<rsub|1>-x<rsub|4>>|<cell|y<rsub|1>-y<rsub|4>>|<cell|z<rsub|1>-z<rsub|4>>>|<row|<cell|1>|<cell|x<rsub|2>-x<rsub|4>>|<cell|y<rsub|2>-y<rsub|4>>|<cell|z<rsub|2>-z<rsub|4>>>|<row|<cell|1>|<cell|x<rsub|3>-x<rsub|4>>|<cell|y<rsub|3>-y<rsub|4>>|<cell|z<rsub|3>-z<rsub|4>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    In addition,the process of adding a multiple of one column to another
    effectively does not change\ 
  </equation*>

  <\equation*>
    the value of the determinant<rprime|'>s value\<nosymbol\>.\ 
  </equation*>

  <\equation*>
    As so\<nocomma\>,we can add x<rsub|4><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>
    to the column\<nocomma\> 2,y<rsub|4><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>
    to column 3\<nocomma\>,
  </equation*>

  <\equation*>
    and z<rsub|4><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>
    to column 4.
  </equation*>

  <\equation*>
    The determinantthen becomes rewritten as:
  </equation*>

  <\equation*>
    \<Delta\><rsub|3>=<frac|1|3!><det|<tformat|<table|<row|<cell|1>|<cell|x<rsub|1>>|<cell|y<rsub|1>>|<cell|z<rsub|1>>>|<row|<cell|1>|<cell|x<rsub|2>>|<cell|y<rsub|2>>|<cell|z<rsub|2>>>|<row|<cell|1>|<cell|x<rsub|3>>|<cell|y<rsub|3>>|<cell|z<rsub|3>>>|<row|<cell|1>|<cell|x<rsub|4>>|<cell|y<rsub|4>>|<cell|z<rsub|4>>>>>>
  </equation*>

  <\equation*>
    This derivation of the simplex can be immediately generalized to express
    the simplex in any dimension m:
  </equation*>

  <\equation*>
    \<Delta\><rsub|m>=<frac|1|m!><det|<tformat|<table|<row|<cell|1>|<cell|x<rsub|1,1>>|<cell|x<rsub|1,2>>|<cell|\<ldots\>>|<cell|x<rsub|1,m>>|<cell|x<rsub|1,m+1>>>|<row|<cell|1>|<cell|x<rsub|2,1>>|<cell|x<rsub|2,2>>|<cell|\<ldots\>>|<cell|x<rsub|2,m>>|<cell|x<rsub|2,m+1>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|1>|<cell|x<rsub|m,1>>|<cell|x<rsub|m,2>>|<cell|\<ldots\>>|<cell|x<rsub|m,m>>|<cell|x<rsub|m,m+1>>>>>>
  </equation*>

  <\equation*>
    Which can be transposed without affecting the deterimant<rprime|'>s
    value\<nosymbol\>.
  </equation*>

  <\equation*>
    This allows us to arrive at the formula for simplex in \<bbb-R\><rsup|m>,
  </equation*>

  <\equation*>
    \<Delta\><rsub|m>=<frac|1|m!><det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|\<ldots\>>|<cell|1>|<cell|1>>|<row|<cell|x<rsub|1,1>>|<cell|x<rsub|1,2>>|<cell|\<ldots\>>|<cell|x<rsub|1,m>>|<cell|x<rsub|1,m+1>>>|<row|<cell|x<rsub|2,1>>|<cell|x<rsub|2,2>>|<cell|\<ldots\>>|<cell|x<rsub|2,m>>|<cell|x<rsub|2,m+1>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>>|<row|<cell|x<rsub|m,1>>|<cell|x<rsub|m,2>>|<cell|\<ldots\>>|<cell|x<rsub|m,m>>|<cell|x<rsub|m,m+1>>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|4|../../../Downloads/EC7Solution.tm>>
    <associate|auto-2|<tuple|2|5|EC56Solution.tm>>
    <associate|auto-3|<tuple|3|5|EC56Solution.tm>>
    <associate|auto-4|<tuple|4|6|EC56Solution.tm>>
    <associate|auto-5|<tuple|5|6|EC56Solution.tm>>
    <associate|auto-6|<tuple|6|7|EC56Solution.tm>>
    <associate|auto-7|<tuple|7|7|EC56Solution.tm>>
  </collection>
</references>