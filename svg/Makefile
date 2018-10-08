# vim: set filetype ft=make:

ICONS_SVG=$(wildcard *_europass_icon.svg)
ICONS_PDF=$(ICONS_SVG:.svg=.pdf)

icons: $(ICONS_SVG) $(ICONS_PDF)
%_europass_icon.pdf : %_europass_icon.svg
	inkscape $< --export-area-drawing --export-pdf ../pdf/$@



