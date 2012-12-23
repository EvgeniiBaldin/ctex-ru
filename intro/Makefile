# -*- coding: koi8-r -*-
#
# Компиляция картинок intro
#
# 2012 (c)  Е.М. Балдин 
#

PREFIX := @
MPOST := mpost -tex=latex 
RM := rm -f

PICS := intro-1.eps
TMPFILES := *.aux *.log *.dvi *.exa *.idx *.ind *.ilg *.cb *.blg *.glo *.gls \
            *.mpx *~ *-eps-converted-to.pdf *.out	

all:  $(PICS)

intro-1.eps: intro.mp
	$(PREFIX)$(MPOST) intro.mp

clean:
	$(PREFIX)$(RM) $(PICS) $(TMPFILES)