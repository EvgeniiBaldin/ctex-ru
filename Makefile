# -*- coding: koi8-r -*-
#
# Общая сборка и компиляция картинок title
#
# 2012-2013 (c)  Е.М. Балдин 
#

include rules.mk


all:
	$(PREFIX)$(ECHO) "Usage:"
	$(PREFIX)$(ECHO) "     make ctex.pdf -- 3 times is better"
	$(PREFIX)$(ECHO) "     make clean"
	$(PREFIX)$(ECHO) "     make archive -- make dist/ dir with source and ctex.pdf"
	$(PREFIX)$(ECHO) "       All changes should be commited and ctex.pdf should be updated"

# теряется информация о страницах
#	$(PREFIX)$(ECHO) "run: make ctex.ps" 
#	$(PREFIX)$(ECHO) "run: make index"


#    Cоздаётся дирректория dist, куда копируется ctex.pdf и
# исходники. Предполагается, что все изменения закоммичены, то есть
# git status ни на что не ругается, а ctex.pdf обновлён, то есть make
# ctex.pdf сказан трижды.
archive:
	$(PREFIX)$(MKDIR) dist
	$(PREFIX)$(CP) -a ctex.pdf dist/
	$(PREFIX)$(GIT-ARCHIVE) --format=tar.gz HEAD \
          --prefix=ctex-`date +'%y%m%d'`/  -o dist/ctex.tar.gz 

ctex.pdf: preheader title-1 preamble-1 intro-1 \
          base-1 math-1 graphics-1 program-1 \
          make-up-1 classes-1 presentation-1 base-2 \
          tables-1 apparatus-1 math-2  code-1 science-1 \
           humanities-1 catalog-1 appendix-1 index bib
	$(PREFIX)$(PDFLATEX) ctex.tex


ctex.ps: ctex.dvi
	$(DVIPS) ctex.dvi


ctex.dvi: preheader title-1 preamble-1 intro-1 \
          base-1 math-1 graphics-1 program-1 \
          make-up-1 classes-1 presentation-1 base-2 \
          tables-1 apparatus-1 math-2  code-1 science-1 \
           humanities-1 catalog-1 appendix-1 index bib
	$(PREFIX)$(LATEX) ctex.tex

# TeXнический заголовок
preheader: preheader.tex structheader.tex 

# Титульная страница
title-1: ctex-title.tex title-LaTeX.eps

title-LaTeX.eps: title-LaTeX.tex
	$(PREFIX)$(LATEX) title-LaTeX.tex
	$(PREFIX)$(DVIPS) -E title-LaTeX.dvi -o title-LaTeX.eps

# Преамбула
preamble-1: preamble/preamble.tex

# Введение
intro-1: intro/intro.tex intro/intro-1.eps

intro/intro-1.eps: intro/intro.mp
	$(PREFIX)cd intro; make intro-1.eps

intro/helloworld.eps: intro/intro.mp
	$(PREFIX)cd intro; make helloworld.eps


# Базовые элементы
base-1: base/base.tex

# Начала математики
math-1: math/math-1.tex math/math-1-amsfonts.eps

math/math-1-amsfonts.eps: math/math-1-amsfonts.tex structheader.tex
	$(PREFIX)cd math; make math-1-amsfonts.eps

#Вставка графики
graphics-1: graphics/graphics.tex title.eps graphics/wrapfigure.eps

#Начала программирования
program-1: program/program.tex program/make-up-text-size.eps

program/make-up-text-size.eps: program/make-up-text-size.tex structheader.tex
	$(PREFIX)cd program; make make-up-text-size.eps


# Вёрстка
make-up-1: make-up/make-up.tex make-up/make-up-layout.eps \
           make-up/make-up-lscape.eps \
           make-up/make-up-rotpages.eps \
           make-up/make-up-coridor.eps make-up/make-up-draft.eps \
           make-up/make-up-twocolumn.eps \
           make-up/make-up-twocolumn-2.eps \
           make-up/make-up-twocolumn-3.eps \
           make-up/make-up-multicol.eps 

make-up/make-up-layout.eps: make-up/make-up-layout.tex
	$(PREFIX)cd make-up; make make-up-layout.eps

make-up/make-up-lscape.eps: make-up/make-up-lscape.tex
	$(PREFIX)cd make-up; make make-up-lscape.eps

# после сборки надо ещё BBOX подправить
#make-up/make-up-rotpages.eps: make-up/make-up-rotpages.tex
#	$(PREFIX)cd make-up; make make-up-rotpages.eps

make-up/make-up-coridor.eps: make-up/make-up-coridor.tex
	$(PREFIX)cd make-up; make make-up-coridor.eps

make-up/make-up-twocolumn.eps: make-up/make-up-twocolumn.tex
	$(PREFIX)cd make-up; make make-up-twocolumn.eps

make-up/make-up-twocolumn-2.eps: make-up/make-up-twocolumn-2.tex
	$(PREFIX)cd make-up; make make-up-twocolumn-2.eps

make-up/make-up-twocolumn-3.eps: make-up/make-up-twocolumn-3.tex
	$(PREFIX)cd make-up; make make-up-twocolumn-3.eps

make-up/make-up-multicol.eps: make-up/make-up-multicol.tex
	$(PREFIX)cd make-up; make make-up-multicol.eps

#Путеводитель по классам \LaTeX
classes-1: classes/classes.tex presentation/presentation-slides.eps

# Делаем презентации
presentation-1:  presentation/presentation.tex \
	presentation/presentation-slides.eps\
        presentation/presentation-beamer-title.eps\
        presentation/presentation-beamer-frametitle.eps \
	presentation/presentation-beamer-pause-1.eps \
	presentation/presentation-beamer-pause-2.eps \
        presentation/presentation-button.eps \
	presentation/presentation-beamer-overley-1.eps \
	presentation/presentation-beamer-overley-2.eps \
	presentation/presentation-beamer-overley-3.eps \
	presentation/presentation-beamer-overley-4.eps \
	presentation/presentation-beamer-code-1.eps \
	presentation/presentation-beamer-code-2.eps \
	presentation/presentation-beamer-code-3.eps \
	presentation/presentation-beamer-code-4.eps 

presentation/presentation-slides.eps: presentation/presentation-slides.tex
	$(PREFIX)cd presentation; make presentation-slides.eps

presentation/presentation-beamer-title.eps: presentation/presentation-beamer-title.tex
	$(PREFIX)cd presentation; make presentation-beamer-title.eps

presentation/presentation-beamer-pause-1.eps: presentation/presentation-beamer-pause.tex
	$(PREFIX)cd presentation; make presentation-beamer-pause-1.eps

presentation/presentation-beamer-pause-2.eps: presentation/presentation-beamer-pause.tex
	$(PREFIX)cd presentation; make presentation-beamer-pause-2.eps

#presentation/presentation-button.eps: presentation/presentation-button.tex
#	$(PREFIX)cd presentation; make presentation-button.eps

presentation/presentation-beamer-overley-1.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-1.eps

presentation/presentation-beamer-overley-2.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-2.eps

presentation/presentation-beamer-overley-3.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-3.eps

presentation/presentation-beamer-overley-4.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-4.eps

base-2: base/base-2.tex base/base-2-cm-super.eps \
        base/base-2-concrete.eps base/base-2-anttor.eps \
        base/apparatus-section-1.eps base/apparatus-section-2.eps\
        base/base-2-burl.eps base/watermark.eps


base/base-2-cm-super.eps: base/base-2-cm-super.tex
	$(PREFIX)cd base; make base-2-cm-super.eps

base/base-2-concrete.eps: base/base-2-concrete.tex
	$(PREFIX)cd base; make base-2-concrete.eps

base/base-2-anttor.eps: base/base-2-anttor.tex
	$(PREFIX)cd base; make base-2-anttor.eps

base/apparatus-section-1.eps: base/apparatus-section.tex
	$(PREFIX)cd base; make apparatus-section-1.eps

base/apparatus-section-2.eps: base/apparatus-section.tex
	$(PREFIX)cd base; make apparatus-section-2.eps

base/base-2-burl.eps: base/base-2-burl.tex
	$(PREFIX)cd base; make base-2-burl.eps

base/watermark.eps: base/watermark.tex
	$(PREFIX)cd base; make watermark.eps

tables-1: tables/tables.tex tables/tables-notopcaption.eps \
          tables/tables-topcaption.eps \
          tables/tables-slashbox.eps 

tables/tables-notopcaption.eps: tables/tables-notopcaption.tex
	$(PREFIX)cd tables; make tables-notopcaption.eps

tables/tables-topcaption.eps: tables/tables-topcaption.tex
	$(PREFIX)cd tables; make tables-topcaption.eps

# Пакет slashbox исчез между TeX Live 2009 и TeX Live 2011 
# Для компиляции его нужно установить вручную с CTAN
#tables/tables-slashbox.eps: tables/tables-slashbox.tex structheader.tex
#	$(PREFIX)cd tables; make tables-slashbox.eps


apparatus-1: apparatus/apparatus.tex \
             apparatus/make-up-fancyhdr.eps \
             apparatus/make-up-technics.eps \
             apparatus/apparatus-bib.eps \
             apparatus/apparatus-1.eps \
             apparatus/apparatus-2.eps \
             apparatus/apparatus-3.eps \
             apparatus/apparatus-bib2.eps \
             apparatus/apparatus-idx.eps \
             apparatus/apparatus-gloss.eps 

apparatus/make-up-fancyhdr.eps: apparatus/make-up-fancyhdr.tex
	$(PREFIX)cd apparatus; make make-up-fancyhdr.eps

# нужно доработать стил technics.sty для использования кириллицы
#apparatus/make-up-technics.eps: apparatus/make-up-technics.tex
#	$(PREFIX)cd apparatus; make make-up-technics.eps

apparatus/apparatus-bib.eps: apparatus/apparatus-bib.tex
	$(PREFIX)cd apparatus; make apparatus-bib.eps

apparatus/apparatus-1.eps: apparatus/apparatus.mp
	$(PREFIX)cd apparatus; make apparatus-1.eps

apparatus/apparatus-2.eps: apparatus/apparatus.mp
	$(PREFIX)cd apparatus; make apparatus-2.eps

apparatus/apparatus-3.eps: apparatus/apparatus.mp
	$(PREFIX)cd apparatus; make apparatus-3.eps

apparatus/apparatus-bib2.eps: apparatus/apparatus-bib2.tex apparatus/apparatus-bib2.bib
	$(PREFIX)cd apparatus; make apparatus-bib2.eps

apparatus/apparatus-idx.eps: apparatus/apparatus-idx.tex 
	$(PREFIX)cd apparatus; make apparatus-idx.eps

math-2: math/math-2.tex math/math-2-mathsterling.eps \
        math/math-2-upgreek.eps math/math-2-varoptable.eps \
        math/math-2-commath.eps math/math-2-ediff.eps \
        math/math-2-int-0.eps math/math-2-int-1.eps \
        math/math-2-int-3.eps math/math-2-matrix.eps \
        math/math-2-tensor.eps math/math-2-CD.eps \
        math/math-2-empheq.eps

math/math-2-mathsterling.eps: math/math-2-mathsterling.tex structheader.tex
	$(PREFIX)cd math; make math-2-mathsterling.eps

math/math-2-upgreek.eps: math/math-2-upgreek.tex structheader.tex
	$(PREFIX)cd math; make math-2-upgreek.eps

math/math-2-varoptable.eps: math/math-2-varoptable.tex structheader.tex
	$(PREFIX)cd math; make math-2-varoptable.eps

math/math-2-commath.eps: math/math-2-commath.tex structheader.tex
	$(PREFIX)cd math; make math-2-commath.eps

math/math-2-ediff.eps: math/math-2-ediff.tex structheader.tex
	$(PREFIX)cd math; make math-2-ediff.eps

math/math-2-int-0.eps: math/math-2-int-0.tex structheader.tex
	$(PREFIX)cd math; make math-2-int-0.eps

math/math-2-int-1.eps: math/math-2-int-1.tex structheader.tex
	$(PREFIX)cd math; make math-2-int-1.eps

math/math-2-int-3.eps: math/math-2-int-3.tex structheader.tex
	$(PREFIX)cd math; make math-2-int-3.eps

math/math-2-matrix.eps: math/math-2-matrix.tex structheader.tex
	$(PREFIX)cd math; make math-2-matrix.eps

math/math-2-tensor.eps: math/math-2-tensor.tex structheader.tex
	$(PREFIX)cd math; make math-2-tensor.eps

math/math-2-CD.eps: math/math-2-CD.tex structheader.tex
	$(PREFIX)cd math; make math-2-CD.eps

math/math-2-empheq.eps: math/math-2-empheq.tex structheader.tex
	$(PREFIX)cd math; make math-2-empheq.eps

code-1: code/code.tex code/code-codebox.eps \
        code/code-pseudocode.eps code/code-vhistory.eps

code/code-codebox.eps: code/code-codebox.tex structheader.tex
	$(PREFIX)cd code; make code-codebox.eps

code/code-pseudocode.eps: code/code-pseudocode.tex structheader.tex
	$(PREFIX)cd code; make code-pseudocode.eps

code/code-vhistory.eps: code/code-vhistory.tex structheader.tex
	$(PREFIX)cd code; make code-vhistory.eps



science-1: science/science.tex science/physics.tex \
           science/chemistry.tex science/biology.tex \
           science/physics-braket.eps science/physics-sistyle.eps \
           science/physics-hepparticles.eps \
           science/physics-feyn.eps science/eepsiee.eps \
           science/physics-circ.eps science/physics-pst-optic.eps \
           science/physics-pst-osci.eps \
           science/chemistry-pst-labo.eps \
           science/chemistry-mhchem.eps \
           science/chemistry-xymtex.eps

science/physics-braket.eps: science/physics-braket.tex structheader.tex
	$(PREFIX)cd science; make physics-braket.eps

science/physics-sistyle.eps: science/physics-sistyle.tex structheader.tex
	$(PREFIX)cd science; make physics-sistyle.eps

science/physics-hepparticles.eps: science/physics-hepparticles.tex structheader.tex
	$(PREFIX)cd science; make physics-hepparticles.eps

science/physics-feyn.eps: science/physics-feyn.tex structheader.tex
	$(PREFIX)cd science; make physics-feyn.eps

science/eepsiee.eps: science/eepsiee.tex 
	$(PREFIX)cd science; make eepsiee.eps

science/physics-circ.eps: science/physics-circ.tex structheader.tex
	$(PREFIX)cd science; make physics-circ.eps

science/physics-pst-optic.eps: science/physics-pst-optic.tex structheader.tex
	$(PREFIX)cd science; make physics-pst-optic.eps

science/physics-pst-osci.eps: science/physics-pst-osci.tex structheader.tex
	$(PREFIX)cd science; make physics-pst-osci.eps

# проблемы при компиляции -- eps не выходит, но с ps всё нормально
#science/chemistry-pst-labo.eps: science/chemistry-pst-labo.tex structheader.tex
#	$(PREFIX)cd science; make chemistry-pst-labo.eps

science/chemistry-mhchem.eps: science/chemistry-mhchem.tex structheader.tex
	$(PREFIX)cd science; make chemistry-mhchem.eps

# Надо установить xymtex
#science/chemistry-xymtex.eps: science/chemistry-xymtex.tex structheader.tex
#	$(PREFIX)cd science; make chemistry-xymtex.eps

science/fusarium.eps: science/fusarium.tex science/fusarium_2.msf structheader.tex 
	$(PREFIX)cd science; make fusarium.eps


humanities-1: humanities/humanities.tex \
              humanities/humanities-verses.eps \
              humanities/humanities-stage.eps \
              humanities/humanities-musixtex.eps \
              humanities/humanities-musixtex-2.eps \
              humanities/humanities-musixlyr.eps \
              humanities/hierotex.eps \
              humanities/humanities-arcs.eps 

humanities/humanities-verses.eps: humanities/humanities-verses.tex  structheader.tex 
	$(PREFIX)cd humanities; make humanities-verses.eps

humanities/humanities-stage.eps: humanities/humanities-stage.tex 
	$(PREFIX)cd humanities; make humanities-stage.eps

humanities/humanities-musixtex.eps: humanities/humanities-musixtex.tex structheader.tex 
	$(PREFIX)cd humanities; make humanities-musixtex.eps

humanities/humanities-musixtex-2.eps: humanities/humanities-musixtex-2.tex structheader.tex 
	$(PREFIX)cd humanities; make humanities-musixtex-2.eps

humanities/humanities-musixlyr.eps: humanities/humanities-musixlyr.tex structheader.tex 
	$(PREFIX)cd humanities; make humanities-musixlyr.eps

# Проблемы со сборкой -- не выяснял
#humanities/humanities-arcs.eps: humanities/humanities-arcs.tex structheader.tex 
#	$(PREFIX)cd humanities; make humanities-arcs.eps


catalog-1: catalog/catalog.tex

appendix-1: catalog/appendix.tex

index: ctex-index.tex ctex-cmd.idx ctex-pkg.idx 
	$(PREFIX)$(MAKEINDEX) -s ctex ctex-cmd
	$(PREFIX)$(MAKEINDEX) -s ctex ctex-pkg

bib: ctex-index.tex ctex.bbl
	$(PREFIX)$(BIBTEX) ctex

ctex.bbl: ctex.bib
	$(PREFIX)$(PDFLATEX) ctex.tex

ctex-cmd.idx: ctex-index.tex ctex.ist
	$(PREFIX)$(PDFLATEX) ctex.tex

ctex-pkg.idx: ctex-index.tex ctex.ist
	$(PREFIX)$(PDFLATEX) ctex.tex



clean:
	$(PREFIX)$(RM)  $(TMPFILES)