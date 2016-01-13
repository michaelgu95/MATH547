<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|MATH547: Linear algebra for applications><title-date|August 24,
  2015>

  <\title>
    Homework 1
  </title>

  Due date: September 14, 2015, 11:55PM.

  Bibliography: Course lecture notes Lessons 4-8. Textbook pp. 22-41 from
  Systems chapter, pp. 122--146 from Vectors chapter, pp. 217-255 from
  Matrices chapter.

  <\enumerate-numeric>
    <item>(1 course point) Textbook exercises C30-C33 on page 43.

    <with|font-series|bold|C30:<underline|>>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|5>|<cell|10>>|<row|<cell|1>|<cell|-3>|<cell|-1>|<cell|-2>>|<row|<cell|4>|<cell|-2>|<cell|6>|<cell|12>>>>>
      <long-arrow|\<rubber-rightarrow\>|R1-R2
      \<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|6>|<cell|12>>|<row|<cell|1>|<cell|-3>|<cell|-1>|<cell|-2>>|<row|<cell|4>|<cell|-2>|<cell|6>|<cell|12>>>>><long-arrow|\<rubber-rightarrow\>|R2-R1
      \<rightarrow\> R2><matrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|6>|<cell|12>>|<row|<cell|0>|<cell|-7>|<cell|-7>|<cell|-14>>|<row|<cell|4>|<cell|-2>|<cell|6>|<cell|12>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|7>R2\<rightarrow\>R2>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|6>|<cell|12>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|-2>|<cell|6>|<cell|12>>>>><long-arrow|\<rubber-rightarrow\>|-4R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|6>|<cell|12>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-18>|<cell|-18>|<cell|-36>>>>><long-arrow|\<rubber-rightarrow\>|18R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|6>|<cell|12>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R1-4R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    \;

    <with|font-series|bold|C31:<underline|>>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-4>>|<row|<cell|-3>|<cell|-1>|<cell|-3>>|<row|<cell|-2>|<cell|1>|<cell|-7>>>>><long-arrow|\<rubber-rightarrow\>|3R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|5>|<cell|-15>>|<row|<cell|-2>|<cell|1>|<cell|-7>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|5>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|1>|<cell|-3>>|<row|<cell|-2>|<cell|1>|<cell|-7>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R2\<rightarrow\>R1>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|-3>>|<row|<cell|-2>|<cell|1>|<cell|-7>>>>><long-arrow|\<rubber-rightarrow\>|2R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|-3>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    <\with|font-series|bold>
      \ \ \ C32:<underline|>

      \;
    </with>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-4>|<cell|-3>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|4R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|2>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|-3R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|2>|<cell|4>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    \ \ <with|font-series|bold|C33:>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|2>|<cell|4>|<cell|-1>|<cell|4>>|<row|<cell|-1>|<cell|-2>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|-2R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|-1>|<cell|-2>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|R1+R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|-1>|<cell|-2>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|R1+R3\<rightarrow\>R3>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|3>|<cell|10>>>>><long-arrow|\<rubber-rightarrow\>|-3R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-8>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|8>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1-5R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R2-6R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <item>(1 course point) Textbook exercises T10,T12,T13,T15 on page 135.

    <with|font-series|bold|T10:>

    \ \ \ \ Given a set A of vectors containing the zero vector, <math|A =
    <around*|{|<with|font-series|bold|0>,<with|font-series|bold|v><rsub|1>,<with|font-series|bold|v><rsub|2>\<ldots\>,<with|font-series|bold|v<rsub|n>>|}>>,

    \;

    \ \ \ \ to determine whether A is linearly dependent, you can express the
    set as a linear combination \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ with
    a set of scalars, x={<math|\<alpha\><rsub|1>,\<alpha\><rsub|2>\<ldots\>,\<alpha\><rsub|n>>},
    as so:

    <\equation*>
      \<alpha\><rsub|1><with|font-series|bold|0>+\<alpha\><rsub|2><with|font-series|bold|v<rsub|1>>+\<alpha\><rsub|3><with|font-series|bold|v><rsub|2>\<ldots\>.+\<alpha\><rsub|n+1><with|font-series|bold|v><rsub|n>
    </equation*>

    <\equation*>
      If \<alpha\><rsub|2>=\<alpha\><rsub|3>=\<ldots\>=\<alpha\><rsub|n>=0,then
      \<alpha\><rsub|1 >can be taken as any scalar value \<in\>R\ 
    </equation*>

    <\equation*>
      and the linear combination\<nocomma\>,Ax,will still be equal to the
      zero vector.
    </equation*>

    <\equation*>
      <around*|(|\<alpha\><rsub|1>\<in\>R |)><with|font-series|bold|*0>+
      0<around*|(|<with|font-series|bold|v<rsub|1>>|)>+0<around*|(|<with|font-series|bold|v><rsub|2>|)>+\<ldots\>+0<around*|(|<with|font-series|bold|v><rsub|n>|)>
      =<with|font-series|bold| 0>
    </equation*>

    <\equation*>
      Thus\<nocomma\>,because not all scalars in x must be 0 for Ax to be
      equal to the zero vector,
    </equation*>

    <\equation*>
      A is linearly dependent.
    </equation*>

    \ \ \ \ <with|font-series|bold| T12:>

    <\equation*>
      Given a set of linearly independent vectors
      ,S=<around*|(|<with|font-series|bold|s<rsub|1>>
      <with|font-series|bold|s<rsub|1>>\<ldots\>.<with|font-series|bold|s<rsub|m>>|)>\<in\>R<rsup|m
      >,
    </equation*>

    \ \ \ \ \ By the definition of linearly independence, none of the vectors
    <math|<with|font-series|bold|s<rsub|1>>
    <with|font-series|bold|s<rsub|1>>\<ldots\>.<with|font-series|bold|s<rsub|m>>
    can be expressed >as a linear combination of any of the other vectors.

    \;

    Any set T<math|\<subseteq\>>S can have at most the same dimension of S
    and can only contain at most the same vectors \ \ \ \ \ \ within S.\ 

    \;

    \ Because the process of producing a subset does not introduce any new
    vectors that can be expressed as a linear combination of the existing
    vectors, the vectors comprising of T must also be linearly independent.

    \;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Thus
    T is linearly independent.

    \;

    \ <with|font-series|bold|T13:>

    \;

    Given that T is a linearly dependent set of vectors,<math|
    T=<around*|(|<with|font-series|bold|t<rsub|1>>
    <with|font-series|bold|t<rsub|1>>\<ldots\>.<with|font-series|bold|t<rsub|m>>|)>\<in\>R<rsup|m
    >,>

    then one or more vectors <math|<with|font-series|bold|t<rsub|1>>
    <with|font-series|bold|t<rsub|1>>\<ldots\>.<with|font-series|bold|t<rsub|m>>>
    \ within T can be expressed as a linear combination of the others.

    \;

    \ Then introducing more vectors into this set does not change the fact
    that the vectors within T are linearly dependent. Thus S, where
    T<math|\<subseteq\>>S, must also contain these linearly dependent
    vectors.

    \;

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Showing
    S is linearly dependent.

    \;

    \ <with|font-series|bold|T15: >

    <\equation*>
      Given V = <around*|{|v<rsub|1>-v<rsub|2>\<nocomma\>,v<rsub|2>-v<rsub|3>\<nocomma\>,v<rsub|3>-v<rsub|4>\<nocomma\>\<ldots\>.v<rsub|n>-v<rsub|1>\<nocomma\>|}>\<nocomma\>\<nocomma\>
    </equation*>

    <\equation*>
      If you take the summation of all elements within V except the
      last\<nocomma\>, you arrive at:
    </equation*>

    <\equation*>
      <around*|(|v<rsub|1>-v<rsub|2>|)> \<noplus\>+<around*|(|v<rsub|2>-v<rsub|3>|)>+<around*|(|v<rsub|3>-v<rsub|4>|)>
      \<ldots\><around*|(|v<rsub|n-1>-v<rsub|n>|)>
    </equation*>

    <\equation*>
      after some rearrangement,
    </equation*>

    <\equation*>
      v<rsub|1>+<around*|(|v<rsub|2>-v<rsub|2>|)>+<around*|(|v<rsub|3>-v<rsub|3>|)>\<ldots\>.
      <around*|(|v<rsub|n-1>-v<rsub|n-1>|)>-v<rsub|n>
    </equation*>

    <\equation*>
      \ = v<rsub|1>-v<rsub|n>
    </equation*>

    <\equation*>
      Now taking the summation of <with|font-series|bold|<with|font-shape|italic|<with|font-shape|italic|all>>>
      elements within V\<nocomma\>,including the last element\<nocomma\>,
    </equation*>

    <\equation*>
      v<rsub|1>-v<rsub|n>+<around*|(|v<rsub|n>-v<rsub|1>|)> = 0
    </equation*>

    <\equation*>
      Because <with|font-shape|italic|>a linear combination of the elements
      in V results in the zero vector\<nocomma\>,and not all of the <text|>
    </equation*>

    <\equation*>
      individual elements needed to be multiplied by the scalar 0 in order to
      arrive at the zero vector,
    </equation*>

    <\equation*>
      V is linearly independent by the definition of linear independence.
    </equation*>

    \;

    <\equation*>
      \;
    </equation*>

    <\equation*>
      \;
    </equation*>

    <item>(1 course point) Textbook exercise C20 on page 232.

    A:

    Rewriting A in reduced-row echelon form:

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|-1>|<cell|2>|<cell|3>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R3-R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|-2>|<cell|0>|<cell|4>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|2>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-2>>|<row|<cell|1>|<cell|1>|<cell|2>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R4-R1\<rightarrow\>R4>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-2>>|<row|<cell|0>|<cell|-1>|<cell|-1>|<cell|-2>>>>><long-arrow|\<rubber-rightarrow\>|R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R2\<rightarrow\>R1>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R1-R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-7>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    <\equation*>
      X= <around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|1>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|1>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|3>>|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|2>>>>>|)>|}>
    </equation*>

    \;

    <\equation*>
      Y \ \ = <around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-7>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-2>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|4>>>>>|}>
      </equation*>

    \ \ B:

    Rewriting B in reduced-row echelon form:

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|3>|<cell|2>|<cell|-1>|<cell|4>|<cell|5>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|3R1-R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|4>|<cell|4>|<cell|-1>|<cell|-2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R2-3R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|-4>|<cell|-8>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|2>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R3-R2\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|-4>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|5>|<cell|10>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|9>|<cell|17>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|-4>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|5>|<cell|10>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|<frac|1|2>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|9>|<cell|17>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|-4>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R2+4R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|9>|<cell|17>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R1-9R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|2>>>>>
    </equation*>

    <\equation*>
      X= <around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>|<row|<cell|0>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|1>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|4>>|<row|<cell|1>>>>>|)>|}>
    </equation*>

    <\equation*>
      Y=<around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|-1>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|2>>>>>|}>
    </equation*>

    \ \ C:

    Rewriting C in reduced-row echelon form:

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|0>|<cell|3>>|<row|<cell|1>|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R1-R4\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|3>|<cell|0>|<cell|3>>|<row|<cell|1>|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R2-2R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-4>|<cell|9>>|<row|<cell|1>|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R2-R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|-6>|<cell|12>>|<row|<cell|1>|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R3-R1\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|-6>|<cell|12>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>><long-arrow|\<rubber-rightarrow\>|R4-R5\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|-6>|<cell|12>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|1>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R4-R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|-6>|<cell|12>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-<frac|1|6>R2\<rightarrow\>R2\<nocomma\>><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R4-R2\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|2R2-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
    </equation*>

    <\equation*>
      X=<around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|1>>>>>|)>|}>
    </equation*>

    <\equation*>
      Y=<around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-2>>>>>|}>
    </equation*>

    \;

    <\equation*>
      Conjecture: the set X and the set Y,which span the column space and row
      space of the sets A,B,C\<nocomma\>,
    </equation*>

    <\equation*>
      contain the same number of columns.
    </equation*>

    \;

    <item>(1 course point) Textbook exercise C25, C26 on page 255.

    <with|font-series|bold|C25:>

    <\equation*>
      Rewriting A in extended echelon form:
    </equation*>

    <\equation*>
      A =<matrix|<tformat|<table|<row|<cell|-5>|<cell|3>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-8>|<cell|5>|<cell|-1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|-2>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R1+2R4\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|2>>|<row|<cell|-1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|-8>|<cell|5>|<cell|-1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|-2>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|-8>|<cell|5>|<cell|-1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|-2>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|8R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-3>|<cell|-9>|<cell|8>|<cell|0>|<cell|1>|<cell|16>>|<row|<cell|3>|<cell|-2>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|3R1-R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>|<cell|1>|<cell|0>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-3>|<cell|-9>|<cell|8>|<cell|0>|<cell|1>|<cell|16>>|<row|<cell|0>|<cell|-1>|<cell|-3>|<cell|3>|<cell|0>|<cell|0>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|R1-R4\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|-2>|<cell|0>|<cell|0>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-3>|<cell|-9>|<cell|8>|<cell|0>|<cell|1>|<cell|16>>|<row|<cell|0>|<cell|-1>|<cell|-3>|<cell|3>|<cell|0>|<cell|0>|<cell|5>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R2\<rightarrow\>R4,R4\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|-2>|<cell|0>|<cell|0>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|-3>|<cell|0>|<cell|0>|<cell|-5>>|<row|<cell|0>|<cell|-3>|<cell|-9>|<cell|8>|<cell|0>|<cell|1>|<cell|16>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|3R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|-2>|<cell|0>|<cell|0>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|-3>|<cell|0>|<cell|0>|<cell|-5>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R2-3R3\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|-2>|<cell|0>|<cell|0>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|0>|<cell|0>|<cell|-3>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R1-2R3\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|0>|<cell|0>|<cell|-2>|<cell|-5>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|0>|<cell|0>|<cell|-3>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|2>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R3+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|0>|<cell|0>|<cell|-2>|<cell|-5>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|0>|<cell|0>|<cell|-3>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|3>>>>><long-arrow|\<rubber-rightarrow\>|-R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|0>|<cell|0>|<cell|-2>|<cell|-5>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|0>|<cell|0>|<cell|-3>|<cell|-8>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|3>>>>>
    </equation*>

    <\equation*>
      C=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|3>>>>>,L=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|3>>>>>
    </equation*>

    \;

    <math|1\<nosymbol\>.The row space of A is the row space of C:>

    <\equation*>
      S=<around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>>>>|}>
    </equation*>

    \;

    <math|2\<nosymbol\>.The column space of A is the null space of L:>

    <\equation*>
      L=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|3>>>>>\<nocomma\>,with
      free variables x<rsub|3> and x<rsub|4>
    </equation*>

    <\equation*>
      x<rsub|1>=x<rsub|3>+x<rsub|4>
    </equation*>

    <\equation*>
      x<rsub|2>=-x<rsub|3>-3x<rsub|4><rsub|>
    </equation*>

    \;

    <\equation*>
      Solving for the null space of L,
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>|<row|<cell|x<rsub|4>>>>>>
      = x<rsub|3><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|1>>|<row|<cell|0>>>>>+x<rsub|4><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|1>>>>>
    </equation*>

    <\equation*>
      Thus,S= <around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|1>>>>>|}>
    </equation*>

    \ \ \ \ <math|3\<nosymbol\>.The null space of A is the null space of C>:

    <\equation*>
      C=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|3>>>>>,with
      free variables x<rsub|3>
    </equation*>

    <\equation*>
      x<rsub|1>=-2x<rsub|3>
    </equation*>

    <\equation*>
      x<rsub|2>=-3x<rsup|><rsub|3>
    </equation*>

    <\equation*>
      Solving for the null space of C,
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>
      = x<rsub|3><matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-2>>|<row|<cell|1>>>>>
    </equation*>

    <\equation*>
      Thus\<nocomma\>,S=<around*|{|<matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-2>>|<row|<cell|1>>>>>|}>
    </equation*>

    \ \ \ \ <math|4.The left null space of A is the row space of L>:

    <\equation*>
      S=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|3>>>>>
      = <around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|-1>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|3>>>>>|}>
    </equation*>

    \ \ \ <with|font-series|bold|C26:>

    <\equation*>
      Rewriting D in extended echelon form:
    </equation*>

    <\equation*>
      D = <matrix|<tformat|<table|<row|<cell|-7>|<cell|-11>|<cell|-19>|<cell|-15>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|6>|<cell|10>|<cell|18>|<cell|14>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|3>|<cell|5>|<cell|9>|<cell|7>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-4>|<cell|-3>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|7>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|6>|<cell|10>|<cell|18>|<cell|14>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|3>|<cell|5>|<cell|9>|<cell|7>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-4>|<cell|-3>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-6R<rsub|1>+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|4|7>>|<cell|<frac|12|7>>|<cell|<frac|8|7>>|<cell|<frac|6|7>>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|3>|<cell|5>|<cell|9>|<cell|7>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-4>|<cell|-3>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|-3R1+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|4|7>>|<cell|<frac|12|7>>|<cell|<frac|8|7>>|<cell|<frac|6|7>>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2|7>>|<cell|<frac|6|7>>|<cell|<frac|4|7>>|<cell|<frac|3|7>>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-4>|<cell|-3>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R1+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|4|7>>|<cell|<frac|12|7>>|<cell|<frac|8|7>>|<cell|<frac|6|7>>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2|7>>|<cell|<frac|6|7>>|<cell|<frac|4|7>>|<cell|<frac|3|7>>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-<frac|3|7>>|<cell|-<frac|9|7>>|<cell|-<frac|6|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|7|4>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2|7>>|<cell|<frac|6|7>>|<cell|<frac|4|7>>|<cell|<frac|3|7>>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-<frac|3|7>>|<cell|-<frac|9|7>>|<cell|-<frac|6|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-<frac|2|7>R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-<frac|3|7>>|<cell|-<frac|9|7>>|<cell|-<frac|6|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<frac|3|7>R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|3|4>>|<cell|0>|<cell|1>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R3\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|3|4>>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|2R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<frac|3|2>>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-2R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<frac|3|2>>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|3|2>R4+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|<frac|7|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|-<frac|7|4>R4+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|<frac|3|2>>|<cell|0>|<cell|<frac|7|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|3|2>R3+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|0>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|<frac|1|7>R3+R1\<rightarrow\>\<bbb-R\>1><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|-<frac|1|7>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|0>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|7>R3+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|<frac|11|7>>|<cell|<frac|19|7>>|<cell|<frac|15|7>>|<cell|0>|<cell|0>|<cell|<frac|3|7>>|<cell|<frac|2|7>>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|0>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>
    </equation*>

    <\equation*>
      <long-arrow|\<rubber-rightarrow\>|R1-<frac|11|7>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|-1>|<cell|0>|<cell|0>|<cell|2>|<cell|5>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>|<cell|0>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>
    </equation*>

    <\equation*>
      C=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|2>>>>>,L=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>
    </equation*>

    <math| 1\<nosymbol\>.The row space of D is the row space of C:>

    <\equation*>
      S=<around*|{|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-2>>|<row|<cell|-1>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|3>>|<row|<cell|2>>>>>|}>
    </equation*>

    <math|2\<nosymbol\>.The column space of D is the null space of \ L:>

    <\equation*>
      L=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|-2>|<cell|0>>>>>,with
      free variables x<rsub|3> and x<rsub|4>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <\equation*>
      x<rsub|1>=-3x<rsub|3>-2x<rsub|4>
    </equation*>

    <\equation*>
      x<rsub|2>=2x<rsub|3>
    </equation*>

    <\equation*>
      Solving for the null space of L,
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>|<row|<cell|x<rsub|4>>>>>>
      = x<rsub|3><matrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|0>>>>>+x<rsub|4><matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
    </equation*>

    <\equation*>
      Thus\<nocomma\>,S=<around*|{|<matrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|}>
    </equation*>

    \;

    \;

    <item>(Computer application 4 course points)\ 

    Part a. Verify your work on problems 1,3,4 using Octave

    Example: Problem 1, exercise C30. From the text we are asked to
    row-reduce the matrix

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|5>|<cell|10>>|<row|<cell|1>|<cell|-3>|<cell|-1>|<cell|-2>>|<row|<cell|4>|<cell|-2>|<cell|6>|<cell|12>>>>>
    </equation*>

    Define the matrix (Insert-\<gtr\>Session-\<gtr\>Octave)

    <\session|octave|default>
      <\output>
        \ 
      </output>

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        C30=[2 1 5 10 ; 1 -3 -1 -2 ; 4 -2 6 12]; disp(C30);
      <|unfolded-io>
        \ \ \ \ 2 \ \ \ 1 \ \ \ 5 \ \ 10

        \ \ \ \ 1 \ \ -3 \ \ -1 \ \ -2

        \ \ \ \ 4 \ \ -2 \ \ \ 6 \ \ 12
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>
  </enumerate-numeric>

  In Octave row reduction is carried out using the <verbatim|rref> function.

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C30rr=rref(C30); disp(C30rr);
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 2 \ \ 4

      \ \ \ 0 \ \ 1 \ \ 1 \ \ 2

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \ \ \ \ <with|font-series|bold|C31:<underline|>>

    \;
  </session>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C31=[1 2 -4; -3 -1 -3; -2 1 -7]; C31rr=rref(C31); disp(C31rr);
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ \ 2

      \ \ \ 0 \ \ 1 \ -3

      \ \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C32:<underline|>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C32=[1 1 1; -4 -3 -2; 3 2 1]; C32rr=rref(C32); disp(C32rr);
    <|unfolded-io>
      \ \ \ 1 \ \ 0 \ -1

      \ \ \ 0 \ \ 1 \ \ 2

      \ \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C33:<underline|>>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C33=[1 2 -1 -1; 2 4 -1 4; -1 -2 3 5]; C33rr=rref(C33); disp(C33rr);
    <|unfolded-io>
      \ \ \ 1 \ \ 2 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 1 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0 \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C20:> We are asked to find the sets X and Y,which is
  aided by the functions rref,orth, and null in Octave.

  \ \ <with|font-series|bold|A:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3 1;0 1 1 2;1 -1 2 3;1 1 2 -1]; Arr=rref(A); disp(A); disp(Arr);
    <|unfolded-io>
      \ \ \ 1 \ \ 2 \ \ 3 \ \ 1

      \ \ \ 0 \ \ 1 \ \ 1 \ \ 2

      \ \ \ 1 \ -1 \ \ 2 \ \ 3

      \ \ \ 1 \ \ 1 \ \ 2 \ -1

      \ \ \ 1.00000 \ \ 0.00000 \ \ 0.00000 \ -7.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 0.00000 \ -2.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 4.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000

      \;
    </unfolded-io>

    Find Column Space of A using orth(A):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);\ 
    <|unfolded-io>
      \ \ \ 0.66443 \ -0.41455 \ -0.23096

      \ \ \ 0.38382 \ \ 0.19727 \ -0.69313

      \ \ \ 0.57660 \ \ 0.64414 \ \ 0.50261

      \ \ \ 0.28061 \ -0.61182 \ \ 0.46217

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the column space is correct:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(C(:,1)'*C(:,1));
      <|unfolded-io>
        \ 1
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(C(:,1)'*C(:,2));
    <|unfolded-io>
      0
    </unfolded-io>

    Find Null Space of A using null(A):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      N=null(A); disp(N);\ 
    <|unfolded-io>
      \ \ \ 0.83666

      \ \ \ 0.23905

      \ \ -0.47809

      \ \ \ 0.11952

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the null space is correct:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N(:,1)'*N(:,1));
    <|unfolded-io>
      \ 1.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \ <with|font-series|bold| B: >

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      B=[1 2 1 1 1; 3 2 -1 4 5; 0 1 1 1 2]; Brr=rref(B); disp(B); disp(Brr);
    <|unfolded-io>
      \ \ \ 1 \ \ 2 \ \ 1 \ \ 1 \ \ 1

      \ \ \ 3 \ \ 2 \ -1 \ \ 4 \ \ 5

      \ \ \ 0 \ \ 1 \ \ 1 \ \ 1 \ \ 2

      \ \ \ 1.00000 \ \ 0.00000 \ -1.00000 \ \ 0.00000 \ -1.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 1.00000 \ \ 0.00000 \ -0.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 2.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    Find Column Space of B using orth(B):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(B);disp(C);\ 
    <|unfolded-io>
      \ \ \ 0.55709

      \ \ \ 0.74278

      \ \ -0.00000

      \ \ \ 0.37139

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the column space is correct:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(C(:,1)'*C(:,1));
      <|unfolded-io>
        \ 1
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    Find Null Space of B using null(B):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      N=null(C); disp(N);\ 
    <|unfolded-io>
      [](1x0)

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  \ \ \ <with|font-series|bold|C:>\ 

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=[2 1 0; 3 0 3; 1 2 -3; 1 1 -1; 1 1 -1]; Crr=rref(C); disp(C);
      disp(Crr);
    <|unfolded-io>
      \ \ \ 2 \ \ 1 \ \ 0

      \ \ \ 3 \ \ 0 \ \ 3

      \ \ \ 1 \ \ 2 \ -3

      \ \ \ 1 \ \ 1 \ -1

      \ \ \ 1 \ \ 1 \ -1

      \;

      \;

      \ \ \ 1 \ \ 0 \ \ 1

      \ \ \ 0 \ \ 1 \ -2

      \ \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0

      \ \ \ 0 \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    Find Column Space of C using orth(C):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      Col=orth(C);disp(Col);\ 
    <|unfolded-io>
      \ \ \ 0.55709

      \ \ \ 0.74278

      \ \ -0.00000

      \ \ \ 0.37139

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the column space is correct:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(Col(:,1)'*Col(:,1));
      <|unfolded-io>
        \ 1
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    Find Null Space of C using null(C):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      N=null(C); disp(N);\ 
    <|unfolded-io>
      [](1x0)

      texmacs
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;
  </session>

  \;

  <with|font-series|bold|C25:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[-5 3 -1 1 0 0 0; -1, 1, 1, 0, 1, 0, 0; -8, 5, -1, 0, 0, 1, 0; 3, -2,
      0, 0, 0, 0, 1]; disp(rref(A));
    <|unfolded-io>
      \ \ \ 1.00000 \ \ 0.00000 \ \ 2.00000 \ -0.00000 \ \ 0.00000 \ -2.00000
      \ -5.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 3.00000 \ \ 0.00000 \ \ 0.00000
      \ -3.00000 \ -8.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000 \ \ 0.00000
      \ -1.00000 \ -1.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
      \ \ 1.00000 \ \ 3.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    Find Column Space of A using orth(A):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(A);disp(C);\ 
    <|unfolded-io>
      \ \ \ 5.0001e-01 \ -3.2083e-01 \ -8.0440e-01 \ -1.2599e-16

      \ \ \ 1.0760e-01 \ \ 9.0108e-01 \ -2.9251e-01 \ -3.0151e-01

      \ \ \ 8.0381e-01 \ -3.0703e-02 \ \ 5.1189e-01 \ -3.0151e-01

      \ \ -3.0380e-01 \ -2.9013e-01 \ -7.3127e-02 \ -9.0453e-01

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the column space is correct:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(C(:,1)'*C(:,1));
      <|unfolded-io>
        \ 1.0000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(C(:,1)'*C(:,2));
    <|unfolded-io>
      \ \ -1.6653e-16
    </unfolded-io>

    Find Null Space of A using null(A):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      N=null(A); disp(N);\ 
    <|unfolded-io>
      \ \ -0.3335433 \ \ 0.3730895 \ \ 0.2041038

      \ \ -0.5973241 \ \ 0.4142262 \ \ 0.3811887

      \ \ -0.3257474 \ -0.4198450 \ -0.3579736

      \ \ -0.2014918 \ \ 0.2029238 \ -0.4810207

      \ \ \ 0.5895282 \ \ 0.3787083 \ \ 0.1808887

      \ \ -0.0074736 \ \ 0.4937399 \ -0.6310866

      \ \ -0.1940182 \ -0.2908161 \ \ 0.1500660

      texmacs
    </unfolded-io>

    Perform simple checks to make sure the null space is correct:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N(:,1)'*N(:,1));
    <|unfolded-io>
      \ 1.00000
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N(:,1)'*N(:,2));
    <|unfolded-io>
      \ \ -6.9389e-18
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C26:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      D=[-7, -11, -19, -15, 1, 0, 0, 0; 6, 10, 18, 14, 0, 1, 0, 0; 3, 5, 9,
      7, 0, 0, 1, 0; -1, -2, -4, -3, 0, 0, 0, 1]; disp(D); disp(rref(D));
    <|unfolded-io>
      \ \ \ -7 \ -11 \ -19 \ -15 \ \ \ 1 \ \ \ 0 \ \ \ 0 \ \ \ 0

      \ \ \ \ 6 \ \ 10 \ \ 18 \ \ 14 \ \ \ 0 \ \ \ 1 \ \ \ 0 \ \ \ 0

      \ \ \ \ 3 \ \ \ 5 \ \ \ 9 \ \ \ 7 \ \ \ 0 \ \ \ 0 \ \ \ 1 \ \ \ 0

      \ \ \ -1 \ \ -2 \ \ -4 \ \ -3 \ \ \ 0 \ \ \ 0 \ \ \ 0 \ \ \ 1

      \ \ \ 1.00000 \ \ 0.00000 \ -2.00000 \ -1.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 2.00000 \ \ 5.00000

      \ \ \ 0.00000 \ \ 1.00000 \ \ 3.00000 \ \ 2.00000 \ \ 0.00000
      \ \ 0.00000 \ -1.00000 \ -3.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 1.00000
      \ \ 0.00000 \ \ 3.00000 \ \ 2.00000

      \ \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000 \ \ 0.00000
      \ \ 1.00000 \ -2.00000 \ -0.00000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    \;

    Find Column Space of D using orth(D):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      C=orth(D);disp(C);\ 
    <|unfolded-io>
      \ \ \ 6.8612e-01 \ \ 6.1821e-01 \ \ 6.8688e-17 \ \ 3.8348e-01

      \ \ -6.3916e-01 \ \ 4.2392e-01 \ -4.4721e-01 \ \ 4.6018e-01

      \ \ -3.1958e-01 \ \ 2.1196e-01 \ \ 8.9443e-01 \ \ 2.3009e-01

      \ \ \ 1.3631e-01 \ -6.2704e-01 \ \ 5.3290e-16 \ \ 7.6696e-01

      texmacs
    </unfolded-io>

    \;

    Perform simple checks to make sure the column space is correct:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        disp(C(:,1)'*C(:,1));
      <|unfolded-io>
        \ 1.00000
      </unfolded-io>

      <\input>
        octave\<gtr\>\ 
      <|input>
        \;
      </input>
    </session>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(C(:,1)'*C(:,2));
    <|unfolded-io>
      \ \ -5.5511e-17
    </unfolded-io>

    \;

    Find Null Space of D using null(D):

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      N=null(D); disp(N);\ 
    <|unfolded-io>
      \ \ \ 0.065464 \ -0.334258 \ \ 0.469269 \ -0.643507

      \ \ \ 0.573974 \ \ 0.664723 \ -0.141590 \ -0.100679

      \ \ -0.338681 \ -0.183267 \ -0.505259 \ -0.215304

      \ \ \ 0.020458 \ -0.126069 \ \ 0.524036 \ \ 0.640648

      \ \ \ 0.643895 \ -0.400955 \ -0.011995 \ -0.093064

      \ \ -0.322680 \ \ 0.422085 \ \ 0.358451 \ -0.225777

      \ \ -0.161340 \ \ 0.211042 \ \ 0.179225 \ -0.112888

      \ \ -0.079938 \ -0.116086 \ -0.262841 \ \ 0.215865

      texmacs
    </unfolded-io>

    \;

    Perform simple checks to make sure the null space is correct:

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N(:,1)'*N(:,1));
    <|unfolded-io>
      \ 1.00000
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N(:,1)'*N(:,2));
    <|unfolded-io>
      \ \ \ 3.4694e-18
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  Part b. Compute the matrix products in textbook exercises C20-C24 from page
  190 directly and as matrix-vector products. We'll use Octave to carry out
  arithmetic and along the way learn how to refer to parts of a matrix.

  <with|font-series|bold|C20:>

  \;

  Example (ex. C20, p. 120). Define the matrices in Octave

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[2 5;-1 3;2 -2]; disp(A);
    <|unfolded-io>
      \ \ \ 2 \ \ 5

      \ \ -1 \ \ 3

      \ \ \ 2 \ -2
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      B=[1 5 -3 4 ; 2 0 2 -3]; disp(B);
    <|unfolded-io>
      \ \ \ 1 \ \ 5 \ -3 \ \ 4

      \ \ \ 2 \ \ 0 \ \ 2 \ -3
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  The matrix-matrix product <math|\<b-C\>=\<b-A\>\<b-B\>> can be directly
  computed in Octave

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A*B);
    <|unfolded-io>
      \ \ \ 12 \ \ 10 \ \ \ 4 \ \ -7

      \ \ \ \ 5 \ \ -5 \ \ \ 9 \ -13

      \ \ \ -2 \ \ 10 \ -10 \ \ 14
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  <with|font-series|bold|C21:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 3 2; -1 2 1; 0 1 0]; B=[4 1 2;1 0 1; 3 1 5]; disp(A*B);
    <|unfolded-io>
      \ \ \ 13 \ \ \ 3 \ \ 15

      \ \ \ \ 1 \ \ \ 0 \ \ \ 5

      \ \ \ \ 1 \ \ \ 0 \ \ \ 1
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C22:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 0;-2 1]; B=[2 3;4 6]; disp(A*B);
    <|unfolded-io>
      \ \ \ 2 \ \ 3

      \ \ \ 0 \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C23:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[3 1;2 4; 6 5;1 2]; B=[-3 1; 4 2]; disp(A*B);
    <|unfolded-io>
      \ \ \ -5 \ \ \ 5

      \ \ \ 10 \ \ 10

      \ \ \ \ 2 \ \ 16

      \ \ \ \ 5 \ \ \ 5
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|C24:>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      A=[1 2 3 -2; 0 1 -2 -1; 1 1 3 1]; B=[3;4;0;2]; disp(A*B);
    <|unfolded-io>
      \ \ \ 7

      \ \ \ 2

      \ \ \ 9
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
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>