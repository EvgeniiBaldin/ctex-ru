# -*- coding: koi8-r -*-
#
# Компиляция картинок code
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS := code-codebox.eps code-pseudocode.eps code-vhistory.eps 

all: $(PICS) 

code-codebox.eps: ../structheader.tex code-codebox.tex
	$(PREFIX)$(LATEX) code-codebox.tex
	$(PREFIX)$(DVIPS) -E code-codebox.dvi -o code-codebox.eps

code-pseudocode.eps: ../structheader.tex code-pseudocode.tex
	$(PREFIX)$(LATEX) code-pseudocode.tex
	$(PREFIX)$(DVIPS) -E code-pseudocode.dvi -o code-pseudocode.eps

code-vhistory.eps: ../structheader.tex code-vhistory.tex
	$(PREFIX)$(LATEX) code-vhistory.tex
	$(PREFIX)$(LATEX) code-vhistory.tex
	$(PREFIX)$(DVIPS) -E code-vhistory.dvi -o code-vhistory.eps


include ../rules-post.mk

