verbatimtex

\input ../preheader

\begin{document}
\pagestyle{empty}
etex

input boxes
input btrees;

beginfig(1); 
  tree.s(btex $M$ etex) 
  (tree(btex $D$ $H$ etex) 
    (
      leaf(btex $B$ $C$ etex),
      leaf(btex $F$ $G$ etex),
      leaf.JKL(btex $J$ $K$ $L$ etex)
      ), 
    tree(btex $Q$ $T$ $X$ etex)
    (
      leaf.NP(btex $N$ $P$ etex),
      leaf(btex $R$ $S$ etex),
      leaf(btex $V$ $W$ etex),
      leaf(btex $Y$ $Z$ etex
        )));

  JKL.e+(30,0)=NP.w;

  boxit.root(btex $\id{root}[T]$ etex);
  root.s+(20,-20)=s.n;
  % drawarrow a.c--b.n cutbefore bpath a shifted(0,2pt) cutafter bpath b;
  % drawarrow root.c--s.c cutbefore bpath s cutafter bpath root;
  
  drawtrees(s);
  drawunboxed(root);
  drawarrow root.c--s.c cutbefore bpath root cutafter bpath s;
  
endfig;

beginfig(2);
  tree.s(btex 1000 ключей etex)
  (
    leaf.e(btex 1000 etex),
    tree.a(btex 1000 etex)(
      leaf(btex 1000 etex),
      leaf.c(btex 1000 etex),
      leaf.d(btex 1000 etex)
      ),
    leaf.b(btex 1000 etex)
    );

%  sube.edge:="drawwood";
%  sube.boxed:="no";

  e.e+(30,0)=a.w;
  
  boxit.t1(btex $\cdots$ 998 узлов $\cdots$ etex);
  a.e+(10,0)=t1.w;
  t1.e+(10,0)=b.w;
  a.e+(100,0)=b.w;
  
  c.e+(10,0)=t2.w;
  t2.e+(10,0)=d.w;
  c.e+(100,0)=d.w;
  
  boxit.root(btex $\id{root}[T]$ etex);
  root.s+(20,-20)=s.n;
 
  boxit.t2(btex $\cdots$ 998 узлов $\cdots$ etex);

  
  boxjoin(xpart(a.c)=xpart(b.c));
  boxit.l1(btex 1 узел,etex);
  boxit.l1a(btex 1000 ключей etex);
  boxit.l2(btex 1001 узел, etex);
  boxit.l2a(btex 1 001 000 ключей etex);
  boxit.l3(btex 1 002 001 узел, etex);
  boxit.l3a(btex 1 002 001 000 ключей etex);
  
  ypart l1.n =ypart s.n;
  l1.s=l1a.n;
  ypart(l2.n)=ypart(a.n);
  l2.s=l2a.n;
  ypart(l3.n)=ypart(c.n);
  l3.s=l3a.n;

  xpart(l2.w)-25=xpart b.e;
  
  drawtrees(s);
  drawunboxed(t1,t2,root, l1, l1a, l2, l2a, l3, l3a);
  drawarrow root.c--s.c cutbefore bpath root cutafter bpath s;
  drawwood(e);
  drawwood(b);
  
endfig;

beginfig(3);
  tree.s(btex 1 etex)
  (
    tree.a(btex $t-1$ etex)
    (
      tree.b(btex $t-1$ etex)( leaf(btex $t-1$ etex), leaf.n1(btex \ldots etex), leaf(btex $t-1$ etex)),
      leaf.n3(btex \ldots etex),
      tree.c(btex $t-1$ etex)( leaf(btex $t-1$ etex), leaf.n2(btex \ldots etex), leaf(btex $t-1$ etex))
      ),
    tree.f(btex $t-1$ etex)
    (
      tree.d(btex $t-1$ etex)( leaf(btex $t-1$ etex), leaf.n4(btex \ldots etex), leaf(btex $t-1$ etex)),
      leaf.n6(btex \ldots etex),
      tree.e(btex $t-1$ etex)( leaf(btex $t-1$ etex), leaf.n5(btex \ldots etex), leaf.q(btex $t-1$ etex))
      )
    );
  
  boxit.l0(btex $0$ etex);
  boxit.u0(btex $1$ etex);

  boxit.l1(btex $1$ etex);
  boxit.u1(btex $2$ etex);

  boxit.l2(btex $2$ etex);
  boxit.u2(btex $2t$ etex);

  boxit.l3(btex $3$ etex);
  boxit.u3(btex $2t^2$ etex);
  

  l0.se=u0.sw;
  l1.se=u1.sw;
  l2.se=u2.sw;
  l3.se=u3.sw;

  xpart l0.c = xpart l1.c;
  xpart l0.c = xpart l2.c;
  xpart l0.c = xpart l3.c;

  ypart l0.n = ypart s.n;
  ypart l1.n = ypart a.n;
  ypart l2.n = ypart b.n;
  ypart l3.n = ypart q.n;

  xpart l3.nw = xpart q.ne + 10;

%  sube.edge:="drawwood";
%  sube.boxed:="no";
  
  n1.edge := "drawnothing";
  n1.boxed := "no";
  
  n2.edge := "drawnothing";
  n2.boxed := "no";
  
  n3.edge := "drawnothing";
  n3.boxed := "no";
  
  n4.edge := "drawnothing";
  n4.boxed := "no";
  
  n5.edge := "drawnothing";
  n5.boxed := "no";
  
  n6.edge := "drawnothing";
  n6.boxed := "no";
  
  boxit.root(btex $\id{root}[T]$ etex);
  root.s+(20,-20)=s.n;

  drawtrees(s);
  drawwood(a);
  drawwoods(b);
  drawwoods(c);
  drawwoods(d);
  drawwoods(e);
  drawwood(f);
  drawunboxed(l0,l1,l2,l3,u0,u1,u2,u3,root);
  drawarrow root.c--s.c cutbefore bpath root cutafter bpath s;

endfig;

beginfig(4)
  boxjoin(a.ne=b.nw);
  boxit.P(btex $P$ etex);
  boxit.Q(btex $Q$ etex);
  boxit.R(btex $R$ etex);
  boxit.S(btex $S$ etex);
  boxit.T(btex $T$ etex);
  boxit.U(btex $U$ etex);
  boxit.V(btex $V$ etex);
  
  boxjoin();
  boxit.t1(btex $T_1$ etex); t1.n = P.sw-(0,20);
  boxit.t2(btex $T_2$ etex); t2.n = P.se-(0,20); 
  boxit.t3(btex $T_3$ etex); t3.n = R.sw-(0,20);
  boxit.t4(btex $T_4$ etex); t4.n = S.sw-(0,20);
  boxit.t5(btex $T_5$ etex); t5.n = T.sw-(0,20);
  boxit.t6(btex $T_6$ etex); t6.n = U.sw-(0,20);
  boxit.t7(btex $T_7$ etex); t7.n = V.sw-(0,20);
  boxit.t8(btex $T_8$ etex); t8.n = V.se-(0,20);

  boxjoin(a.ne=b.nw);
  boxit.N(btex $\cdots N$ etex);
  boxit.W(btex $W \cdots $ etex);
  boxjoin();

  boxit.y();
  y.sw=P.sw+(-5,-5);
  y.nw=P.nw+(-5,5);
  y.ne=V.ne+(5,5);
  y.se=V.se+(5,-5);
  boxit.yname(btex $y=c_i[x]$ etex);
  yname.sw = y.nw;
  
  
  boxit.x();
  x.sw=N.sw+(-5,-5);
  x.nw=N.nw+(-5,5);
  x.ne=W.ne+(5,5);
  x.se=W.se+(5,-5);
  boxit.xname(btex $x$ etex);
  xname.sw = x.nw;
    
  S.n = N.se-(0,55);

  drawunboxed(P,Q,R,S,T,U,V,N,W);
  drawunboxed(t1,t2,t3,t4,t5,t6,t7,t8);
  drawunboxed(xname,yname);
  drawboxed(x,y);
  
  label.urt(btex $key_{i-1}[x]$ etex rotated 45, N.ne+(-15,5));
  label.urt(btex $key_{i}[x]$ etex rotated 45, W.nw+(5,5));

  drawarrow P.sw--t1.n;
  drawarrow P.se--t2.n;
  drawarrow R.sw--t3.n;
  drawarrow S.sw--t4.n;
  drawarrow T.sw--t5.n;
  drawarrow U.sw--t6.n;
  drawarrow V.sw--t7.n;
  drawarrow V.se--t8.n;

  drawarrow N.se--y.n;
endfig;

beginfig(5)
  boxjoin(a.ne=b.nw);
  boxit.P(btex $P$ etex);
  boxit.Q(btex $Q$ etex);
  boxit.R(btex $R$ etex);
  boxjoin(a.ne=b.nw);
%  boxit.S(btex $S$ etex);
  boxit.T(btex $T$ etex);
  boxit.U(btex $U$ etex);
  boxit.V(btex $V$ etex);

%  R.ne=T.nw-(30,0);
  
  boxjoin();
  boxit.t1(btex $T_1$ etex); t1.n = P.sw-(0,20);
  boxit.t2(btex $T_2$ etex); t2.n = P.se-(0,20); 
  boxit.t3(btex $T_3$ etex); t3.n = R.sw-(0,20);
  boxit.t4(btex $T_4$ etex); t4.n = R.se-(0,20);
  boxit.t5(btex $T_5$ etex); t5.n = T.sw-(0,20);
  boxit.t6(btex $T_6$ etex); t6.n = U.sw-(0,20);
  boxit.t7(btex $T_7$ etex); t7.n = V.sw-(0,20);
  boxit.t8(btex $T_8$ etex); t8.n = V.se-(0,20);

  boxjoin(a.ne=b.nw);
  boxit.N(btex $\cdots N$ etex);
  boxit.S(btex $S$ etex);
  boxit.W(btex $W \cdots $ etex);
  boxjoin();

  xpart R.e = xpart N.e-10;
  xpart T.w = xpart W.w+10;

  boxit.y();
  y.sw=P.sw+(-5,-5);
  y.nw=P.nw+(-5,5);
  y.ne=R.ne+(5,5);
  y.se=R.se+(5,-5);
  boxit.yname(btex $y=c_i[x]$ etex);
  yname.se = y.n;
  
  boxit.u();
  u.sw=T.sw+(-5,-5);
  u.nw=T.nw+(-5,5);
  u.ne=V.ne+(5,5);
  u.se=V.se+(5,-5);
  boxit.uname(btex $z=c_{i+1}[x]$ etex);
  uname.sw = u.n;

  
  boxit.x();
  x.sw=N.sw+(-5,-5);
  x.nw=N.nw+(-5,5);
  x.ne=W.ne+(5,5);
  x.se=W.se+(5,-5);
  boxit.xname(btex $x$ etex);
  xname.sw = x.nw;
    
  ypart R.ne = ypart N.se- 55;

  drawunboxed(P,Q,R,T,U,V,N,S,W);
  drawunboxed(t1,t2,t3,t4,t5,t6,t7,t8);
  drawunboxed(xname,yname,uname);
  drawboxed(x,y,u);
  
  label.urt(btex $key_{i-1}[x]$ etex rotated 45, N.ne+(-15,5));
  label.urt(btex $key_{i+1}[x]$ etex rotated 45, W.nw+(5,5));
  label.urt(btex $key_{i}[x]$ etex rotated 45, S.n+(-5,5));

  drawarrow P.sw--t1.n;
  drawarrow P.se--t2.n;
  drawarrow R.sw--t3.n;
  drawarrow R.se--t4.n;
  drawarrow T.sw--t5.n;
  drawarrow U.sw--t6.n;
  drawarrow V.sw--t7.n;
  drawarrow V.se--t8.n;

  drawarrow N.se--y.n;
  drawarrow W.sw--u.n;
endfig;

beginfig(6)
  boxjoin(a.ne=b.nw);
  boxit.A(btex $A$ etex);
  boxit.D(btex $D$ etex);
  boxit.F(btex $F$ etex);
  boxit.H(btex $H$ etex);
  boxit.L(btex $L$ etex);
  boxit.N(btex $N$ etex);
  boxit.P(btex $P$ etex);
  
  boxjoin();
  boxit.t1(btex $T_1$ etex); t1.n = A.sw-(0,20);
  boxit.t2(btex $T_2$ etex); t2.n = A.se-(0,20); 
  boxit.t3(btex $T_3$ etex); t3.n = F.sw-(0,20);
  boxit.t4(btex $T_4$ etex); t4.n = H.sw-(0,20);
  boxit.t5(btex $T_5$ etex); t5.n = L.sw-(0,20);
  boxit.t6(btex $T_6$ etex); t6.n = N.sw-(0,20);
  boxit.t7(btex $T_7$ etex); t7.n = P.sw-(0,20);
  boxit.t8(btex $T_8$ etex); t8.n = P.se-(0,20);

  boxjoin();
  boxit.root(btex $\id{root}[T]$ etex);

  boxit.r();
  r.sw=A.sw+(-5,-5);
  r.nw=A.nw+(-5,5);
  r.ne=P.ne+(5,5);
  r.se=P.se+(5,-5);
  boxit.rname(btex $r$ etex);
  rname.sw = r.nw;
    
  H.n = root.se-(0,55);

  drawunboxed(A,D,F,H,L,N,P,root);
  drawunboxed(t1,t2,t3,t4,t5,t6,t7,t8);
  drawunboxed(rname);
  drawboxed(r);
  
  drawarrow A.sw--t1.n;
  drawarrow A.se--t2.n;
  drawarrow F.sw--t3.n;
  drawarrow H.sw--t4.n;
  drawarrow L.sw--t5.n;
  drawarrow N.sw--t6.n;
  drawarrow P.sw--t7.n;
  drawarrow P.se--t8.n;

  drawarrow root.s--r.n;
endfig;

beginfig(7)
  boxjoin(a.ne=b.nw);
  boxit.A(btex $A$ etex);
  boxit.D(btex $D$ etex);
  boxit.F(btex $F$ etex);
  boxjoin(a.ne=b.nw);
%  boxit.S(btex $S$ etex);
  boxit.L(btex $L$ etex);
  boxit.N(btex $N$ etex);
  boxit.P(btex $P$ etex);

%  R.ne=T.nw-(30,0);
  
  boxjoin();
  boxit.t1(btex $T_1$ etex); t1.n = A.sw-(0,20);
  boxit.t2(btex $T_2$ etex); t2.n = A.se-(0,20); 
  boxit.t3(btex $T_3$ etex); t3.n = F.sw-(0,20);
  boxit.t4(btex $T_4$ etex); t4.n = F.se-(0,20);
  boxit.t5(btex $T_5$ etex); t5.n = L.sw-(0,20);
  boxit.t6(btex $T_6$ etex); t6.n = N.sw-(0,20);
  boxit.t7(btex $T_7$ etex); t7.n = P.sw-(0,20);
  boxit.t8(btex $T_8$ etex); t8.n = P.se-(0,20);

  boxjoin(a.ne=b.nw);
  boxit.H(btex $H$ etex);
  boxjoin();

  xpart F.e = xpart H.s-10;
  xpart L.w = xpart H.s+10;

  boxit.r();
  r.sw=A.sw+(-5,-5);
  r.nw=A.nw+(-5,5);
  r.ne=F.ne+(5,5);
  r.se=F.se+(5,-5);
  boxit.rname(btex $r$ etex);
  rname.se = r.n;
  
  boxit.u();
  u.sw=L.sw+(-5,-5);
  u.nw=L.nw+(-5,5);
  u.ne=P.ne+(5,5);
  u.se=P.se+(5,-5);  
  
  boxit.x();
  x.sw=H.sw+(-5,-5);
  x.nw=H.nw+(-5,5);
  x.ne=H.ne+(5,5);
  x.se=H.se+(5,-5);
  boxit.xname(btex $s$ etex);
  xname.sw=x.n;

  ypart F.ne = ypart H.se- 55;
  
  boxit.root(btex $\id{root}[T]$ etex);
  x.n = root.se-(0,25);

  drawunboxed(A,D,F,L,N,P,H);
  drawunboxed(t1,t2,t3,t4,t5,t6,t7,t8);
  drawunboxed(rname,xname,root);
  drawboxed(r,u,x);
  
  drawarrow A.sw--t1.n;
  drawarrow A.se--t2.n;
  drawarrow F.sw--t3.n;
  drawarrow F.se--t4.n;
  drawarrow L.sw--t5.n;
  drawarrow N.sw--t6.n;
  drawarrow P.sw--t7.n;
  drawarrow P.se--t8.n;

  drawarrow H.sw--r.n;
  drawarrow H.se--u.n;
  
  drawarrow root.s--x.n;
endfig;

beginfig(8)
  boxjoin(a.ne=b.nw);
  boxit.G(btex $G$ etex);
  boxit.M(btex $M$ etex);
  boxit.P(btex $P$ etex);
  boxit.X(btex $X$ etex);

  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.ACDE(btex $A$ $C$ $D$ $E$ etex);
  boxit.JK(btex $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  boxit.RSTUV(btex $R$ $S$ $T$ $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  boxit.GMPX();
  GMPX.nw=G.nw;
  GMPX.sw=G.sw;
  GMPX.ne=X.ne;
  GMPX.se=X.se;

  xpart GMPX.s = .5(xpart ACDE.w + xpart.YZ.e);
  ypart GMPX.s = ypart ACDE.n + 20;
  
  drawboxed(ACDE,JK,NO,RSTUV,YZ);
  drawunboxed(G,M,P,X);
  drawboxed(GMPX);

  drawarrow G.sw+(2,2)--ACDE.n;
  drawarrow G.se+(0,2)--JK.n;
  drawarrow M.se+(0,2)--NO.n;
  drawarrow P.se+(0,2)--RSTUV.n;
  drawarrow X.se+(-2,2)--YZ.n;    
endfig;

beginfig(9)
  boxjoin(a.ne=b.nw);
  boxit.G(btex $G$ etex);
  boxit.M(btex $M$ etex);
  boxit.P(btex $P$ etex);
  boxit.X(btex $X$ etex);

  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.ABCDE(btex $A$ $B$ $C$ $D$ $E$ etex);
  boxit.JK(btex $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  boxit.RSTUV(btex $R$ $S$ $T$ $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  boxit.GMPX();
  GMPX.nw=G.nw;
  GMPX.sw=G.sw;
  GMPX.ne=X.ne;
  GMPX.se=X.se;

  xpart GMPX.s = .5(xpart ABCDE.w + xpart.YZ.e);
  ypart GMPX.s = ypart ABCDE.n + 20;
  
  fixsize(ABCDE,JK,NO,RSTUV,YZ,G,M,P,X,GMPX);
  fixpos(ABCDE,JK,NO,RSTUV,YZ,G,M,P,X,GMPX);
  fill bpath JK withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath RSTUV withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  fill bpath GMPX withcolor .8white; 
  
  drawboxed(ABCDE,JK,NO,RSTUV,YZ);
  drawunboxed(G,M,P,X);
  drawboxed(GMPX);

  drawarrow G.sw+(2,2)--ABCDE.n;
  drawarrow G.se+(0,2)--JK.n;
  drawarrow M.se+(0,2)--NO.n;
  drawarrow P.se+(0,2)--RSTUV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
endfig;

beginfig(10)
  boxjoin(a.ne=b.nw);
  boxit.G(btex $G$ etex);
  boxit.M(btex $M$ etex);
  boxit.P(btex $P$ etex);
  boxit.T(btex $T$ etex);
  boxit.X(btex $X$ etex);

  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.ABCDE(btex $A$ $B$ $C$ $D$ $E$ etex);
  boxit.JK(btex $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  boxit.GMPTX();
  GMPTX.nw=G.nw;
  GMPTX.sw=G.sw;
  GMPTX.ne=X.ne;
  GMPTX.se=X.se;

  xpart GMPTX.s = .5(xpart ABCDE.w + xpart.YZ.e);
  ypart GMPTX.s = ypart ABCDE.n + 20;
  
  fixsize(ABCDE,JK,NO,QRS,UV,YZ,G,M,P,T,X,GMPTX);
  fixpos(ABCDE,JK,NO,QRS,UV,YZ,G,M,P,T,X,GMPTX);
  fill bpath ABCDE withcolor .8white; 
  fill bpath JK withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  
  drawboxed(ABCDE,JK,NO,QRS,UV,YZ);
  drawunboxed(G,M,P,T,X);
  drawboxed(GMPTX);

  drawarrow G.sw+(2,2)--ABCDE.n;
  drawarrow G.se+(0,2)--JK.n;
  drawarrow M.se+(0,2)--NO.n;
  drawarrow P.se+(0,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
endfig;

beginfig(11)

  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.G(btex $G$ etex); boxit.M(btex $M$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.GM(); GM.nw=G.nw; GM.se=M.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart GM.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.ABCDE(btex $A$ $B$ $C$ $D$ $E$ etex);
  boxit.JKL(btex $J$ $K$ $L$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart GM.w + xpart.TX.e);
  ypart P.s = ypart GM.n + 20;

  xpart GM.s = .5(xpart ABCDE.w+xpart NO.e);
  ypart GM.s = ypart ABCDE.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(ABCDE,JKL,NO,QRS,UV,YZ,G,M,P,T,X,GM,TX);
  fixpos(ABCDE,JKL,NO,QRS,UV,YZ,G,M,P,T,X,GM,TX);
  fill bpath ABCDE withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  
  drawboxed(ABCDE,JKL,NO,QRS,UV,YZ);
  drawunboxed(G,M,T,X);
  drawboxed(GM,TX,P);

  drawarrow G.sw+(2,2)--ABCDE.n;
  drawarrow G.se+(0,2)--JKL.n;
  drawarrow M.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--GM.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(12)

  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.C(btex $C$ etex); boxit.G(btex $G$ etex); boxit.M(btex $M$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.CGM(); CGM.nw=C.nw; CGM.se=M.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart CGM.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$ etex);
  boxit.DEF(btex $D$ $E$ $F$ etex);
  boxit.JKL(btex $J$ $K$ $L$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart CGM.w + xpart.TX.e);
  ypart P.s = ypart CGM.n + 20;

  xpart CGM.s = .5(xpart AB.w+xpart NO.e);
  ypart CGM.s = ypart AB.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(AB,DEF,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  fixpos (AB,DEF,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  fill bpath TX withcolor .8white; 
  fill bpath P withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  fill bpath JKL withcolor .8white; 
  
  drawboxed(AB,DEF,JKL,NO,QRS,UV,YZ);
  drawunboxed(C,G,M,T,X);
  drawboxed(CGM,TX,P);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--DEF.n;
  drawarrow G.se+(0,2)--JKL.n;
  drawarrow M.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--CGM.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(13)

  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.C(btex $C$ etex); boxit.G(btex $G$ etex); boxit.M(btex $M$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.CGM(); CGM.nw=C.nw; CGM.se=M.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart CGM.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$ etex);
  boxit.DEF(btex $D$ $E$ $F$ etex);
  boxit.JKL(btex $J$ $K$ $L$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart CGM.w + xpart.TX.e);
  ypart P.s = ypart CGM.n + 20;

  xpart CGM.s = .5(xpart AB.w+xpart NO.e);
  ypart CGM.s = ypart AB.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(AB,DEF,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  fixpos (AB,DEF,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  
  drawboxed(AB,DEF,JKL,NO,QRS,UV,YZ);
  drawunboxed(C,G,M,T,X);
  drawboxed(CGM,TX,P);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--DEF.n;
  drawarrow G.se+(0,2)--JKL.n;
  drawarrow M.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--CGM.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(14)

  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.C(btex $C$ etex); boxit.G(btex $G$ etex); boxit.M(btex $M$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.CGM(); CGM.nw=C.nw; CGM.se=M.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart CGM.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$ etex);
  boxit.DE(btex $D$ $E$ etex);
  boxit.JKL(btex $J$ $K$ $L$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart CGM.w + xpart.TX.e);
  ypart P.s = ypart CGM.n + 20;

  xpart CGM.s = .5(xpart AB.w+xpart NO.e);
  ypart CGM.s = ypart AB.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(AB,DE,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  fixpos (AB,DE,JKL,NO,QRS,UV,YZ,C,G,M,P,T,X,CGM,TX);
  fill bpath TX withcolor .8white; 
  fill bpath P withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  fill bpath JKL withcolor .8white; 
  fill bpath CGM withcolor .8white; 
  fill bpath AB withcolor .8white; 
  
  drawboxed(AB,DE,JKL,NO,QRS,UV,YZ);
  drawunboxed(C,G,M,T,X);
  drawboxed(CGM,TX,P);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--DE.n;
  drawarrow G.se+(0,2)--JKL.n;
  drawarrow M.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--CGM.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(15)

  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.C(btex $C$ etex); boxit.G(btex $G$ etex); boxit.L(btex $L$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.CGL(); CGL.nw=C.nw; CGL.se=L.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart CGL.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$ etex);
  boxit.DE(btex $D$ $E$ etex);
  boxit.JK(btex $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart CGL.w + xpart.TX.e);
  ypart P.s = ypart CGL.n + 20;

  xpart CGL.s = .5(xpart AB.w+xpart NO.e);
  ypart CGL.s = ypart AB.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(AB,DE,JK,NO,QRS,UV,YZ,C,G,L,P,T,X,CGL,TX);
  fixpos (AB,DE,JK,NO,QRS,UV,YZ,C,G,L,P,T,X,CGL,TX);
  fill bpath TX withcolor .8white; 
  fill bpath P withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  fill bpath DE withcolor .8white; 
  fill bpath AB withcolor .8white; 
  
  drawboxed(AB,DE,JK,NO,QRS,UV,YZ);
  drawunboxed(C,G,L,T,X);
  drawboxed(CGL,TX,P);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--DE.n;
  drawarrow G.se+(0,2)--JK.n;
  drawarrow L.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--CGL.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(16)
  boxit.P(btex $P$ etex);
  
  boxjoin(a.ne=b.nw); boxit.C(btex $C$ etex); boxit.L(btex $L$ etex);
  
  boxjoin(a.ne=b.nw); boxit.T(btex $T$ etex); boxit.X(btex $X$ etex);
  
  boxjoin();
  boxit.CL(); CL.nw=C.nw; CL.se=L.se;
  boxit.TX(); TX.nw=T.nw; TX.se=X.se;

  ypart CL.n = ypart TX.n;
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$ etex);
  boxit.DEJK(btex $D$ $E$ $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  
  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  NO.ne=QRS.nw-(20,0);

  xpart P.s = .5(xpart CL.w + xpart.TX.e);
  ypart P.s = ypart CL.n + 20;

  xpart CL.s = .5(xpart AB.w+xpart NO.e);
  ypart CL.s = ypart AB.n + 20;
  
  xpart TX.s = .5(xpart QRS.w+xpart YZ.e);

  fixsize(AB,DEJK,NO,QRS,UV,YZ,C,L,P,T,X,CL,TX);
  fixpos (AB,DEJK,NO,QRS,UV,YZ,C,L,P,T,X,CL,TX);
  fill bpath TX withcolor .8white; 
  fill bpath P withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  fill bpath AB withcolor .8white; 
  
  drawboxed(AB,DEJK,NO,QRS,UV,YZ);
  drawunboxed(C,L,T,X);
  drawboxed(CL,TX,P);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--DEJK.n;
  drawarrow L.se+(-2,2)--NO.n;
  
  drawarrow T.sw+(2,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n; 
  
  drawarrow P.sw+(2,2)--CL.n;
  drawarrow P.se+(-2,2)--TX.n;
endfig;

beginfig(17);
  boxjoin(a.ne=b.nw);
  boxit.C(btex $C$ etex);
  boxit.L(btex $L$ etex);
  boxit.P(btex $P$ etex);
  boxit.T(btex $T$ etex);
  boxit.X(btex $X$ etex);

  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AB(btex $A$ $B$  etex);
  boxit.EJK(btex $E$ $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  boxit.CLPTX();
  CLPTX.nw=C.nw;
  CLPTX.se=X.se;

  xpart CLPTX.s = .5(xpart AB.w + xpart.YZ.e);
  ypart CLPTX.s = ypart AB.n + 20;
  
  fixsize(AB,EJK,NO,QRS,UV,YZ,C,L,P,T,X,CLPTX);
  fixpos (AB,EJK,NO,QRS,UV,YZ,C,L,P,T,X,CLPTX);
  fill bpath AB withcolor .8white; 
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  
  drawboxed(AB,EJK,NO,QRS,UV,YZ);
  drawunboxed(C,L,P,T,X);
  drawboxed(CLPTX);

  drawarrow C.sw+(2,2)--AB.n;
  drawarrow C.se+(0,2)--EJK.n;
  drawarrow L.se+(0,2)--NO.n;
  drawarrow P.se+(0,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n;
endfig;

beginfig(18);
  boxjoin(a.ne=b.nw);
  boxit.E(btex $E$ etex);
  boxit.L(btex $L$ etex);
  boxit.P(btex $P$ etex);
  boxit.T(btex $T$ etex);
  boxit.X(btex $X$ etex);

  boxjoin(ypart a.n = ypart b.n;xpart a.e + 10 = xpart b.w);
  boxit.AC(btex $A$ $C$  etex);
  boxit.JK(btex $J$ $K$ etex);
  boxit.NO(btex $N$ $O$ etex);
  boxit.QRS(btex $Q$ $R$ $S$ etex);
  boxit.UV(btex $U$ $V$ etex);
  boxit.YZ(btex $Y$ $Z$ etex);
  boxjoin();

  boxit.ELPTX();
  ELPTX.nw=E.nw;
  ELPTX.se=X.se;

  xpart ELPTX.s = .5(xpart AC.w + xpart.YZ.e);
  ypart ELPTX.s = ypart AC.n + 20;
  
  fixsize(AC,JK,NO,QRS,UV,YZ,E,L,P,T,X,ELPTX);
  fixpos (AC,JK,NO,QRS,UV,YZ,E,L,P,T,X,ELPTX);
  fill bpath QRS withcolor .8white; 
  fill bpath UV withcolor .8white; 
  fill bpath NO withcolor .8white; 
  fill bpath YZ withcolor .8white; 
  
  drawboxed(AC,JK,NO,QRS,UV,YZ);
  drawunboxed(E,L,P,T,X);
  drawboxed(ELPTX);

  drawarrow E.sw+(2,2)--AC.n;
  drawarrow E.se+(0,2)--JK.n;
  drawarrow L.se+(0,2)--NO.n;
  drawarrow P.se+(0,2)--QRS.n;
  drawarrow T.se+(0,2)--UV.n;
  drawarrow X.se+(-2,2)--YZ.n;
endfig;


%beginfig(1);
%  
%  boxit.M(btex $M$ etex);
%  
%  boxjoin(a.ne=b.nw);
%  boxit.D(btex $D$ etex);
%  boxit.H(btex $H$ etex);
%  boxjoin();
%  
%  boxjoin(a.ne=b.nw);
%  boxit.Q(btex $Q$ etex);
%  boxit.T(btex $T$ etex);
%  boxit.X(btex $X$ etex);
%  boxjoin();
%
%  boxjoin(a.ne+(10,0)=b.nw);
%  boxit.BC(btex $BC$ etex);
%  boxit.FG(btex $FG$ etex);
%  boxit.JKI(btex $JKI$ etex);
%  boxit.NP(btex $NP$ etex);
%  boxit.RS(btex $RS$ etex);
%  boxit.VW(btex $VW$ etex);
%  boxit.YZ(btex $YZ$ etex);

%  drawboxed(M,BC,FG,JKI,NP,RS,VW);
  
%endfig;

end