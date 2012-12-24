# -*- coding: koi8-r -*-
#
# Компиляция картинок intro
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS := math-1-amsfonts.eps

all: $(PICS) 

math-1-amsfonts.eps: ../structheader.tex math-1-amsfonts.tex
	$(PREFIX)$(DVIPS) -E math-1-amsfonts.dvi -o math-1-amsfonts.eps
	$(PREFIX)$(LATEX) math-1-amsfonts.tex

include ../rules-post.mk

