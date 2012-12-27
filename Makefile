# -*- coding: koi8-r -*-
#
# Общая сборка и компиляция картинок title
#
# 2012 (c)  Е.М. Балдин 
#

include rules.mk


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


# Базовые элементы
base-1: base/base.tex

# Начала математики
math-1: math/math-1.tex math/math-1-amsfonts.eps

math/math-1-amsfonts.eps: math/math-1-amsfonts.tex structheader.tex
	$(PREFIX)cd intro; make math-1-amsfonts.eps

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
	$(PREFIX)cd presentation; make presentation-beamer-overley-1.ep

presentation/presentation-beamer-overley-2.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-2.ep

presentation/presentation-beamer-overley-3.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-3.ep

presentation/presentation-beamer-overley-4.eps: presentation/presentation-beamer-overley.tex
	$(PREFIX)cd presentation; make presentation-beamer-overley-4.ep

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
	$(PREFIX)$(RM)  $(TMPFILES)