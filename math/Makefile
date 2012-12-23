# -*- coding: koi8-r -*-
#
# Компиляция картинок intro
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

all: math-1-amsfonts.eps

math-1-amsfonts.eps: ../structheader.tex math-1-amsfonts.dvi
	$(PREFIX)$(DVIPS) -E math-1-amsfonts.dvi -o math-1-amsfonts.eps

math-1-amsfonts.dvi: math-1-amsfonts.tex
	$(PREFIX)$(LATEX) math-1-amsfonts.tex

clean:
	$(PREFIX)$(RM) $(TMPFILES)