# -*- coding: koi8-r -*-
#
# Определение переменных
#
# 2012 (c)  Е.М. Балдин 
#


PREFIX := @
MPOST := mpost -tex=latex 
LATEX := latex
BIBTEX := bibtex8
TEXINDY := texindy
XINDY := xindy
PDFLATEX := pdflatex
PDFTOPS := pdftops
DVIPS := dvips
RM := rm -f
MKDIR := mkdir -p
CP := cp 
GIT-ARCHIVE := git archive
ZIP := zip
ECHO := echo
MAKEINDEX := makeindex
GIT := git

CTANDIR := CTAN
TMPFILES := mpxerr.tex *~ *-eps-converted-to.pdf \
 *.aux *.log *.dvi *.exa *.idx *.ind *.ilg *.cb *.blg *.bbl \
 *.glo *.gls *.mpx *.out *.exa *.toc *.snm *.nav *.ver *.hst
