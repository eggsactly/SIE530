.PHONY: all
all: General-Notes.pdf formula-sheet.pdf

General-Notes.pdf: General-Notes.tex course-references.bib
	pdflatex $(patsubst %.tex, %, $<)
	bibtex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)

formula-sheet.pdf: formula-sheet.tex
	pdflatex $(patsubst %.tex, %, $<)

.PHONY: clean
clean:
	-rm -f *.pdf *.log *.out *.aux *.dvi *.blg *.bbl
	
