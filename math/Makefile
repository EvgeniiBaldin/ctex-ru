# -*- coding: koi8-r -*-
#
# Компиляция картинок math
#
# 2012-2013 (c)  Е.М. Балдин 
#

include ../rules.mk

PICS := math-1-amsfonts.eps math-2-mathsterling.eps \
        math-2-upgreek.eps math-2-varoptable.eps \
        math-2-commath.eps math-2-ediff.eps \
        math-2-int-0.eps math-2-int-1.eps math-2-int-3.eps \
        math-2-matrix.eps math-2-tensor.eps math-2-CD.eps \
        math-2-empheq.eps

all: $(PICS) 

math-1-amsfonts.eps: ../structheader.tex math-1-amsfonts.tex
	$(PREFIX)$(LATEX) math-1-amsfonts.tex
	$(PREFIX)$(DVIPS) -E math-1-amsfonts.dvi -o math-1-amsfonts.eps

math-2-mathsterling.eps: ../structheader.tex math-2-mathsterling.tex
	$(PREFIX)$(LATEX) math-2-mathsterling.tex
	$(PREFIX)$(DVIPS) -E math-2-mathsterling.dvi -o math-2-mathsterling.eps

math-2-upgreek.eps: ../structheader.tex math-2-upgreek.tex
	$(PREFIX)$(LATEX) math-2-upgreek.tex
	$(PREFIX)$(DVIPS) -E math-2-upgreek.dvi -o math-2-upgreek.eps

math-2-varoptable.eps: ../structheader.tex math-2-varoptable.tex
	$(PREFIX)$(LATEX) math-2-varoptable.tex
	$(PREFIX)$(DVIPS) -E math-2-varoptable.dvi -o math-2-varoptable.eps

math-2-commath.eps: ../structheader.tex math-2-commath.tex
	$(PREFIX)$(LATEX) math-2-commath.tex
	$(PREFIX)$(DVIPS) -E math-2-commath.dvi -o math-2-commath.eps

math-2-ediff.eps: ../structheader.tex math-2-ediff.tex
	$(PREFIX)$(LATEX) math-2-ediff.tex
	$(PREFIX)$(DVIPS) -E math-2-ediff.dvi -o math-2-ediff.eps

math-2-int-0.eps: ../structheader.tex math-2-int-0.tex
	$(PREFIX)$(LATEX) math-2-int-0.tex
	$(PREFIX)$(DVIPS) -E math-2-int-0.dvi -o math-2-int-0.eps

math-2-int-1.eps: ../structheader.tex math-2-int-1.tex
	$(PREFIX)$(LATEX) math-2-int-1.tex
	$(PREFIX)$(DVIPS) -E math-2-int-1.dvi -o math-2-int-1.eps

math-2-int-3.eps: ../structheader.tex math-2-int-3.tex
	$(PREFIX)$(LATEX) math-2-int-3.tex
	$(PREFIX)$(DVIPS) -E math-2-int-3.dvi -o math-2-int-3.eps

math-2-matrix.eps: ../structheader.tex math-2-matrix.tex
	$(PREFIX)$(LATEX) math-2-matrix.tex
	$(PREFIX)$(DVIPS) -E math-2-matrix.dvi -o math-2-matrix.eps

math-2-tensor.eps: ../structheader.tex math-2-tensor.tex
	$(PREFIX)$(LATEX) math-2-tensor.tex
	$(PREFIX)$(DVIPS) -E math-2-tensor.dvi -o math-2-tensor.eps

math-2-CD.eps: ../structheader.tex math-2-CD.tex
	$(PREFIX)$(LATEX) math-2-CD.tex
	$(PREFIX)$(DVIPS) -E math-2-CD.dvi -o math-2-CD.eps

math-2-empheq.eps: ../structheader.tex math-2-empheq.tex
	$(PREFIX)$(LATEX) math-2-empheq.tex
	$(PREFIX)$(DVIPS) -E math-2-empheq.dvi -o math-2-empheq.eps

include ../rules-post.mk

