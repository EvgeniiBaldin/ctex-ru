# -*- coding: koi8-r -*-
#
# Общая сборка и компиляция картинок title
#
# 2012 (c)  Е.М. Балдин 
#

PREFIX := @
MPOST := mpost -tex=latex 
LATEX := latex
PDFLATEX := pdflatex
DVIPS := dvips
RM := rm -f
ECHO := echo

TMPFILES := *.aux *.log *.dvi *.exa *.idx *.ind *.ilg *.cb *.blg *.glo *.gls \
            *.mpx *~ *-eps-converted-to.pdf *.out

TITLEPICS := title-LaTeX.eps


all:
	$(PREFIX)$(ECHO) "run: make ctex.pdf"
	$(PREFIX)$(ECHO) "run: make index"
	$(PREFIX)$(ECHO) "run: make clean"


ctex.pdf: preheader title-1 preamble-1 intro-1 \
          base-1 math-1 graphics-1 program-1 \
          make-up-1 classes-1 presentation-1 base-2 \
          tables-1 apparatus-1 math-2  code-1 science-1 \
           humanities-1 catalog-1 appendix-1 index-1
	$(PREFIX)$(PDFLATEX) ctex.tex

# TeXнический заголовок
preheader: preheader.tex

preheader.tex: structheader.tex	

# Титульная страница
title-1: ctex-title.tex title-LaTeX.eps

title-LaTeX.eps: title-LaTeX.dvi
	$(PREFIX)$(DVIPS) -E title-LaTeX.dvi -o title-LaTeX.eps

title-LaTeX.dvi: title-LaTeX.tex
	$(PREFIX)$(LATEX) title-LaTeX.tex

# Преамбула
preamble-1: preamble/preamble.tex

# Введение
intro-1: intro/intro.tex intro/intro-1.eps

intro/intro-1.eps:
	$(PREFIX)cd intro; make intro-1.eps


base-1:

math-1:


graphics-1:

program-1: 

make-up-1:

classes-1:

presentation-1:

base-2:

tables-1:

apparatus-1:

math-2:

code-1:

science-1:

humanities-1:

catalog-1:

appendix-1:

index-1:



clean:
	$(PREFIX)$(RM) $(TITLEPICS) $(TMPFILES)