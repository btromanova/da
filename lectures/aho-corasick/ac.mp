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

  pair r, v, nv,vx, vxa, vxb, w;

  h:=3u;
  
  r := (5u,0);
  v := r+(-.5h,-1.5h);
  nv := r+(h,-h);
  vx := v+(-.5h,-h);
  vxa := vx+(-.5h,-h);
  vxb := vx+(.5h,-h);
  w := nv + (.5h, -h);
  

  draw r--v dashed evenly;
  draw r--nv dashed evenly;
  draw v--vx;
  draw vx--vxa;
  draw vx--vxb;
  drawarrow v--nv dashed evenly;
  draw nv--w;
  drawarrow vx--w dashed evenly;
  
  label.ulft(btex $x$ etex, .5(v+vx));
  label.urt(btex $x$ etex, .5(nv+w));
  dotlabel.top(btex $r$ etex, r);
  dotlabel.rt(btex $n_{v'}$ etex, nv);
  dotlabel.ulft(btex $v'$ etex, v);
  dotlabel.ulft(btex $v$ etex, vx);
  dotlabel.urt(btex $w'$ etex, w);
  
  pickup pencircle scaled 3pt;
  drawdot vxa;
  drawdot vxb;
  
endfig;

def mybox(expr at, l, h) = draw at--at+(0,h)--at+(l,h)--at+(l,0) enddef;

beginfig(3);
  
  draw a--b;
  
  alphaheight := 2u;
  betaheight := 1.5u;
  alphalength := 8u;
  betalength := 2u;
  
  mybox(a, alphalength, alphaheight);
  mybox(b-(alphalength,0), alphalength, alphaheight);
  mybox(a, betalength, betaheight);
  mybox(a+(alphalength-betalength,0), betalength, betaheight);
  mybox(b-(betalength,0), betalength, betaheight);

  label.bot(btex $sp_k$ etex, a+(alphalength,0));
  label.bot(btex $k$ etex, b);
  label.bot(btex $k+1$ etex, b+(1.2u,0));
  label.top(btex $x$ etex, b+(.5u,0));
  label.top(btex $x$ etex, a+(betalength+.5u,0));
  label(btex $\alpha$ etex, a+(.5alphalength, .5alphaheight));
  label(btex $\alpha'$ etex, b+(-.5alphalength, .5alphaheight));
  label(btex $\overline\beta$ etex, a+(.5betalength, .5betaheight));
  label(btex $\overline\beta$ etex, a+(alphalength-.5betalength, .5betaheight));
  label(btex $\overline\beta$ etex, b+(-.5betalength, .5betaheight));
endfig;

beginfig(4);
  
  draw a--b;
  
  alphaheight := 2u;
  betaheight := 1.5u;
  alphalength := 8u;
  betalength := 2u;
  
  mybox(a, alphalength, alphaheight);
  mybox(b-(alphalength,0), alphalength, alphaheight);
  mybox(a, betalength, betaheight);
%  mybox(a+(alphalength-betalength,0), betalength, betaheight);
  mybox(b-(betalength,0), betalength, betaheight);

  label.bot(btex $sp_k$ etex, a+(alphalength,0));
  label.bot(btex $k$ etex, b);
  label.bot(btex $k+1$ etex, b+(1.2u,0));
  label.top(btex $x$ etex, b+(.5u,0));
  label.top(btex $x$ etex, a+(betalength+.5u,0));
  label(btex $\alpha$ etex, a+(.5alphalength, .5alphaheight));
  label(btex $\alpha'$ etex, b+(-.5alphalength, .5alphaheight));
  label(btex $\overline\beta$ etex, a+(.5betalength, .5betaheight));
%  label(btex $\overline\beta$ etex, a+(alphalength-.5betalength, .5betaheight));
  label(btex $\overline\beta$ etex, b+(-.5betalength, .5betaheight));
endfig;

end