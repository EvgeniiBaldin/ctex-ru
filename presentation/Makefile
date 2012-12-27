# -*- coding: koi8-r -*-
#
# Компиляция картинок presentation
#
# 2012 (c)  Е.М. Балдин 
#

include ../rules.mk

# presentation-button.eps -- нужно править BBox ручками
#	presentation-beamer-code-1.eps 
#	presentation-beamer-code-2.eps 
#	presentation-beamer-code-3.eps 
#	presentation-beamer-code-4.eps 

PICS := presentation-slides.eps \
        presentation-beamer-title.eps \
        presentation-beamer-title.pdf \
        presentation-beamer-frametitle.eps \
        presentation-beamer-frametitle.pdf \
        presentation-beamer-pause-1.eps \
	presentation-beamer-pause-2.eps \
	presentation-beamer-pause.pdf \
        presentation-beamer-overley-1.eps \
	presentation-beamer-overley-2.eps \
        presentation-beamer-overley-3.eps \
	presentation-beamer-overley-4.eps \
	presentation-beamer-overley.pdf 

all: $(PICS) 

presentation-slides.eps:  presentation-slides.tex
	$(PREFIX)$(LATEX) presentation-slides.tex
	$(PREFIX)$(DVIPS) -E presentation-slides.dvi -o presentation-slides.eps


presentation-beamer-title.eps:  presentation-beamer-title.pdf
	$(PREFIX)$(PDFTOPS) -eps presentation-beamer-title.pdf presentation-beamer-title.eps

presentation-beamer-title.pdf:  presentation-beamer-title.tex
	$(PREFIX)$(PDFLATEX) presentation-beamer-title.tex

presentation-beamer-frametitle.eps:  presentation-beamer-frametitle.pdf
	$(PREFIX)$(PDFTOPS) -eps presentation-beamer-frametitle.pdf presentation-beamer-frametitle.eps

presentation-beamer-frametitle.pdf:  presentation-beamer-frametitle.tex
	$(PREFIX)$(PDFLATEX) presentation-beamer-frametitle.tex

presentation-beamer-pause-1.eps:  presentation-beamer-pause.pdf
	$(PREFIX)$(PDFTOPS) -f 1 -l 1 -eps presentation-beamer-pause.pdf presentation-beamer-pause-1.eps

presentation-beamer-pause-2.eps:  presentation-beamer-pause.pdf
	$(PREFIX)$(PDFTOPS) -f 2 -l 2 -eps presentation-beamer-pause.pdf presentation-beamer-pause-2.eps

presentation-beamer-pause.pdf: presentation-beamer-pause.tex
	$(PREFIX)$(PDFLATEX) presentation-beamer-pause.tex


presentation-beamer-overley-1.eps:  presentation-beamer-overley.pdf
	$(PREFIX)$(PDFTOPS) -f 1 -l 1 -eps presentation-beamer-overley.pdf presentation-beamer-overley-1.eps

presentation-beamer-overley-2.eps:  presentation-beamer-overley.pdf
	$(PREFIX)$(PDFTOPS) -f 2 -l 2 -eps presentation-beamer-overley.pdf presentation-beamer-overley-2.eps

presentation-beamer-overley-3.eps:  presentation-beamer-overley.pdf
	$(PREFIX)$(PDFTOPS) -f 3 -l 3 -eps presentation-beamer-overley.pdf presentation-beamer-overley-3.eps

presentation-beamer-overley-4.eps:  presentation-beamer-overley.pdf
	$(PREFIX)$(PDFTOPS) -f 4 -l 4 -eps presentation-beamer-overley.pdf presentation-beamer-overley-4.eps

presentation-beamer-overley.pdf: presentation-beamer-overley.tex
	$(PREFIX)$(PDFLATEX) presentation-beamer-overley.tex


#presentation-button.eps:  presentation-button.pdf
#	$(PREFIX)$(PDFTOPS) -eps presentation-button.pdf presentation-button.eps

#presentation-button.pdf:  presentation-button.tex
#	$(PREFIX)$(PDFLATEX) presentation-button.tex


include ../rules-post.mk

