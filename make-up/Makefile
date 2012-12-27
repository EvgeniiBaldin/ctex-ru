# -*- coding: koi8-r -*-
#
# Компиляция картинок make-up
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

# make-up-rotpages.eps make-up-draft.eps
PICS := make-up-layout.eps make-up-lscape.eps  make-up-lscape.pdf \
        make-up-coridor.eps make-up-twocolumn.eps \
        make-up-twocolumn-2.eps make-up-twocolumn-3.eps \
        make-up-multicol.eps 

all: $(PICS) 

make-up-lscape.eps:  make-up-lscape.pdf
	$(PREFIX)$(PDFTOPS) -eps make-up-lscape.pdf make-up-lscape.eps

make-up-lscape.pdf:  make-up-lscape.tex
	$(PREFIX)$(PDFLATEX) make-up-lscape.tex


make-up-layout.eps:  make-up-layout.tex
	$(PREFIX)$(LATEX) make-up-layout.tex
	$(PREFIX)$(DVIPS) -E make-up-layout.dvi -o make-up-layout.eps

# после сборки надо ещё BBOX подправить
#make-up-rotpages.eps:  make-up-rotpages.tex
#	$(PREFIX)$(LATEX) make-up-rotpages.tex
#	$(PREFIX)$(DVIPS) -E make-up-rotpages.dvi -o make-up-rotpages.eps

make-up-coridor.eps:  make-up-coridor.tex
	$(PREFIX)$(LATEX) make-up-coridor.tex
	$(PREFIX)$(DVIPS) -E make-up-coridor.dvi -o make-up-coridor.eps

make-up-twocolumn.eps:  make-up-twocolumn.tex
	$(PREFIX)$(LATEX) make-up-twocolumn.tex
	$(PREFIX)$(DVIPS) -E make-up-twocolumn.dvi -o make-up-twocolumn.eps

make-up-twocolumn-2.eps:  make-up-twocolumn-2.tex
	$(PREFIX)$(LATEX) make-up-twocolumn-2.tex
	$(PREFIX)$(DVIPS) -E make-up-twocolumn-2.dvi -o make-up-twocolumn-2.eps


make-up-twocolumn-3.eps:  make-up-twocolumn-3.tex
	$(PREFIX)$(LATEX) make-up-twocolumn-3.tex
	$(PREFIX)$(DVIPS) -E make-up-twocolumn-3.dvi -o make-up-twocolumn-3.eps

make-up-multicol.eps:  make-up-multicol.tex
	$(PREFIX)$(LATEX) make-up-multicol.tex
	$(PREFIX)$(DVIPS) -E make-up-multicol.dvi -o make-up-multicol.eps


include ../rules-post.mk

