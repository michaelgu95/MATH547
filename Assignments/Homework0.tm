<TeXmacs|1.99.2>

<style|compact>

<\body>
  <class|MATH547: Linear algebra for applications><title-date|August 24,
  2015>

  <\title>
    Homework 1
  </title>

  Due date: August 31, 2015, 11:55PM.

  Bibliography: Course lecture notes Lessons 1-3. Textbook (available as PDF
  in MATH547/bibliography/textbook) pp. 74--106 from Vectors chapter, pp.
  162--192 from Matrices chapter.

  <\enumerate-numeric>
    <item>(1 course point) Textbook exercises C10-C13 on page 80.

    <with|font-series|bold|C10:>

    <\equation*>
      \ 4<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-3>>|<row|<cell|4>>|<row|<cell|1>>|<row|<cell|0>>>>>+<around*|(|-2|)><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-5>>|<row|<cell|2>>|<row|<cell|4>>>>>+<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|2>>>>>=
      <matrix|<tformat|<table|<row|<cell|8>>|<row|<cell|-12>>|<row|<cell|16>>|<row|<cell|4>>|<row|<cell|0>>>>>+<matrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-4>>|<row|<cell|10>>|<row|<cell|-4>>|<row|<cell|-8>>>>>+<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|5>>|<row|<cell|-13>>|<row|<cell|26>>|<row|<cell|1>>|<row|<cell|-6>>>>>
    </equation*>

    \ \ \ \ <with|font-series|bold|C11:>

    <\equation*>
      <\math>
        3<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+4<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|0>>|<row|<cell|x>>>>>=<matrix|<tformat|<table|<row|<cell|11>>|<row|<cell|6>>|<row|<cell|17>>>>>\<Rightarrow\>
        <matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|6>>|<row|<cell|-3>>>>>+<matrix|<tformat|<table|<row|<cell|8>>|<row|<cell|0>>|<row|<cell|4x>>>>>=<matrix|<tformat|<table|<row|<cell|11>>|<row|<cell|6>>|<row|<cell|17>>>>><text|>\<Rightarrow\><matrix|<tformat|<table|<row|<cell|11>>|<row|<cell|6>>|<row|<cell|x>>>>>=<matrix|<tformat|<table|<row|<cell|11>>|<row|<cell|6>>|<row|<cell|5>>>>>
      </math>

      \<Rightarrow\> \ \ \ \ \ x=5

      \;
    </equation*>

    <with|font-series|bold| \ \ C12:>

    \;

    <\equation*>
      <\math>
        <with|font-series|bold|\<b-alpha\>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+4<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|4>>|<row|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|4>>>>>\<Rightarrow\><matrix|<tformat|<table|<row|<cell|\<alpha\>>>|<row|<cell|2\<alpha\>>>|<row|<cell|-\<alpha\>>>>>>+<matrix|<tformat|<table|<row|<cell|12>>|<row|<cell|16>>|<row|<cell|8>>>>>=<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|4>>>>>
      </math>
    </equation*>

    <\equation*>
      \<Rightarrow\><text|<math|<matrix|<tformat|<table|<row|<cell|\<alpha\>>>|<row|<cell|\<alpha\>>>|<row|<cell|\<alpha\>>>>>>=<matrix|<tformat|<table|<row|<cell|-13>>|<row|<cell|-8>>|<row|<cell|4>>>>>>>
    </equation*>

    \;

    \ no solution; <math|\<alpha\> cannot be -13,-8\<nocomma\>,and 4
    simultaneously.>

    \;

    <with|font-series|bold|C13:>

    <\equation*>
      \;
    </equation*>

    <with|font-series|bold|\<b-alpha\>><matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>|<row|<cell|-2>>>>>+<matrix|<tformat|<table|<row|<cell|6>>|<row|<cell|1>>|<row|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-3>>|<row|<cell|6>>>>><math|\<Rightarrow\>><matrix|<tformat|<table|<row|<cell|3\<alpha\>>>|<row|<cell|2\<alpha\>>>|<row|<cell|-2\<alpha\>>>>>>+<matrix|<tformat|<table|<row|<cell|6>>|<row|<cell|1>>|<row|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-3>>|<row|<cell|6>>>>>

    <\equation*>
      \;
    </equation*>

    \ \ \ \ \ <em|<strong|>><math|3\<alpha\>=-6\<nocomma\>,\<alpha\>=-2>

    \ 2<math|\<alpha\>+1=-3\<nocomma\>,2\<alpha\>=-4,\<alpha\>=-2>

    -2<math|\<alpha\>+2=6\<nocomma\>,-2\<alpha\>=4,\<alpha\>=-2>

    <math|\<alpha\>=-2>

    \;

    <item>(1 course point) Textbook exercises T30-T32 on page 82.

    <with|font-series|bold|T30:>

    <math|To prove <with|font-series|bold|u> \<minus\>
    <with|font-series|bold|v> =<with|font-series|bold| u> +
    (\<minus\>1)<with|font-series|bold|v>,>

    We first define <math|<with|font-series|bold|u>=><math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>>
    and <math|<with|font-series|bold|v>=><math|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>>

    then <with|font-series|bold|u-v> = <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>>-<math|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>>=
    <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>-v<rsub|1>>>|<row|<cell|u<rsub|2>-v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>-v<rsub|m>>>>>>>

    and <with|font-series|bold|u+v> = <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>>+<math|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>>=
    <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>+v<rsub|1>>>|<row|<cell|u<rsub|2>+v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>+v<rsub|m>>>>>>>

    Moreover, <with|font-series|bold|u+<with|font-series|medium|(-1)>v> =
    <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>>+<math|<around*|(|-1|)><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>>=
    <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>>+<math|<matrix|<tformat|<table|<row|<cell|-v<rsub|1>>>|<row|<cell|-v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|-v<rsub|m>>>>>>>=
    <math|<matrix|<tformat|<table|<row|<cell|u<rsub|1>-v<rsub|1>>>|<row|<cell|u<rsub|2>-v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>-v<rsub|m>>>>>>>
    <space|0.2spc>, which is equivalent to <with|font-series|bold|u-v>.

    Showing that <math|<with|font-series|bold|u> \<minus\>
    <with|font-series|bold|v> =<with|font-series|bold| u> +
    (\<minus\>1)<with|font-series|bold|v>.>

    \;

    <\with|font-series|bold>
      T31:
    </with>

    To show vector subtraction is not commutative, we provide the
    counter-example:

    <\equation*>
      Let <with|font-series|bold|u>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>
      ,<with|font-series|bold|v>= <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>
      \ \<nocomma\>\<nocomma\>
    </equation*>

    <\equation*>
      <with|font-series|bold|u-v> = <matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|1>>>>>\<nocomma\>\<comma\>\<nocomma\>while
      <with|font-series|bold| v-u> = <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|1>>>>>\<nocomma\>\<neq\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
    </equation*>

    <\equation*>
      thus\<nocomma\>,<with|font-series|bold|
      u-v>\<neq\><with|font-series|bold|v-u>
    </equation*>

    <\with|font-series|bold>
      \;
    </with>

    To show vector subtraction is not associative, we provide the
    counter-example:

    <\equation*>
      Let <with|font-series|bold|u>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>
      ,<with|font-series|bold|v>= <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>
      \ \<nocomma\>\<nocomma\>,<with|font-series|bold|w>=
      <matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>>>>\ 
    </equation*>

    <\equation*>
      <with|font-series|bold|<around*|(||\<nobracket\>>u<with|font-series|medium|->v<around*|)||\<nobracket\>><with|font-series|medium|->w>
      = <matrix|<tformat|<table|<row|<cell|0-1-2>>|<row|<cell|1-0-2>>>>>=
      <matrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|-1>>>>>
    </equation*>

    <\equation*>
      \ \<nocomma\> <with|font-series|bold|u<with|font-series|medium|-><around*|(|v<with|font-series|bold|->w|)>>
      =<matrix|<tformat|<table|<row|<cell|0-<around*|(|1-2|)>>>|<row|<cell|1-<around*|(|0-2|)>>>>>>=
      <matrix|<tformat|<table|<row|<cell|0-<around*|(|-1|)>>>|<row|<cell|1-<around*|(|-2|)>>>>>>=
      <matrix|<tformat|<table|<row|<cell|0+1>>|<row|<cell|1+2>>>>>=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>
    </equation*>

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|-1>>>>>\<neq\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>
    </equation*>

    <\equation*>
      thus\<nocomma\><with|font-series|bold|\<nocomma\><with|font-series|medium|,><around*|(||\<nobracket\>>u<with|font-series|bold|<with|font-series|bold|->>v<around*|)||\<nobracket\>><with|font-series|medium|->w>\<neq\><with|font-series|bold|u><with|font-series|medium|-><around*|(|<with|font-series|bold|v><with|font-series|bold|-><with|font-series|bold|w>|)>
    </equation*>

    \ \ \ <with|font-series|bold| T31:>

    <math|To prove that vector subtraction is
    distributive\<nocomma\>\<nocomma\>,we define vectors
    <with|font-series|bold|u <with|font-series|medium|and
    <with|font-series|bold|v>>> :>

    <\equation*>
      <with|font-series|bold|u> = <matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>\<nocomma\>
      <with|font-series|bold|\<nocomma\>\<nocomma\>
      <with|font-series|medium|,> v=><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>
    </equation*>

    <\equation*>
      then \<alpha\><with|font-series|bold|u>-\<alpha\><with|font-series|bold|v>
      = \<alpha\><with|font-series|bold|><matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>\<nocomma\>
      -\<alpha\><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>
      = <with|font-series|bold|><matrix|<tformat|<table|<row|<cell|\<alpha\>u<rsub|1>>>|<row|<cell|\<alpha\>u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\>u<rsub|m>>>>>>-<matrix|<tformat|<table|<row|<cell|\<alpha\>v<rsub|1>>>|<row|<cell|\<alpha\>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\>v<rsub|m>>>>>>
      = <matrix|<tformat|<table|<row|<cell|\<alpha\>u<rsub|1>-\<alpha\>v<rsub|1>>>|<row|<cell|\<alpha\>u<rsub|2>-\<alpha\>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\>u<rsub|m>-\<alpha\>v<rsub|m>>>>>>\<nocomma\>
      </equation*>

    <\equation*>
      and \<alpha\><around*|(|<with|font-series|bold|u>-<with|font-series|bold|v>|)>
      = \<alpha\><around*|(|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>\<nocomma\>
      <with|font-series|bold|\<nocomma\>\<nocomma\>
      <with|font-series|medium|->><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>|)>=
      \<alpha\><matrix|<tformat|<table|<row|<cell|u<rsub|1>-v<rsub|1>>>|<row|<cell|u<rsub|2>-v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>-v<rsub|m>>>>>>\<nocomma\>
      = <matrix|<tformat|<table|<row|<cell|\<alpha\><around*|(|u<rsub|1>-v<rsub|1>|)>>>|<row|<cell|\<alpha\><around*|(|u<rsub|2>-v<rsub|2>|)>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\><around*|(|u<rsub|m>-v<rsub|m>|)>>>>>>\<nocomma\>
      = <matrix|<tformat|<table|<row|<cell|\<alpha\>u<rsub|1>-\<alpha\>v<rsub|1>>>|<row|<cell|\<alpha\>u<rsub|2>-\<alpha\>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\>u<rsub|m>-\<alpha\>v<rsub|m>>>>>>\<nocomma\>
      </equation*>

    <\equation*>
      Showing that \<alpha\><around*|(|<with|font-series|bold|u>-<with|font-series|bold|v>|)>=
      \<alpha\><with|font-series|bold|u>-\<alpha\><with|font-series|bold|v>
    </equation*>

    <\equation*>
      Alternatively\<nocomma\>,this can be proven using the alternative
      descrptions of vector subtraction:
    </equation*>

    <\equation*>
      Using the same <with|font-series|bold|u> and <with|font-series|bold|v
      >as defined in the first proof,
    </equation*>

    <\equation*>
      \ \<alpha\><around*|(|<with|font-series|bold|u>+<around*|(|-1|)><with|font-series|bold|v>|)>
      = \<alpha\><around*|(|<matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>>>>>>\<nocomma\>
      <with|font-series|bold|\<nocomma\>\<nocomma\>
      <with|font-series|medium|+>><around*|(|-1|)><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|m>>>>>>|)>=
      \<alpha\><matrix|<tformat|<table|<row|<cell|u<rsub|1>+<around*|(|-1|)>v<rsub|1>>>|<row|<cell|u<rsub|2>+<around*|(|-1|)>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|u<rsub|m>+<around*|(|-1|)>v<rsub|m>>>>>>
    </equation*>

    <\equation*>
      \<nocomma\> = <matrix|<tformat|<table|<row|<cell|\<alpha\><around*|(|u<rsub|1>|)>+\<alpha\><around*|(|-1|)>v<rsub|1>>>|<row|<cell|\<alpha\><around*|(|u<rsub|2>|)>+\<alpha\><around*|(|-1|)>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\><around*|(|u<rsub|m>|)>+\<alpha\><around*|(|-1|)>v<rsub|m>>>>>>\<nocomma\>
      = <matrix|<tformat|<table|<row|<cell|\<alpha\>u<rsub|1>-\<alpha\>v<rsub|1>>>|<row|<cell|\<alpha\>u<rsub|2>-\<alpha\>v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|\<alpha\>u<rsub|m>-\<alpha\>v<rsub|m>>>>>>\<nocomma\>
      = \<alpha\><with|font-series|bold|u>-\<alpha\><with|font-series|bold|v>
    </equation*>

    \;

    \;

    <item>(1 course point) Express the systems in exercises C40,C41 (p. 105)
    as matrix-vector products (do not solve the systems).

    <with|font-series|bold|C40>:

    \;

    <\input| >
      <math|<matrix|<tformat|<table|<row|<cell|2
      >|<cell|-4>|<cell|3>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-2>|<cell|-2>|<cell|14>|<cell|4>>|<row|<cell|1>|<cell|-2>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|-2>|<cell|4>|<cell|0>|<cell|-12>|<cell|1>>>>>><math|><math|<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>>>>>
      = <math|<matrix|<tformat|<table|<row|<cell|6>>|<row|<cell|15>>|<row|<cell|-1>>|<row|<cell|-7>>>>>>
      </input>

    <with|font-series|bold|C41:>

    <\input| >
      <math|<matrix|<tformat|<table|<row|<cell|-2>|<cell|-1>|<cell|-8>|<cell|8>|<cell|4>|<cell|-9>|<cell|-1>|<cell|-1>|<cell|-18>>|<row|<cell|3>|<cell|-2>|<cell|5>|<cell|2>|<cell|-2>|<cell|-5>|<cell|1>|<cell|2>|<cell|15>>|<row|<cell|4>|<cell|-2>|<cell|8>|<cell|0>|<cell|2>|<cell|-14>|<cell|0>|<cell|-2>|<cell|2>>|<row|<cell|-1>|<cell|2>|<cell|1>|<cell|-6>|<cell|0>|<cell|7>|<cell|-1>|<cell|0>|<cell|-3>>|<row|<cell|3>|<cell|2>|<cell|13>|<cell|-14>|<cell|-1>|<cell|5>|<cell|0>|<cell|-1>|<cell|12>>|<row|<cell|-2>|<cell|2>|<cell|-2>|<cell|-4>|<cell|1>|<cell|6>|<cell|-2>|<cell|-2>|<cell|-15>>>>>><math|><math|<matrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>|<row|<cell|x<rsub|6>>>|<row|<cell|x<rsub|7>>>|<row|<cell|x<rsub|8>>>|<row|<cell|x<rsub|9>>>>>>>
      = <math|<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|10>>|<row|<cell|36>>|<row|<cell|-8>>|<row|<cell|15>>|<row|<cell|7>>>>>>
      </input>

    \;

    \;

    <item>(1 course point) Let <math|\<b-u\>,\<b-v\>,\<b-w\>\<in\>\<cal-V\>>,
    <math|a,b\<in\>S>. Assume <math|\<b-u\>> is orthogonal to both
    <math|\<b-v\>> and <math|\<b-w\>>. Show that <math|\<b-u\>> is orthogonal
    to <math|a \<b-v\>+b\<b-w\>> when <math|\<cal-V\>=\<bbb-R\><rsup|m>>,
    <math|S=\<bbb-R\>>. Repeat for <math|\<cal-V\>=\<bbb-C\><rsup|m>>,
    <math|S=\<bbb-C\>>.

    \;

    <\math>
      Given that <with|font-series|bold|u> is orthogonal
      to<with|font-series|bold| v> and <with|font-series|bold|w>\<nocomma\>,
    </math>

    <\equation*>
      <with|font-series|bold|u><rsup|T><with|font-series|bold|v >=
      \ <with|font-series|bold|u><rsup|T><with|font-series|bold|w >= 0,
    </equation*>

    \ \ \ \ Which means that,

    <\equation*>
      <with|font-series|bold|u><rsup|T><with|font-series|bold|v >=
      <around*|(|u<rsub|1>+u<rsub|2>+\<ldots\>+u<rsub|n>|)><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|n>>>>>>=
      u<rsub|1>v<rsub|1>+ u<rsub|2>v<rsub|2>+...+ u<rsub|n>v<rsub|n> = 0
    </equation*>

    <\equation*>
      <with|font-series|bold|u><rsup|T><with|font-series|bold|v >=
      <around*|(|u<rsub|1>+u<rsub|2>+\<ldots\>+u<rsub|n>|)><matrix|<tformat|<table|<row|<cell|w<rsub|1>>>|<row|<cell|w<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|w<rsub|n>>>>>>=
      u<rsub|1>w<rsub|1>+ u<rsub|2>w<rsub|2>+...+ u<rsub|n>w<rsub|n> = 0
    </equation*>

    \ \ \ <math|Furthermore\<nocomma\>,>

    <\equation*>
      a<with|font-series|bold|v>+b<with|font-series|bold|w> =
      a<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|v<rsub|n>>>>>>+b<matrix|<tformat|<table|<row|<cell|w<rsub|1>>>|<row|<cell|w<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|w<rsub|n>>>>>>=
      <matrix|<tformat|<table|<row|<cell|av<rsub|1>+bw<rsub|1>>>|<row|<cell|av<rsub|2>+bw<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|av<rsub|n>+bw<rsub|n>>>>>>
    </equation*>

    To show <with|font-series|bold|u> is orthogonal to
    a<with|font-series|bold|v>+b<with|font-series|bold|w>, we must show
    <math|<with|font-series|bold|u><rsup|T><around*|(|a<with|font-series|bold|v>+b<with|font-series|bold|w>|)>=0:>

    <\equation*>
      <with|font-series|bold|u><rsup|T><around*|(|a<with|font-series|bold|v>+b<with|font-series|bold|w>|)>=
      <around*|(|u<rsub|1>+u<rsub|2>+\<ldots\>+u<rsub|n>|)><matrix|<tformat|<table|<row|<cell|av<rsub|1>+bw<rsub|1>>>|<row|<cell|av<rsub|2>+bw<rsub|2>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|av<rsub|n>+bw<rsub|n>>>>>>=
      u<rsub|1>av<rsub|1>+u<rsub|1>bw<rsub|1>+u<rsub|2>av<rsub|2>+u<rsub|2>bw<rsub|2>+\<ldots\>+u<rsub|n>av<rsub|n>+u<rsub|n>bw<rsub|n>
    </equation*>

    <\equation*>
      = a<around*|(|u<rsub|1>v<rsub|1>+u<rsub|2>v<rsub|2>\<ldots\>u<rsub|n>v<rsub|n>|)>+b<around*|(|u<rsub|1>w<rsub|1>+u<rsub|2>w<rsub|2>+\<ldots\>+u<rsub|n>w<rsub|n>|)>
      = a<around*|(|<with|font-series|bold|u><rsup|T><with|font-series|bold|v>|)>+b<around*|(|<with|font-series|bold|u><rsup|T><with|font-series|bold|w
      >|)>= a<around*|(|0|)>+b<around*|(|0|)> = 0
    </equation*>

    \ \ \ \ \ Showing <with|font-series|bold|u> is orthogonal to
    a<with|font-series|bold|v>+b<with|font-series|bold|w>.

    \;

    \;

    Redoing this proof for <math|\<cal-V\>=\<bbb-C\><rsup|m>>,
    <math|S=\<bbb-C\>>:

    \;

    \ \ \ \ \ Given <with|font-series|bold|u> is orthogonal
    <with|font-series|bold|v>,<with|font-series|bold|w>,\ 

    \ \ \ \ \ then \<less\><with|font-series|bold|u>,<with|font-series|bold|v>\<gtr\>
    = 0 and \<less\><with|font-series|bold|u>,<with|font-series|bold|w>\<gtr\>
    = 0\ 

    \;

    \ \ \ \ \ We wish to prove that \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>+b<with|font-series|bold|w>\<gtr\>
    = 0

    \;

    \ \ \ \ \ By property 3 of the Scalar product of two vectors(from
    lecture):

    \ \ \ \ \ \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>+b<with|font-series|bold|w>\<gtr\>
    = \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>\<gtr\> +
    \<less\><with|font-series|bold|u>,b<with|font-series|bold|w>\<gtr\>

    \;

    \ \ \ \ \ By property 2 of the Scalar product of two vectors,\ 

    \ \ \ \ \ \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>\<gtr\>
    = a\<less\><with|font-series|bold|u>,<with|font-series|bold|v>\<gtr\>

    \ \ \ \ \ and\ 

    \ \ \ \ \ \<less\><with|font-series|bold|u>,b<with|font-series|bold|w>\<gtr\>
    = b\<less\><with|font-series|bold|u>,<with|font-series|bold|w>\<gtr\>\ 

    \;

    \ \ \ \ \ Substituting in \<less\><with|font-series|bold|u>,<with|font-series|bold|v>\<gtr\>
    = 0 and \<less\><with|font-series|bold|u>,<with|font-series|bold|w>\<gtr\>
    = 0,\ 

    \ \ \ \ \ \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>\<gtr\>
    = a\<less\><with|font-series|bold|u>,<with|font-series|bold|v>\<gtr\> =
    a(0) = 0

    \ \ \ \ \ \ and\ 

    \ \ \ \ \ \<less\><with|font-series|bold|u>,b<with|font-series|bold|w> =
    b\<less\><with|font-series|bold|u>,<with|font-series|bold|w>\<gtr\> =
    b(0) = 0

    \;

    \ \ \ \ Thus, \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>+b<with|font-series|bold|w>\<gtr\>
    = \<less\><with|font-series|bold|u>,a<with|font-series|bold|v>\<gtr\> +
    \<less\><with|font-series|bold|u>,b<with|font-series|bold|w>\<gtr\> = 0+0
    = 0

    \;

    Showing <with|font-series|bold|u> is orthogonal to
    a<with|font-series|bold|v>+b<with|font-series|bold|w>.

    <\equation*>
      \;
    </equation*>

    <item>(Computer application 4 course points) This first computer
    application is meant as an introduction to use of Octave (Matlab) in
    linear algebra. Redo problems 1,3 using Octave.

    <with|font-series|bold|C10>:

    <\session|octave|default>
      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        x=[2;-3;4;1;0]; y=[1;2;-5;2;4]; z=[-1;3;0;1;2]; a=4;b=-2;
        disp(a*x+b*y+z)
      <|unfolded-io>
        \ \ \ \ 5

        \ \ -13

        \ \ \ 26

        \ \ \ \ 1

        \ \ \ -6

        \;

        \;
      </unfolded-io>

      \ \ \ \ <with|font-series|bold|C11>:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        x=5;u=[1;2;-1]; v=[2;0;x]; a=3; b=4; disp(a*u+b*v)
      <|unfolded-io>
        \ \ \ 11

        \ \ \ \ 6

        \ \ \ 17
      </unfolded-io>

      \ Thus, x must be 5 because the output of
      a<with|font-series|bold|u>+b<with|font-series|bold|v> =
      <math|<matrix|<tformat|<table|<row|<cell|11>>|<row|<cell|6>>|<row|<cell|17>>>>>>.

      \ \ \ <with|font-series|bold|C12>:

      <\session|octave|default>
        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          x=[1;2;-1]; y=[3;4;2]; z=[-1;0;4]; p=z-4*y; mldivide(x,p)
        <|unfolded-io>
          <with|mode|math|-6.8333>
        </unfolded-io>

        \;

        The program outputs <math|\<b-alpha\>=-6.8333\<nosymbol\>\<nosymbol\>.>
        When we substitute this value into the original problem as so,

        <math|-6.8333<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+4<matrix|<tformat|<table|<row|<cell|3>>|<row|<cell|4>>|<row|<cell|2>>>>>=<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|4>>>>>>,
        none of the linear combinations are satisfied. Therfore, no solution.

        \;
      </session>

      \;

      \ \ \ <with|font-series|bold|C13>:

      <\session|octave|default>
        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          x=[3;2;-2]; y=[6;1;2]; z=[0;-3;6]; p=(z-y); mldivide(x,p)
        <|unfolded-io>
          <with|mode|math|-2>
        </unfolded-io>

        \;
      </session>

      <with|font-series|bold| \ \ C40>:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        x=[2 -4 3 0 1;1 -2 -2 14 -4;1 -2 1 2 1;-2 4 0 -12 1];
        y=[6;15;-1;-7];disp(x)\ 
      <|unfolded-io>
        \ \ \ \ 2 \ \ -4 \ \ \ 3 \ \ \ 0 \ \ \ 1

        \ \ \ \ 1 \ \ -2 \ \ -2 \ \ 14 \ \ -4

        \ \ \ \ 1 \ \ -2 \ \ \ 1 \ \ \ 2 \ \ \ 1

        \ \ \ -2 \ \ \ 4 \ \ \ 0 \ -12 \ \ \ 1

        disp(y)

        \ \ \ \ 6

        \ \ \ 15

        \ \ \ -1

        \ \ \ -7
      </unfolded-io>

      \;

      Solving the system:

      <\unfolded-io>
        octave\<gtr\>\ 
      <|unfolded-io>
        mldivide(x,y)
      <|unfolded-io>
        <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|0.73554>>>|<row|<cell|<with|mode|math|-1.4711>>>|<row|<cell|<with|mode|math|1.2149>>>|<row|<cell|<with|mode|math|-0.44628>>>|<row|<cell|<with|mode|math|-5>>>>>>>
      </unfolded-io>

      \;

      \;

      <with|font-series|bold| \ \ C41>:

      <\session|octave|default>
        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          x=[-2 -1 -8 8 4 -9 -1 -1 -18; 3 -2 5 2 -2 -5 1 2 15; 4 -2 8 0 2 -14
          0 -2 2;-1 2 1 -6 0 7 -1 0 -3; 3 2 13 -14 -1 5 0 -1 12; -2 2 -2 -4 1
          6 -2 -2 -15]; disp(x);\ 
        <|unfolded-io>
          \ \ \ -2 \ \ -1 \ \ -8 \ \ \ 8 \ \ \ 4 \ \ -9 \ \ -1 \ \ -1 \ -18

          \ \ \ \ 3 \ \ -2 \ \ \ 5 \ \ \ 2 \ \ -2 \ \ -5 \ \ \ 1 \ \ \ 2
          \ \ 15

          \ \ \ \ 4 \ \ -2 \ \ \ 8 \ \ \ 0 \ \ \ 2 \ -14 \ \ \ 0 \ \ -2
          \ \ \ 2

          \ \ \ -1 \ \ \ 2 \ \ \ 1 \ \ -6 \ \ \ 0 \ \ \ 7 \ \ -1 \ \ \ 0
          \ \ -3

          \ \ \ \ 3 \ \ \ 2 \ \ 13 \ -14 \ \ -1 \ \ \ 5 \ \ \ 0 \ \ -1 \ \ 12

          \ \ \ -2 \ \ \ 2 \ \ -2 \ \ -4 \ \ \ 1 \ \ \ 6 \ \ -2 \ \ -2 \ -15

          \;

          <\unfolded-io>
            octave\<gtr\>\ 
          <|unfolded-io>
            y=[3;10;36;-8;15;7]; disp(y);
          <|unfolded-io>
            \ \ \ \ 3

            \ \ \ 10

            \ \ \ 36

            \ \ \ -8

            \ \ \ 15

            \ \ \ \ 7
          </unfolded-io>

          \;
        </unfolded-io>

        \;

        Solving the system:

        <\unfolded-io>
          octave\<gtr\>\ 
        <|unfolded-io>
          mldivide(x,y)
        <|unfolded-io>
          <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|2.3077>>>|<row|<cell|<with|mode|math|-1.5685>>>|<row|<cell|<with|mode|math|3.786>>>|<row|<cell|<with|mode|math|1.6586>>>|<row|<cell|<with|mode|math|-3.4449>>>|<row|<cell|<with|mode|math|-0.12337>>>|<row|<cell|<with|mode|math|-1.4069>>>|<row|<cell|<with|mode|math|-1.6711>>>|<row|<cell|<with|mode|math|-1.7389>>>>>>>
        </unfolded-io>

        <\input>
          octave\<gtr\>\ 
        <|input>
          \;
        </input>
      </session>

      \;

      \;
    </session>

    \;
  </enumerate-numeric>

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
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>