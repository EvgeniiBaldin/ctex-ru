# -*- coding: koi8-r -*-
#
# Компиляция картинок apparatus
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

#make-up-technics.eps apparatus-gloss.eps
PICS :=  make-up-fancyhdr.eps apparatus-bib.eps apparatus-1.eps \
         apparatus-2.eps apparatus-3.eps apparatus-bib2.eps \
         apparatus-idx.eps 

all: $(PICS) 


make-up-fancyhdr.eps:  make-up-fancyhdr.tex
	$(PREFIX)$(LATEX) make-up-fancyhdr.tex
	$(PREFIX)$(DVIPS) -E make-up-fancyhdr.dvi -o make-up-fancyhdr.eps

# нужно доработать стил technics.sty для использования кириллицы
#make-up-technics.eps:  make-up-technics.tex
#	$(PREFIX)$(LATEX) make-up-technics.tex
#	$(PREFIX)$(DVIPS) -E make-up-technics.dvi -o make-up-technics.eps

apparatus-bib.eps:  apparatus-bib.tex
	$(PREFIX)$(LATEX) apparatus-bib.tex
	$(PREFIX)$(LATEX) apparatus-bib.tex
	$(PREFIX)$(DVIPS) -E apparatus-bib.dvi -o apparatus-bib.eps

apparatus-1.eps: apparatus.mp
	$(PREFIX)$(MPOST) apparatus.mp

apparatus-2.eps: apparatus.mp
	$(PREFIX)$(MPOST) apparatus.mp

apparatus-3.eps: apparatus.mp
	$(PREFIX)$(MPOST) apparatus.mp

apparatus-bib2.eps:  apparatus-bib2.tex apparatus-bib2.bib
	$(PREFIX)$(LATEX) apparatus-bib2.tex
	$(PREFIX)$(BIBTEX) apparatus-bib2
	$(PREFIX)$(LATEX) apparatus-bib2.tex
	$(PREFIX)$(DVIPS) -E apparatus-bib2.dvi -o apparatus-bib2.eps


apparatus-idx.eps:  apparatus-idx.tex 
	$(PREFIX)$(LATEX) apparatus-idx.tex
	$(PREFIX)$(DVIPS) -E apparatus-idx.dvi -o apparatus-idx.eps

# не собирается
#apparatus-gloss.eps:  apparatus-gloss.tex 
#	$(PREFIX)$(LATEX) apparatus-gloss.tex
#	$(PREFIX)$(TEXINDY) apparatus-gloss.glo \
# -o apparatus-gloss.gls -M makeglos.xdy -L russian -C koi8-r
#	$(PREFIX)$(LATEX) apparatus-gloss.tex
#	$(PREFIX)$(DVIPS) -E apparatus-gloss.dvi -o apparatus-gloss.eps



include ../rules-post.mk
