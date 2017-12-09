.PHONY: all
all: General-Notes.pdf formula-sheet-1.pdf formula-sheet-2.pdf

General-Notes.pdf: General-Notes.tex course-references.bib
	pdflatex $(patsubst %.tex, %, $<)
	bibtex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)

formula-sheet-1.pdf: formula-sheet-1.tex
	pdflatex $(patsubst %.tex, %, $<)

formula-sheet-2.pdf: formula-sheet-2.tex
	pdflatex $(patsubst %.tex, %, $<)

.PHONY: clean
clean:
	-rm -f *.pdf *.log *.out *.aux *.dvi *.blg *.bbl
	
