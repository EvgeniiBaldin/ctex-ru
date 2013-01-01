# -*- coding: koi8-r -*-
#
# Компиляция картинок tables
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS :=  tables-notopcaption.eps tables-topcaption.eps

all: $(PICS) 


tables-notopcaption.eps:  tables-notopcaption.tex
	$(PREFIX)$(LATEX) tables-notopcaption.tex
	$(PREFIX)$(DVIPS) -E tables-notopcaption.dvi -o tables-notopcaption.eps

tables-topcaption.eps:  tables-topcaption.tex
	$(PREFIX)$(LATEX) tables-topcaption.tex
	$(PREFIX)$(DVIPS) -E tables-topcaption.dvi -o tables-topcaption.eps

include ../rules-post.mk
