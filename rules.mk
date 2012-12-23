# -*- coding: koi8-r -*-
#
# Определение переменных
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
            *.mpx *~ *-eps-converted-to.pdf *.out *.exa	
