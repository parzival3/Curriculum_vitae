# vim: set filetype ft=make:

all: pictures documentation

pictures:
	cd svg && $(MAKE)

documentation: europasscv.pdf

europasscv.pdf: europasscv.tex
	pdflatex $<
	pdflatex $<
europasscv_eng: europasscv_eng.tex
	pdflatex $<

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp image-eps-converted-to.pdf pdf/*.pdf

clean: distclean
	rm -f *.pdf

