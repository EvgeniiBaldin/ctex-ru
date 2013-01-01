# -*- coding: koi8-r -*-
#
# Компиляция картинок intro
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS :=  intro-1.eps helloworld.eps

all:  $(PICS)

intro-1.eps: intro.mp
	$(PREFIX)$(MPOST) intro.mp

helloworld.eps: helloworld.tex 
	$(PREFIX)$(LATEX) helloworld.tex
	$(PREFIX)$(DVIPS) -E helloworld.dvi -o helloworld.eps


include ../rules-post.mk