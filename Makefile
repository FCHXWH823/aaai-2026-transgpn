PAPER = main

.PHONY: all clean

all:
	pdflatex $(PAPER).tex
	bibtex $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

clean:
	rm -f $(PAPER).aux $(PAPER).bbl $(PAPER).blg \
	      $(PAPER).log $(PAPER).out $(PAPER).fls \
	      $(PAPER).fdb_latexmk *.synctex.gz $(PAPER).pdf
