# -*- coding: koi8-r -*-
#
# Компиляция картинок science
#
# 2013 (c)  Е.М. Балдин 
#

include ../rules.mk

# chemistry-pst-labo.eps chemistry-xymtex.eps
PICS := physics-braket.eps physics-sistyle.eps \
        physics-hepparticles.eps physics-feyn.eps \
        eepsiee.eps physics-circ.eps physics-pst-optic.eps \
        physics-pst-osci.eps chemistry-mhchem.eps \
        fusarium.eps

all: $(PICS) 

physics-braket.eps: ../structheader.tex physics-braket.tex
	$(PREFIX)$(LATEX) physics-braket.tex
	$(PREFIX)$(DVIPS) -E physics-braket.dvi -o physics-braket.eps

physics-sistyle.eps: ../structheader.tex physics-sistyle.tex
	$(PREFIX)$(LATEX) physics-sistyle.tex
	$(PREFIX)$(DVIPS) -E physics-sistyle.dvi -o physics-sistyle.eps

physics-hepparticles.eps: ../structheader.tex physics-hepparticles.tex
	$(PREFIX)$(LATEX) physics-hepparticles.tex
	$(PREFIX)$(DVIPS) -E physics-hepparticles.dvi -o physics-hepparticles.eps

physics-feyn.eps: ../structheader.tex physics-feyn.tex
	$(PREFIX)$(LATEX) physics-feyn.tex
	$(PREFIX)$(DVIPS) -E physics-feyn.dvi -o physics-feyn.eps

eepsiee.eps: eepsiee.tex
	$(PREFIX)$(LATEX) eepsiee.tex
	$(PREFIX)$(MPOST) ee-psi-ee.mp
	$(PREFIX)$(LATEX) eepsiee.tex
	$(PREFIX)$(DVIPS) -E eepsiee.dvi -o eepsiee.eps
	$(PREFIX)$(RM) ee-psi-ee.mp ee-psi-ee.1 ee-psi-ee.t1

physics-circ.eps: ../structheader.tex physics-circ.tex
	$(PREFIX)$(LATEX) physics-circ.tex
	$(PREFIX)$(DVIPS) -E physics-circ.dvi -o physics-circ.eps

physics-pst-optic.eps: ../structheader.tex physics-pst-optic.tex
	$(PREFIX)$(LATEX) physics-pst-optic.tex
	$(PREFIX)$(DVIPS) -E physics-pst-optic.dvi -o physics-pst-optic.eps

physics-pst-osci.eps: ../structheader.tex physics-pst-osci.tex
	$(PREFIX)$(LATEX) physics-pst-osci.tex
	$(PREFIX)$(DVIPS) -E physics-pst-osci.dvi -o physics-pst-osci.eps

# проблемы при компиляции -- eps не выходит, но с ps всё нормально
#chemistry-pst-labo.eps: ../structheader.tex chemistry-pst-labo.tex
#	$(PREFIX)$(LATEX) chemistry-pst-labo.tex
#	$(PREFIX)$(DVIPS) -E chemistry-pst-labo.dvi -o chemistry-pst-labo.eps

chemistry-mhchem.eps: ../structheader.tex chemistry-mhchem.tex
	$(PREFIX)$(LATEX) chemistry-mhchem.tex
	$(PREFIX)$(DVIPS) -E chemistry-mhchem.dvi -o chemistry-mhchem.eps

# надо установить xymtex
#chemistry-xymtex.eps: ../structheader.tex chemistry-xymtex.tex
#	$(PREFIX)$(LATEX) chemistry-xymtex.tex
#	$(PREFIX)$(DVIPS) -E chemistry-xymtex.dvi -o chemistry-xymtex.eps

fusarium.eps: ../structheader.tex fusarium.tex fusarium_2.msf
	$(PREFIX)$(LATEX) fusarium.tex
	$(PREFIX)$(DVIPS) -E fusarium.dvi -o fusarium.eps


include ../rules-post.mk

