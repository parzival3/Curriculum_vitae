# vim: set filetype ft=make:

ICONS_SVG=$(wildcard *_europass_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)
PDF_FOLDER=../pdf/

folder:
	mkdir ../pdf -p

icons: $(ICONS_SVG) $(ICONS_PDF)

%_europass_icon.pdf : %_europass_icon.svg folder
	inkscape $< --export-area-drawing --export-pdf ${PDF_FOLDER}$@



