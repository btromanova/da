verbatimtex

\input ../preheader

\begin{document}
\pagestyle{empty}
etex

input boxes
input TEX

beginfig(1);
  pair r, v, sv, jp, d, dv, rdv, a, abc;

  u := .5cm;

  r := (5u, 0);
  v := r+(-2u,-4u);
  sv := r+(2u,-3u);
  
  draw r--v dashed evenly;
  draw r--sv dashed evenly;
  draw v--v+.7(v-r);

  jp := v + (xpart r - xpart v, ypart v - ypart r);
  draw v--jp;

  d := (jp-v);
  dv := (1u,-.25u);
  rdv := (-1u,-.85u);
  

  draw sv--sv+1.2d;
  draw sv--sv+3dv;

  drawarrow v--sv;
  
  a := sv+.4d;
  abc := sv+.9d;

  drawarrow v+d+(1u,u)--v+d+(1u,u)-.7d dashed evenly;
  drawarrow v+d+(1u,u)-.7d -- v+d+(1u,u)-.7d+.5(sv-v) dashed evenly;
  drawarrow v+d+(1u,u)-.7d+.5(sv-v) -- v+d+(1u,u)-.7d+.5(sv-v)+(abc-a) dashed evenly;
  drawarrow v+d+(1u,u)-.7d+.5(sv-v)+(abc-a) -- v+d+(1u,u)-.7d+.5(sv-v)+(abc-a)+rdv dashed evenly;

  draw a--a+2dv;
  draw abc--abc+1.5rdv;

  label.urt(btex $a$ etex, v + .15d);
  label.urt(btex $b$ etex, v + .40d);
  label.urt(btex $c$ etex, v + .65d);
  label.urt(btex $d$ etex, v + .90d);

  label.urt(btex $a$ etex, sv+.7(a-sv));
  label.urt(btex $b$ etex, a+.5(abc-a));
  label.urt(btex $c$ etex, a+.8(abc-a));
  label.ulft(btex $d$ etex, abc+.5(1.5rdv));
  
  label.llft(btex $\gamma$ etex, v + .50d);

  dotlabel.top(btex $r$ etex, r);
  dotlabel.lft(btex $v$ etex, v);
  dotlabel.urt(btex $s(v)$ etex, sv);
  label.bot(btex $j-1$ etex, jp);

  pickup pencircle scaled 3pt;
  drawdot a;
  drawdot abc;
 
endfig;

beginfig(2);

  pair x,ve,zb,s,za,zabc,zabcdef,zabcdefghyx;

  x := r+.3(v-r);
  
  draw r--x;
  draw x--v dashed evenly;
  draw r--sv dashed evenly;

  draw x--x+.3(sv-r);
  ve := v+2(v-r);
  draw v--ve;
  draw v--v+.5(sv-r);
  drawarrow v--sv dashed evenly;

  draw sv--sv+2(sv-r);

  draw sv--sv+(x-r);
  
  dotlabel.top(btex $r$ etex, r);
  dotlabel.lft(btex $v$ etex, v);
  dotlabel.urt(btex $s(v)$ etex, sv);
  
  label.ulft(btex $x$ etex, .5[r,x]);
  label.ulft(btex $\alpha$ etex, .5[x,v]);
  label.urt(btex $\alpha$ etex, .5[r,sv]);

  zb:=.15[v,ve];
  s:=.08(ve-v);
  label.ulft(btex $z$ etex, zb);
  label.ulft(btex $a$ etex, zb+s);
  label.ulft(btex $b$ etex, zb+2s);
  label.ulft(btex $c$ etex, zb+3s);
  label.ulft(btex $d$ etex, zb+4s);
  label.ulft(btex $e$ etex, zb+5s);
  label.ulft(btex $f$ etex, zb+6s);
  label.ulft(btex $g$ etex, zb+7s);
  label.ulft(btex $h$ etex, zb+8s);
  label.ulft(btex $y$ etex, zb+9s);
  
  za := sv + .5(sv-r);
  zabc := za + .5(sv-r);
  zabcdef := zabc + .5(v-r);
  
  draw za--za+(x-r);
  draw zabc--zabcdef;
  draw zabcdef--zabcdef+(sv-r);
  zabcdefghyx:=zabcdef + (-3u,-2u);
  draw zabcdef--zabcdefghyx;
  
  label.urt(btex $z$ etex, .3[sv,za]);
  label.urt(btex $a$ etex, .7[sv,za]);
  label.urt(btex $b$ etex, .3[za,zabc]);
  label.urt(btex $c$ etex, .7[za,zabc]);
  label.ulft(btex $d$ etex, .2[zabc,zabcdef]);
  label.ulft(btex $e$ etex, .5[zabc,zabcdef]);
  label.ulft(btex $f$ etex, .9[zabc,zabcdef]);
  
  label.ulft(btex $g$ etex, .2[zabcdef,zabcdefghyx]);
  label.ulft(btex $h$ etex, .4[zabcdef,zabcdefghyx]);
  label.ulft(btex $y$ etex, .6[zabcdef,zabcdefghyx]);
  label.ulft(btex $x$ etex, .8[zabcdef,zabcdefghyx]);
  
  drawarrow .8[zabcdef,zabcdefghyx]-(0,1u)--.8[zabcdef,zabcdefghyx];
  label.bot(btex $j$ etex, .8[zabcdef,zabcdefghyx]-(0,1u));
  
  drawarrow zb+9s-(0,1u) -- zb+9s;
  label.bot(btex $j-1$ etex, zb+9s-(0,1u));
  
  pickup pencircle scaled 3pt;
  drawdot x;
  drawdot za;
  drawdot zabc;
  drawdot zabcdef;

endfig;

beginfig(3);
  pair x;
  x := r+.3(v-r);
  draw r--x;
  draw x--v dashed evenly;
  draw r--sv dashed evenly;
  draw v--v+.5(v-r);
  draw v--v+.5(sv-r);
  drawarrow v--sv dashed evenly;
  draw sv--sv+.5(sv-r);
  draw sv--sv+(x-r);
  drawarrow v--sv dashed evenly;
  
  dotlabel.top(btex $r$ etex, r);
  dotlabel.lft(btex $v$ etex, v);
  dotlabel.urt(btex $s(v)$ etex, sv);
  label.ulft(btex $x$ etex, .5[r,x]);
  label.ulft(btex $\alpha$ etex, .5[x,v]);
  label.urt(btex $\alpha$ etex, .5[r,sv]);
  
endfig;

beginfig(4);
  pair ls[];
  pair rs[];
  pair s[];

  pair lx, lb, ld, lg, lh, rb, rc, rd, re, rg, rh, ri;
  
  s1 := .5(-u,-2u);
  s2 := .5(u,-2u);

  r := (12u,0);
  
  for i:=0 upto 11 :
    ls[i] := r + i*s1;
    rs[i] := r + i*s2;
  endfor

  draw r--ls[11];
  draw r--rs[11];
  
  i:=0;
  label.ulft(btex $x$ etex, .5[ls[i],ls[i+1]]); lx:=.8[ls[i],ls[i+1]]; i:=i+1;
  label.ulft(btex $a$ etex, .5[ls[i],ls[i+1]]); i:=i+1;
  label.ulft(btex $b$ etex, .5[ls[i],ls[i+1]]); lb:=.8[ls[i],ls[i+1]]; i:=i+1;
  label.ulft(btex $c$ etex, .5[ls[i],ls[i+1]]); i:=i+1;
  label.ulft(btex $d$ etex, .5[ls[i],ls[i+1]]); ld:=.8[ls[i],ls[i+1]]; i:=i+1;
  label.ulft(btex $e$ etex, .5[ls[i],ls[i+1]]); i:=i+1;
  label.ulft(btex $f$ etex, .5[ls[i],ls[i+1]]); i:=i+1;
  label.ulft(btex $g$ etex, .5[ls[i],ls[i+1]]); lg:=.8[ls[i],ls[i+1]]; i:=i+1;
  label.ulft(btex $h$ etex, .5[ls[i],ls[i+1]]); lh:=.8[ls[i],ls[i+1]]; i:=i+1;
  label.ulft(btex $i$ etex, .5[ls[i],ls[i+1]]); i:=i+1;
  label.ulft(btex $j$ etex, .5[ls[i],ls[i+1]]); i:=i+1;

  i:=0;
  label.urt(btex $a$ etex, .5[rs[i],rs[i+1]]); i:=i+1;
  label.urt(btex $b$ etex, .5[rs[i],rs[i+1]]); rb:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $c$ etex, .5[rs[i],rs[i+1]]); rc:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $d$ etex, .5[rs[i],rs[i+1]]); rd:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $e$ etex, .5[rs[i],rs[i+1]]); re:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $f$ etex, .5[rs[i],rs[i+1]]); i:=i+1;
  label.urt(btex $g$ etex, .5[rs[i],rs[i+1]]); rg:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $h$ etex, .5[rs[i],rs[i+1]]); rh:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $i$ etex, .5[rs[i],rs[i+1]]); ri:=.8[rs[i],rs[i+1]]; i:=i+1;
  label.urt(btex $j$ etex, .5[rs[i],rs[i+1]]); i:=i+1;

  drawarrow lb--rb dashed evenly;
  drawarrow ld--rd dashed evenly;
  drawarrow lg--rg dashed evenly;
  drawarrow lh--rh dashed evenly;
  drawarrow lx..lx+(-.5u,1.5u)..r dashed evenly;

  draw lx--lx+s2;
  draw lb--lb+s2;
  draw ld--ld+s2;
  draw lg--lg+.5s2;
  draw lh--lh+s2;

  draw rb--rb+s1;
  draw rc--rc+s1;
  draw rd--rd+s1;
  draw re--re+s1;
  draw rg--rg+.5s1;
  draw rh--rh+s1;
  draw ri--ri+s1;
  
  pickup pencircle scaled 3pt;
  drawdot r;
  drawdot lx;
  drawdot lb;
  drawdot ld;
  drawdot lg;
  drawdot lh;
  drawdot rb;
  drawdot rc;
  drawdot rd;
  drawdot re;
  drawdot rg;
  drawdot rh;
  drawdot ri;
endfig;

end