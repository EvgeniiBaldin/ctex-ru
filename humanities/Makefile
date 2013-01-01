# -*- coding: koi8-r -*-
#
# Компиляция картинок humanities
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

# hierotex.eps humanities-arcs.eps 
PICS := humanities-verses.eps humanities-stage.eps \
        humanities-musixtex.eps humanities-musixtex-2.eps \
        humanities-musixlyr.eps 

all: $(PICS) 


humanities-verses.eps:  humanities-verses.tex ../structheader.tex
	$(PREFIX)$(LATEX) humanities-verses.tex
	$(PREFIX)$(DVIPS) -E humanities-verses.dvi -o humanities-verses.eps

humanities-stage.eps:  humanities-stage.tex 
	$(PREFIX)$(LATEX) humanities-stage.tex
	$(PREFIX)$(DVIPS) -E humanities-stage.dvi -o humanities-stage.eps

humanities-musixtex.eps:  humanities-musixtex.tex ../structheader.tex
	$(PREFIX)$(LATEX) humanities-musixtex.tex
	$(PREFIX)$(DVIPS) -E humanities-musixtex.dvi -o humanities-musixtex.eps
	$(PREFIX)$(RM) humanities-musixtex.mx1

humanities-musixtex-2.eps:  humanities-musixtex-2.tex ../structheader.tex
	$(PREFIX)$(LATEX) humanities-musixtex-2.tex
	$(PREFIX)$(DVIPS) -E humanities-musixtex-2.dvi -o humanities-musixtex-2.eps
	$(PREFIX)$(RM) humanities-musixtex-2.mx1

humanities-musixlyr.eps:  humanities-musixlyr.tex ../structheader.tex
	$(PREFIX)$(LATEX) humanities-musixlyr.tex
	$(PREFIX)$(DVIPS) -E humanities-musixlyr.dvi -o humanities-musixlyr.eps
	$(PREFIX)$(RM) humanities-musixlyr.mx1

# Проблемы со сборкой -- не выяснял
#humanities-arcs.eps:  humanities-arcs.tex ../structheader.tex
#	$(PREFIX)$(LATEX) humanities-arcs.tex
#	$(PREFIX)$(DVIPS) -E humanities-arcs.dvi -o humanities-arcs.eps


include ../rules-post.mk

