verbatimtex

\input ../preheader

\begin{document}
\pagestyle{empty}
etex

input boxes

beginfig(1);
  u := .5cm;
  h := u;
  w := 2*u;
  al := 5u;
  axl := h;
  azl := .5h;
  asl  := 2.5h;

  pair a,b,an,ax,az,as, th, po, ps,pb;
  a := (0,0);
  b := (20u,0);
  an := b-(al+1u,0);
  ax := a+(al+2u,0);
  az := ax+(axl+1u,0);
  as := az+(azl+1u,0);

  th :=(0,.5cm);
  draw a--b;
  label.lft(btex $T$ etex, a);
  pl:=7u;
  
  pair pb;
  po :=a+(2u,-2h);
  ps :=po+(3u,-2h);
  pb :=a+(3u,-6h);
  
  draw po--po+(pl,0);
  draw ps--ps+(pl,0);
  draw pb--pb+(pl,0);

  draw pb--pb-(0,-6h) dashed evenly;
  draw pb+(2u,0)--pb+(2u,6h) dashed evenly;
  draw po+(pl-u,+2h)--po+(pl-u,-4h) dashed evenly;

  label.rt(btex $P$ до сдвига etex, po+(pl,0));
  label.rt(btex $P$ после сдвига etex, ps+(pl,0));
  label.rt(btex Пропущенное вхождение $P$ etex, pb+(pl,0));

  label.top(btex $\alpha$ etex, pb+(u,+6h));
  label.top(btex $\beta$ etex, pb+(3.5u,+6h));
  label.top(btex $k-1$ etex, po+(pl-u,+2h));
  label.ulft(btex $i$ etex, po+(pl-u,0));

endfig;

beginfig(2);

  draw a--b;
  label.lft(btex $T$ etex, a);
  
  po := a+(6u,-2h);
  draw po--po+(pl,0);
  label.lft(btex $P$ etex, po);

  pair c, cd;

  c:= po + (5u,0);
  cd := c + (0,2h);

  draw c--c+(0,h)--c+(-3u,h)--c+(-3u,0);
  draw cd--cd+(0,h)--cd+(-4u,h)--cd+(-4u,0);

  draw po+(pl,2h)--po+(pl,3h);

  label.top(btex $j$ etex, po+(pl,3h));
  label.top(btex $h$ etex, cd+(0,h));
  label.bot(btex $i$ etex, c);

  label.top(btex $\alpha$ etex, c+(-1.5u,0));
  label.top(btex $\beta$ etex, cd+(-2u,0));
  
endfig;

def mybox(expr at, l, h) = draw at--at+(0,h)--at+(l,h)--at+(l,0) enddef;

beginfig(3);
  draw a--b;

  mybox(a+(u,0), 4u, 2h);
  mybox(a+(7u,0), 4u, 2h);
  mybox(a+(13u,0), 4u, 2h);
  mybox(a+(14.5u,0), 2u, h);
  
endfig;

beginfig(4);
  draw a--b;
  
  pair q[];
  q1:=a+(2u,0);
  q1len:=10u;
  q2:=q1+(q1len-4u,0);
  q2len:=8u;

  mybox(q1,q1len,2u);
  mybox(q2,q2len,1.5u);

  label.bot(btex $j'-M(j')+1$ etex, q1);
  label.bot(btex $j'$ etex, q1+(q1len,0));
  label.bot(btex $j-M(j)+1$ etex, q2);
  label.bot(btex $j$ etex, q2+(q2len,0));
endfig;

% Скопировано из zblocks.mp

beginfig(5);

  draw a--b;
  
%  h := .5h;
  pl := 7u;

  pair po, ps;

  po := a+(7u,-2h);
  ps := po + (3u,-2h);

  draw po--po+(pl,0);
  draw ps--ps+(pl,0);
  draw po+(pl,2h)--po+(pl,3h)--po+(pl-2u,3h)--po+(pl-2u,2h);
  draw po+(pl,0)--po+(pl,h)--po+(pl-2u,h)--po+(pl-2u,0);
  draw po+(pl-5u,0)--po+(pl-5u,h)--po+(pl-3u,h)--po+(pl-3u,0);
  draw ps+(pl-5u,0)--ps+(pl-5u,h)--ps+(pl-3u,h)--ps+(pl-3u,0);

  label.lft(btex $T$ etex, a);
  label.lft(btex $P$ до сдвига etex, po-(1u,0));
  label.lft(btex $P$ после сдвига etex, ps-(1u,0));

  label.top(btex $\beta$ etex, po+(pl-1u,0));
  label.top(btex $\beta'$ etex, po+(pl-4u,0));
  label.top(btex $\beta'$ etex, ps+(pl-4u,0));
  label.top(btex $\beta$ etex, po+(pl-1u,2h));
  label.ulft(btex $x$ etex, po+(pl-2u,2h));
  label.ulft(btex $y$ etex, po+(pl-2u,0));
  label.ulft(btex $z$ etex, po+(pl-5u,0));
  label.ulft(btex $z$ etex, ps+(pl-5u,0));
  
endfig;

beginfig(6);

  draw a--b;
  
  pair po, ps, pm;
  pl := 10u;

  po := a+(2u,-2h);
  ps := po + (7u,-2h);
  pm := ps + (-4u,-2h);

  draw po--po+(pl,0);
  draw ps--ps+(pl,0);
  draw pm--pm+(pl,0);
  draw po+(pl,2h)--po+(pl,3h)--po+(pl-2u,3h)--po+(pl-2u,2h);
  draw po+(pl,0)--po+(pl,h)--po+(pl-2u,h)--po+(pl-2u,0);
  draw po+(pl-9u,0)--po+(pl-9u,h)--po+(pl-7u,h)--po+(pl-7u,0);
  draw ps+(pl-9u,0)--ps+(pl-9u,h)--ps+(pl-7u,h)--ps+(pl-7u,0);

  draw ps+(pl,0)--ps+(pl,4h) dashed evenly;
  draw pm+(pl,0)--pm+(pl,6h) dashed evenly;

  draw pm+(pl-5u,0)--pm+(pl-5u,h)--pm+(pl-3u,h)--pm+(pl-3u,0) dashed evenly;
  draw pm+(pl-9u,0)--pm+(pl-9u,h)--pm+(pl-7u,h)--pm+(pl-7u,0);
  draw pm+(pl,0)--pm+(pl,h)--pm+(pl-2u,h)--pm+(pl-2u,0);

  label.lft(btex $T$ etex, a);

  label.top(btex $\beta$ etex, po+(pl-1u,0));
  label.top(btex $\beta$ etex, pm+(pl-1u,0));
  label.top(btex $\beta'$ etex, po+(pl-8u,0));
  label.top(btex $\beta'$ etex, ps+(pl-8u,0));
  label.top(btex $\beta'$ etex, pm+(pl-8u,0));
  label.top(btex $\beta''$ etex, pm+(pl-4u,0));
  label.top(btex $\beta$ etex, po+(pl-1u,2h));
  label.ulft(btex $x$ etex, po+(pl-2u,2h));
  label.ulft(btex $y$ etex, po+(pl-2u,0));
  label.ulft(btex $y$ etex, pm+(pl-2u,0));
  label.ulft(btex $z$ etex, po+(pl-9u,0));
  label.ulft(btex $z$ etex, ps+(pl-9u,0));
  label.ulft(btex $z$ etex, pm+(pl-9u,0));
  label.ulft(btex $x$ etex, pm+(pl-5u,0));
  label.lrt(btex $k$ etex, a + (2u+pl,0));
  label.lrt(btex $k'$ etex, ps + (pl,4h));
  label.lrt(btex $l$ etex, pm + (pl,6h));
  
endfig;

end