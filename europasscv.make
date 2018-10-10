# vim: set filetype ft=make:

all: pictures documentation

pictures:
	cd svg && $(MAKE)

documentation: europasscv_it.pdf europasscv_eng.pdf

europasscv_it.pdf: europasscv_it.tex
	pdflatex $<
	pdflatex $<

europasscv_eng.pdf: europasscv_eng.tex
	pdflatex $<
	pdflatex $<

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp image-eps-converted-to.pdf pdf/*.pdf *.pdf

clean: distclean
	rm -f *.pdf

