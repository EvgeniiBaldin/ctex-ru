verbatimtex \input{mpreheader}
\begin{document}
etex;

input preheader;

defaultfont := "cmr12";
defaultscale := 12pt /fontsize defaultfont;
%если хочешь увидеть кириллицу
% поставь 0, работает только с dvips
%для просмотра сделай 2 
prologues := 0;



vardef drawshadowed(expr dx,dy)(text t) =
  fixsize(t);
  forsuffixes s=t:
    fill bpath.s shifted (dx,dy);
    unfill bpath.s;
    drawboxed(s);
%    draw pic(s) withcolor red; %цвет текста
  endfor;
enddef;

%пример boxes
beginfig(1) ;
  numeric u;u:=1mm;
  boxit.latex(btex \parbox[c][25mm][c]{40mm}{\Huge \centering\LaTeX} etex);
%  latex.n := (0,0);
  rboxit.tex(btex  \parbox[c][5mm][c]{10mm}{\rule[-1.5mm]{0mm}{5mm}\centering .tex} etex);
  tex.s = latex.n + (0,10u);
  rboxit.deps(btex \parbox[c][5mm][c]{10mm}{\rule[-1.5mm]{0mm}{5mm}\centering .eps} etex);
  deps.e = tex.w - (10u,0);
  boxit.source(btex \large исходные тексты и картинки etex);
  source.s=1/2[deps.n,tex.e]+(0u,3u);
  boxit.fmt(btex \rule[-1.5mm]{0mm}{5mm}форматный файл (.fmt) etex);
  boxit.cls(btex \rule[-1.5mm]{0mm}{5mm}класс и пакеты (.cls, .sty) etex);
  boxit.tfm(btex \rule[-1.5mm]{0mm}{5mm}метрики шрифтов (.tfm) etex);
  boxit.fd(btex \rule[-1.5mm]{0mm}{5mm}определения шрифтов (.fd) etex);
  fmt.w=7/8[latex.s,latex.n]-latex.c+latex.e+(7u,0u);
  cls.w=5/8[latex.s,latex.n]-latex.c+latex.e+(7u,0u);
  tfm.w=3/8[latex.s,latex.n]-latex.c+latex.e+(7u,0u);
  fd.w=1/8[latex.s,latex.n]-latex.c+latex.e+(7u,0u);
  
  rboxit.dvi(btex \parbox[c][5mm][c]{10mm}{\rule[-1.5mm]{0mm}{5mm}\centering .dvi} etex);
  dvi.n=latex.s-(0,7u);
  boxit.dlog(btex \rule[-1.5mm]{0mm}{5mm}log-файл (.log) etex);
  dlog.w=latex.s+(20u,-7u);
  boxit.dvips(btex \parbox[c][5mm][c]{20mm}{\rule[-1.5mm]{0mm}{5mm}\centering \texttt{dvips}} etex);
  dvips.n=dvi.s-(0,5u);
  rboxit.ps(btex \parbox[c][5mm][c]{10mm}{\rule[-1.5mm]{0mm}{5mm}\centering .ps} etex);
  ps.n=dvips.s-(0,5u);
  boxit.pfb(btex \rule[-1.5mm]{0mm}{5mm}шрифты .pk(.mf), .pfb etex);
  dvips.e=pfb.w-(7u,0);
  boxit.ps2pdf(btex \parbox[c][5mm][c]{20mm}{\rule[-1.5mm]{0mm}{5mm}\centering \texttt{ps2pdf}} etex);
  ps2pdf.w=ps.e+(10u,0);
  rboxit.pdf(btex \parbox[c][5mm][c]{10mm}{\rule[-1.5mm]{0mm}{5mm}\centering .pdf} etex);
  pdf.w=ps2pdf.e+(10u,0u);
  
  pickup pencircle scaled 0.5u;  
  drawboxed(latex,tex,deps,dvi,dvips,ps,ps2pdf,pdf);
  drawunboxed(source,fmt,cls,tfm,fd,dlog,pfb);
  
  pickup pencircle scaled 0.3u;
  drawarrow tex.s -- latex.n+(0u,0.4u);
  drawarrow deps.e{dir 0} .. {dir -90}latex.n+(-10u,0.4u);
  drawarrow fmt.w--fmt.w-(7u,0u)+(0.4u,0);
  drawarrow cls.w--cls.w-(7u,0u)+(0.4u,0);
  drawarrow tfm.w--tfm.w-(7u,0u)+(0.4u,0);
  drawarrow fd.w--fd.w-(7u,0u)+(0.4u,0);
  drawarrow latex.s--dvi.n+(0,0.4u);
  drawarrow latex.s+(10u,0){dir -90}..{dir 0}dlog.w;
  drawarrow dvi.s--dvips.n+(0,0.4u);
  drawarrow dvips.s--ps.n+(0,0.4u);
  drawarrow pfb.w--pfb.w-(7u,0u)+(0.4u,0);
  drawarrow ps.e--ps2pdf.w-(0.4u,0);
  drawarrow ps2pdf.e--pdf.w-(0.4u,0);
  pair a,b;
  a:=1/2[latex.sw,latex.s]-(20u,15u);
  b:=1/2[latex.sw,latex.s]-(20u,15u)+(0,15u)+(latex.w-latex.sw);
  drawarrow 1/2[latex.sw,latex.s]--
  1/2[latex.sw,latex.s]-(0,15u)--
  a--
  b--
  latex.w-(0.4u,0);
  label.lft(btex \texttt{.aux} etex,9/10[a,b]);
  label.lft(btex \texttt{.idx} etex,7/10[a,b]);
  label.lft(btex \texttt{.toc} etex,5/10[a,b]);
  label.lft(btex \texttt{.lof} etex,3/10[a,b]);
  label.lft(btex \texttt{.lot} etex,1/10[a,b]);

  a:=1/3[latex.nw,latex.w];
  b:=1/3[latex.nw,latex.w]-(7u,0u);
  drawarrow b--a-(0.4u,0);
  label.lft(btex \texttt{.bbl} etex,b);

  a:=2/3[latex.nw,latex.w];
  b:=2/3[latex.nw,latex.w]-(7u,0u);
  drawarrow b--a-(0.4u,0);
  label.lft(btex \texttt{.ind} etex,b);

  label(btex \large рабочие файлы etex rotated 90,latex.w-(25u,8u));

  drawarrow deps.w{left}..
  latex.nw-(30u,-5u){down}..
  {down}latex.nw-(30u,35u)..
  {right}dvips.w-(0.4u,0);
  
%   drawarrow b.s -- c.n-(0u,-0.3mm);
%   drawarrow c.s{dir -90} .. {dir -90}e.n-(0u,-0.3mm);
%   drawarrow c.s{dir -90} .. {dir -90}h.n-(0u,-0.3mm);
%   drawarrow e.s -- g.n-(0u,-0.3mm);
%   drawarrow h.s -- i.n-(0u,-0.3mm);
%   drawarrow d.s{dir -90} .. {dir 0}e.w-(0.3mm,0u);
endfig;

end.
