%  -*- coding: koi8-r -*-
verbatimtex\documentclass[12pt]{article}
\usepackage[T2A]{fontenc}
\usepackage[koi8-r]{inputenc}
% \usepackage{graphicx}
% \usepackage{amsmath}
\usepackage{texnames}
% \usepackage{color}
\begin{document}
etex;

input rboxes;
input graph;
input exteps;

prologues := 3; 

outputtemplate := "%j-%c.eps"; % имя файла
outputformat:="eps";


vardef drawshadowed(expr dx,dy)(text t) =
  fixsize(t);
  forsuffixes s=t:
    fill bpath.s shifted (dx,dy);
    unfill bpath.s;
    drawboxed(s);
%    draw pic(s) withcolor red; %цвет текста
  endfor;
enddef;

%BibTeX
beginfig(1) ;
  numeric u;u:=0.8mm;
  boxit.one(btex \LaTeX etex);
  boxit.two(btex \LaTeX etex);
%  boxit.bib(btex \textcolor{red}{\BibTeX} etex);
  boxit.bib(btex \BibTeX etex);

  boxit.three(btex \LaTeX etex);
  one.c=(20u,-15u);
  one.c = two.c+(0u,20u);
  two.c = three.c+(0u,20u);
  bib.c = 1/2[one.s,two.n]+(25u,0u);
  
  pickup pencircle scaled 0.5u;  
  drawboxed(one,two,three,bib);
  label.top(btex file.tex etex,(20u,0u));
%  label.top(btex \textcolor{red}{file.bib} etex,(xpart(1/2[bib.n,bib.nw]),0u));
  label.top(btex file.bib etex,(xpart(1/2[bib.n,bib.nw]),0u));
  pickup pencircle scaled 0.3u;  
  drawarrow(xpart(1/2[bib.n,bib.nw]),0u)--(1/2[bib.n,bib.nw]+(0u,0.5u));
%  withcolor red;
  label.top(btex .bst etex,(xpart(1/2[bib.n,bib.ne]),-10u));
%  withcolor red;
  drawarrow(xpart(1/2[bib.n,bib.ne]),-10u)--(1/2[bib.n,bib.ne]+(0u,0.5u));
%  withcolor red;
  drawarrow(20u,0u)--(one.n+(0,0.5u));
  drawarrow(20u,-5u)--(5u,-5u)--(5u,-35u)--(two.w-(0.5u,0u));
  drawarrow(5u,-35u)--(5u,-55u)--(three.w-(0.5u,0u));
  drawarrow(1/2[one.s,two.n])--(bib.w-(0.5u,0u));% withcolor red;
  drawarrow(one.s)--(two.n+(0u,0.5u));
  label.top(btex .aux etex,1/2[1/2[one.s,two.n],bib.w]);
  drawarrow(two.s)--(three.n+(0u,0.5u));
  label.lft(btex .aux etex,1/2[two.s,three.n]);
  drawarrow(1/2[bib.s,bib.sw])--(xpart(1/2[bib.s,bib.sw]),ypart(two.c))--
   (two.e+(0.5u,0u));% withcolor red;
  label.bot(btex .bbl etex,1/2[(xpart(1/2[bib.s,bib.sw]),ypart(two.c)),two.e]);% withcolor red ;
  drawarrow(1/2[bib.s,bib.se])--(1/2[bib.s,bib.se]+(0u,-10u));% withcolor red;
  label.bot(btex .blg etex,1/2[bib.s,bib.se]+(0u,-10u));% withcolor red ;



  drawboxed(one,two,three,bib);
%  drawunboxed(source,fmt,cls,tfm,fd,dlog,pfb);
endfig;


%MakeIndex
beginfig(2) ;
  numeric u;u:=0.8mm;
  boxit.one(btex \hspace*{2mm}\LaTeX\hspace*{2mm} etex);
  boxit.two(btex \hspace*{2mm}\LaTeX\hspace*{2mm} etex);
%  boxit.ind(btex \textcolor{red}{\textit{MakeIndex}} etex);
  boxit.ind(btex \textit{MakeIndex} etex);

  one.c=(20u,-15u);
  one.c = two.c+(0u,20u);
  ind.c = 1/2[one.s,two.n]+(30u,0u);
  
  pickup pencircle scaled 0.5u;  
  drawboxed(one,two,ind);
  label.top(btex file.tex etex,(20u,-5u));
%  label.top(btex \textcolor{red}{file.ind} etex,(xpart(1/2[ind.n,ind.nw]),0u));
  pickup pencircle scaled 0.3u;  
  drawarrow(one.e)--(xpart(1/2[ind.n,ind.nw]),ypart(one.e))--
  (1/2[ind.n,ind.nw]+(0u,0.5u));%  withcolor red;
  label.top(btex .idx etex,1/2[(xpart(1/2[ind.s,ind.sw]),ypart(one.c)),one.e]);
%  withcolor red ;

  label.top(btex .ist etex,(xpart(1/2[ind.n,ind.ne]),ypart(one.c)));
%  withcolor red;
  drawarrow(xpart(1/2[ind.n,ind.ne]),ypart(one.c))--(1/2[ind.n,ind.ne]+(0u,0.5u));
%  withcolor red;
  drawarrow(20u,-5u)--(one.n+(0,0.5u));
%  drawarrow(20u,-5u)--(5u,-5u)--(5u,-35u)--(two.w-(0.5u,0u));
%  drawarrow(1/2[one.s,two.n])--(ind.w-(0.5u,0u)) withcolor red;
  drawarrow(one.s)--(two.n+(0u,0.5u));
  label.rt(btex .tex etex,1/2[one.s,two.n]);
  drawarrow(1/2[ind.s,ind.sw])--(xpart(1/2[ind.s,ind.sw]),ypart(two.c))--
  (two.e+(0.5u,0u));% withcolor red;
  label.bot(btex .ind etex,1/2[(xpart(1/2[ind.s,ind.sw]),ypart(two.c)),two.e]);% withcolor red ;
  drawarrow(1/2[ind.s,ind.se])--(xpart(1/2[ind.s,ind.se]),ypart(two.c));
%  withcolor red;
  label.bot(btex .ilg etex,(xpart(1/2[ind.s,ind.se]),ypart(two.c)));
%  withcolor red ;



  drawboxed(one,two,ind);
%  drawunboxed(source,fmt,cls,tfm,fd,dlog,pfb);
endfig;


%глоссарий xindy
beginfig(3) ;
  numeric u;u:=0.8mm;
  boxit.one(btex \hspace*{2mm}\LaTeX\hspace*{2mm} etex);
  boxit.two(btex \hspace*{2mm}\LaTeX\hspace*{2mm} etex);
%  boxit.ind(btex \textcolor{red}{\textit{xindy}} etex);
  boxit.ind(btex \textit{xindy} etex);

  one.c=(20u,-15u);
  one.c = two.c+(0u,20u);
  ind.c = 1/2[one.s,two.n]+(30u,0u);
  
  pickup pencircle scaled 0.5u;  
  drawboxed(one,two,ind);
  label.top(btex file.tex etex,(20u,-5u));
%  label.top(btex \textcolor{red}{file.ind} etex,(xpart(1/2[ind.n,ind.nw]),0u));
  pickup pencircle scaled 0.3u;  
  drawarrow(one.e)--(xpart(1/2[ind.n,ind.nw]),ypart(one.e))--
  (1/2[ind.n,ind.nw]+(0u,0.5u));%  withcolor red;
  label.top(btex .glo etex,1/2[(xpart(1/2[ind.s,ind.sw]),ypart(one.c)),one.e]);
%  withcolor red ;

  label.top(btex .xdy etex,(xpart(1/2[ind.n,ind.ne]),ypart(one.c)));
%  withcolor red;
  drawarrow(xpart(1/2[ind.n,ind.ne]),ypart(one.c))--(1/2[ind.n,ind.ne]+(0u,0.5u));
%  withcolor red;
  drawarrow(20u,-5u)--(one.n+(0,0.5u));
%  drawarrow(20u,-5u)--(5u,-5u)--(5u,-35u)--(two.w-(0.5u,0u));
%  drawarrow(1/2[one.s,two.n])--(ind.w-(0.5u,0u)) withcolor red;
  drawarrow(one.s)--(two.n+(0u,0.5u));
  label.rt(btex .tex etex,1/2[one.s,two.n]);
  drawarrow(1/2[ind.s,ind.sw])--(xpart(1/2[ind.s,ind.sw]),ypart(two.c))--
  (two.e+(0.5u,0u));% withcolor red;
  label.bot(btex .gls etex,1/2[(xpart(1/2[ind.s,ind.sw]),ypart(two.c)),two.e]);% withcolor red ;
%   drawarrow(1/2[ind.s,ind.se])--(xpart(1/2[ind.s,ind.se]),ypart(two.c))
%   withcolor red;
%   label.bot(btex .ilg etex,(xpart(1/2[ind.s,ind.se]),ypart(two.c)))
%   withcolor red ;



  drawboxed(one,two,ind);
%  drawunboxed(source,fmt,cls,tfm,fd,dlog,pfb);
endfig;


end.
