all:: sweaveBasicsOutline.pdf  sweaveBasics.pdf


TEXBIN=/usr/texbin
PDFLATEX:=${TEXBIN}/latex
TEXINPUTS:=.:build:

build ::
	test -d $@ || mkdir -p $@

%.pdf :: %.tex
	texi2dvi -b -p --tidy --build-dir=build $<


%.tex :: %.Rnw
	R CMD Sweave $<

sweaveBasicsOutline.pdf :: sweaveBasicsOutline.tex build

sweaveBasics.tex :: sweaveBasics.Rnw
	R CMD Sweave $<

sweaveBasics.pdf :: sweaveBasics.tex build



sweaveRevised.tex :: sweaveRevised.Rnw
	Rscript sweaveRevised.cmd