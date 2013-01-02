# -*- coding: koi8-r -*-
#
# Компиляция картинок tables
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

#tables-slashbox.eps
PICS :=  tables-notopcaption.eps tables-topcaption.eps 

all: $(PICS) 


tables-notopcaption.eps:  tables-notopcaption.tex
	$(PREFIX)$(LATEX) tables-notopcaption.tex
	$(PREFIX)$(DVIPS) -E tables-notopcaption.dvi -o tables-notopcaption.eps

tables-topcaption.eps:  tables-topcaption.tex
	$(PREFIX)$(LATEX) tables-topcaption.tex
	$(PREFIX)$(DVIPS) -E tables-topcaption.dvi -o tables-topcaption.eps

# Пакет slashbox исчез между TeX Live 2009 и TeX Live 2011 
# Для компиляции его нужно установить вручную
#tables-slashbox.eps:  tables-slashbox.tex ../structheader.tex
#	$(PREFIX)$(LATEX) tables-slashbox.tex
#	$(PREFIX)$(DVIPS) -E tables-slashbox.dvi -o tables-slashbox.eps

include ../rules-post.mk
