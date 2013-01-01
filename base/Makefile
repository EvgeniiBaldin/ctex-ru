# -*- coding: koi8-r -*-
#
# Компиляция картинок base
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS :=  base-2-cm-super.eps base-2-concrete.eps base-2-anttor.eps \
         apparatus-section-1.eps apparatus-section-2.eps  \
         base-2-burl.eps watermark.eps

all: $(PICS) 

base-2-cm-super.eps:  base-2-cm-super.tex
	$(PREFIX)$(LATEX) base-2-cm-super.tex
	$(PREFIX)$(DVIPS) -E base-2-cm-super.dvi -o base-2-cm-super.eps

base-2-concrete.eps:  base-2-concrete.tex
	$(PREFIX)$(LATEX) base-2-concrete.tex
	$(PREFIX)$(DVIPS) -E base-2-concrete.dvi -o base-2-concrete.eps

base-2-anttor.eps:  base-2-anttor.tex
	$(PREFIX)$(LATEX) base-2-anttor.tex
	$(PREFIX)$(DVIPS) -E base-2-anttor.dvi -o base-2-anttor.eps

apparatus-section-1.eps:  apparatus-section.dvi
	$(PREFIX)$(DVIPS) -pp 1 -E apparatus-section.dvi -o apparatus-section-1.eps

apparatus-section-2.eps:  apparatus-section.dvi
	$(PREFIX)$(DVIPS) -pp 2 -E apparatus-section.dvi -o apparatus-section-2.eps

apparatus-section.dvi: apparatus-section.tex
	$(PREFIX)$(LATEX) apparatus-section.tex
	$(PREFIX)$(LATEX) apparatus-section.tex


base-2-burl.eps:  base-2-burl.tex
	$(PREFIX)$(LATEX) base-2-burl.tex
	$(PREFIX)$(DVIPS) -E base-2-burl.dvi -o base-2-burl.eps

watermark.eps:  watermark.tex
	$(PREFIX)$(LATEX) watermark.tex
	$(PREFIX)$(DVIPS) -E watermark.dvi -o watermark.eps

include ../rules-post.mk
