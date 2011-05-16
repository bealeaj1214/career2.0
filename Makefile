all:: sweaveBasicsOutline.pdf  sweaveBasics.pdf


TEXBIN=/usr/texbin
PDFLATEX:=${TEXBIN}/latex
TEXINPUTS:=.:build:

build ::
	test -d $@ || mkdir -p $@

sweaveBasicsOutline.pdf :: sweaveBasicsOutline.tex build
	texi2dvi -b -p --tidy --build-dir=build $<

sweaveBasics.tex :: sweaveBasics.Rnw
	R CMD Sweave $<

sweaveBasics.pdf :: sweaveBasics.tex build
	texi2dvi -b -p --tidy --build-dir=build $<


