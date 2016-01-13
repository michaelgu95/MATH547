<TeXmacs|1.99.2>

<style|generic>

<\body>
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

  \;

  <\equation*>
    To find eigenvalues\<nocomma\> of A, we must find solutions to
    det<around*|(|A-\<lambda\>I<rsub|4>|)>=0
  </equation*>

  <\equation*>
    A-\<lambda\>I<rsub|4>=<matrix|<tformat|<table|<row|<cell|654>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823>>>>>-\<lambda\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    det<around*|(|A-\<lambda\>I<rsub|4>|)>=det<matrix|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>=0
  </equation*>

  \;

  \;

  <\equation*>
    =<around*|(|654-\<lambda\>|)>det<matrix|<tformat|<table|<row|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>+169
    det<matrix|<tformat|<table|<row|<cell|-169>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>+0
  </equation*>

  <\equation*>
    + 91 det<matrix|<tformat|<table|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-91>|<cell|-49>>>>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  \ 

  <\equation*>
    Splitting the problem into 3 separate determinant problems:
  </equation*>

  \ \ \ First:

  <\equation*>
    <around*|(|654-\<lambda\>|)><det|<tformat|<table|<row|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    = <around*|(|654-\<lambda\>|)><around*|[|<around*|(|703-\<lambda\>|)><det|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-49>|<cell|823-\<lambda\>>>>>>+91<det|<tformat|<table|<row|<cell|-91>|<cell|-49>>|<row|<cell|-91>|<cell|823-\<lambda\>>>>>>-91<det|<tformat|<table|<row|<cell|-91>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-49>>>>>|]>
  </equation*>

  <\equation*>
    =<around*|(|654-\<lambda\>|)> <around*|[|<around*|(|703-\<lambda\>|)><around*|[|<around*|(|654-\<lambda\>|)>-49<rsup|2>|]>
    +91<around*|[|-91<around*|(|823-\<lambda\>|)>-*4459|]>-91|[>4459-<around*|(|-91|)><around*|(|654-\<lambda\>|]>
  </equation*>

  <\equation*>
    =<around*|(|654-\<lambda\>|)><around*|(|-\<lambda\><rsup|3>+2180\<lambda\><rsup|2>-1557610\<lambda\>+36653648\<lambda\>|)>
  </equation*>

  \;

  Second:

  <\equation*>
    169<det|<tformat|<table|<row|<cell|-169>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    =169<around*|[|-169<det|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-49>|<cell|823-\<lambda\>>>>>>+91<det|<tformat|<table|<row|<cell|0>|<cell|-49>>|<row|<cell|-91>|<cell|823-\<lambda\>>>>>>-91<det|<tformat|<table|<row|<cell|0>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-49>>>>>|]>
  </equation*>

  <\equation*>
    =169<around*|[|-169<around*|[|<around*|(|654-\<lambda\>|)><around*|(|823-\<lambda\>|)>-2401|]>+91<around*|[|-4459|]>-91<around*|(|654-\<lambda\>|)><around*|(|91|)>|]>
  </equation*>

  <\equation*>
    =169<around*|(|-169\<lambda\><rsup|2>+257894\<lambda\>-96378672|)>
  </equation*>

  \ \ \ \ Third:

  <\equation*>
    91<det|<tformat|<table|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-91>|<cell|-49>>>>>
  </equation*>

  <math|<text|>>

  <\equation*>
    =91<around*|[|<around*|(|-169|)><det|<tformat|<table|<row|<cell|-91>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-49>>>>>-<around*|(|703-\<lambda\>|)><det|<tformat|<table|<row|<cell|0>|<cell|654-\<lambda\>>>|<row|<cell|-91>|<cell|-49>>>>>-91<det|<tformat|<table|<row|<cell|0>|<cell|-91>>|<row|<cell|-91>|<cell|-91>>>>>|]>
  </equation*>

  <\equation*>
    =91<around*|[|<around*|(|-169|)><around*|(|4459-<around*|(|-91|)><around*|(|654-\<lambda\>|)>|)>-<around*|(|703-\<lambda\>|)><around*|[|-91<around*|(|654-\<lambda\>|)>|]>-91<around*|(|-91<rsup|2>|)>|]>
  </equation*>

  <\equation*>
    =91<around*|(|-91\<lambda\><rsup|2>+138866\<lambda\>-51896208|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    Combining the three sub-problems:
  </equation*>

  <\equation*>
    <around*|(|654-\<lambda\>|)><around*|(|-\<lambda\><rsup|3>+2180\<lambda\><rsup|2>-1557610\<lambda\>+36653648\<lambda\>|)>+169<around*|(|-169\<lambda\><rsup|2>+257894\<lambda\>-96378672|)>
  </equation*>

  <\equation*>
    +91<around*|(|-91\<lambda\><rsup|2>+138866\<lambda\>-51896208|)>=0
  </equation*>

  <\equation*>
    Which simplifies to:
  </equation*>

  \;

  <\equation*>
    \<nocomma\>\<nocomma\>216818935296-1326109696 \<lambda\>+2946488
    \<lambda\><rsup|2>-2834 \<lambda\><rsup|3>+\<lambda\><rsup|4>=0
  </equation*>

  <\equation*>
    Solving,
  </equation*>

  <\equation*>
    \<lambda\><around*|(|\<lambda\><around*|(|<around*|(|\<lambda\>-2834|)>\<lambda\>
    +2946488|)>-1326109696|)>+216818935296 =0
  </equation*>

  <\equation*>
    <around*|(|\<lambda\>-872|)><rsup|2><around*|(|\<lambda\><rsup|2>-1090\<lambda\>+285144|)>=0
  </equation*>

  <\equation*>
    <around*|(|\<lambda\>-872|)><rsup|2><around*|(|\<lambda\>-654|)><around*|(|\<lambda\>-436|)>=0
  </equation*>

  <\equation*>
    \<lambda\>=872,654,436
  </equation*>

  \;

  <\equation*>
    Finding the eigenvectors corresponding to the eigenvalues,
  </equation*>

  <\math>
    \<lambda\>=654,

    \;
  </math>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|654>=N<around*|(|<matrix|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|0>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|49>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|169>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|654>:
  </equation*>

  <\equation*>
    E<rsub|654>=<matrix|<tformat|<table|<row|<cell|0>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|49>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|169>>>>><long-arrow|\<rubber-rightarrow\>|R1\<rightarrow\>R2,R2\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|-169>|<cell|49>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|169>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|169>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|169>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|91R1+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|0>|<cell|-1526/13>|<cell|0>|<cell|218>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|169>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|-91>|<cell|0>|<cell|-49>>|<row|<cell|0>|<cell|-1526/13>|<cell|0>|<cell|218>>>>><long-arrow|\<rubber-rightarrow\>|91R2+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1526/13>|<cell|0>|<cell|218>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1526|13>R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|47524/169>>>>><long-arrow|\<rubber-rightarrow\>|R3\<rightarrow\>R4,R4\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|47524/169>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  \;

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|169|47524>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|7|13>R3+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|7/13>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|7|13>R3+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-49/169>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|49|169>R2+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|7/13>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    v<rsub|1>+<frac|7|13>v<rsub|3>=0
  </equation*>

  <\equation*>
    Letting t=v<rsub|3>
  </equation*>

  <\equation*>
    E<rsub|654>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>
  </equation*>

  <\equation*>
    Because rank of E<rsub|654> is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|654>=1 and
    AM<rsub|654>=1
  </equation*>

  <\math>
    \<lambda\>=436,

    \;
  </math>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|436>=N<around*|(|<matrix|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|218>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|267>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|387>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|436>:
  </equation*>

  <\equation*>
    E<rsub|436>=<matrix|<tformat|<table|<row|<cell|218>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|267>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|387>>>>><long-arrow|\<rubber-rightarrow\>|<frac|1|218>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|-169>|<cell|267>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|387>>>>><long-arrow|\<rubber-rightarrow\>|169R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|-169>|<cell|267>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|387>>>>>
  </equation*>

  \;

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|91R1+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|-169>|<cell|267>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|0>|<cell|-35317/218>|<cell|-49>|<cell|387>>>>><long-arrow|\<rubber-rightarrow\>|<frac|218|29645>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|-2834/4235>|<cell|-5031/4235>>|<row|<cell|0>|<cell|-91>|<cell|218>|<cell|-49>>|<row|<cell|0>|<cell|-35317/218>|<cell|-49>|<cell|387>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|91R2+R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|-2834/4235>|<cell|-5031/4235>>|<row|<cell|0>|<cell|0>|<cell|95048/605>|<cell|-95048/605>>|<row|<cell|0>|<cell|-35317/218>|<cell|-49>|<cell|387>>>>><long-arrow|\<rubber-rightarrow\>|<frac|35217|218>R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|-2834/4235>|<cell|-5031/4235>>|<row|<cell|0>|<cell|0>|<cell|95048/605>|<cell|-95048/605>>|<row|<cell|0>|<cell|0>|<cell|-95048/605>|<cell|95048/605>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|605|95048>R3\<rightarrow\>R3><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|-2834/4235>|<cell|-5031/4235>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|-95048/605>|<cell|95048/605>>>>><long-arrow|\<rubber-rightarrow\>|<frac|95048|605>R3+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|-2834/4235>|<cell|-5031/4235>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<frac|2834|4235>R3+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|-169/218>|<cell|0>|<cell|-91/218>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<frac|169|218>R2+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-13/7>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    Letting t=v<rsub|4>
  </equation*>

  <\equation*>
    E<rsub|436>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|13/7>>|<row|<cell|1>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|13/7>>|<row|<cell|1>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    Because rank of E<rsub|436> is 1\<nocomma\>,the geometric multiplicity
    =1\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|436>=1 and
    AM<rsub|436>=1
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\math>
    \<lambda\>=872,

    \;
  </math>

  <\equation*>
    To find the eigenvector\<nocomma\>,we must find the null space of the
    matrix A-\<lambda\>I<rsub|4>,or
  </equation*>

  <\equation*>
    E<rsub|872>=N<around*|(|<matrix|<tformat|<table|<row|<cell|654-\<lambda\>>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|703-\<lambda\>>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|654-\<lambda\>>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|823-\<lambda\>>>>>>|)>
    = N<around*|(|<matrix|<tformat|<table|<row|<cell|-218>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|-169>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|-49>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    To obtain vectors that span the null space,first perform row reduction on
    E<rsub|872>:
  </equation*>

  <\equation*>
    E<rsub|872>=<matrix|<tformat|<table|<row|<cell|-218>|<cell|-169>|<cell|0>|<cell|-91>>|<row|<cell|-169>|<cell|-169>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|-49>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|1|218>R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|-169>|<cell|-169>|<cell|-91>|<cell|-91>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|-49>>>>><long-arrow|\<rubber-rightarrow\>|169R1+R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|0>|<cell|-8281/218>|<cell|-91>|<cell|-4459/218>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|-91>|<cell|-91>|<cell|-49>|<cell|-49>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|91R1+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|0>|<cell|-8281/218>|<cell|-91>|<cell|-4459/218>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|0>|<cell|-4459/218>|<cell|-49>|<cell|-2401/218>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|218|8281>R2\<rightarrow\>R2><matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|0>|<cell|1>|<cell|218/91>|<cell|7/13>>|<row|<cell|0>|<cell|-91>|<cell|-218>|<cell|-49>>|<row|<cell|0>|<cell|-4459/218>|<cell|-49>|<cell|-2401/218>>>>><long-arrow|\<rubber-rightarrow\>|91R2+R3\<rightarrow\>R3>
  </equation*>

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|0>|<cell|1>|<cell|218/91>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-4459/218>|<cell|-49>|<cell|-2401/218>>>>><long-arrow|\<rubber-rightarrow\>|<frac|4459|218>R2+R4\<rightarrow\>R4><matrix|<tformat|<table|<row|<cell|1>|<cell|169/218>|<cell|0>|<cell|91/218>>|<row|<cell|0>|<cell|1>|<cell|218/91>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|-<frac|169|218>R2+R1\<rightarrow\>R1><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|218/91>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
  </equation*>

  \;

  <\equation*>
    Solving for <matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|-13/7>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|218/91>|<cell|7/13>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>><matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  \;

  <\equation*>
    Letting t<rsub|1 >=v<rsub|3> and t<rsub|2>=v<rsub|4>,
  </equation*>

  <\equation*>
    E<rsub|872>=<around*|{|<matrix|<tformat|<table|<row|<cell|v<rsub|1>>>|<row|<cell|v<rsub|2>>>|<row|<cell|v<rsub|3>>>|<row|<cell|v<rsub|4>>>>>>
    = t<rsub|1><matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|-218/91>>|<row|<cell|1>>|<row|<cell|0>>>>>+t<rsub|2><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>>>>,t\<in\>\<b-R\>|}>=span<around*|(|<matrix|<tformat|<table|<row|<cell|13/7>>|<row|<cell|-218/91>>|<row|<cell|1>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-7/13>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>
  </equation*>

  <\equation*>
    Because rank of E<rsub|872> is 2\<nocomma\>,the geometric multiplicity
    =2\<nosymbol\>\<nosymbol\>\<nosymbol\>. Hence GM<rsub|872>=2 and
    AM<rsub|872>=2
  </equation*>
</body>

<initial|<\collection>
</collection>>