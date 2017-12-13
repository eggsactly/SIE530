.PHONY: all
all: General-Notes.pdf formula-sheet-1.pdf formula-sheet-2.pdf

General-Notes.pdf: General-Notes.tex course-references.bib remote.txt
	pdflatex $(patsubst %.tex, %, $<)
	bibtex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)
	pdflatex $(patsubst %.tex, %, $<)

formula-sheet-1.pdf: formula-sheet-1.tex remote.txt
	pdflatex $(patsubst %.tex, %, $<)

formula-sheet-2.pdf: formula-sheet-2.tex remote.txt
	pdflatex $(patsubst %.tex, %, $<)

remote.txt:
	git remote get-url origin > $@

.PHONY: clean
clean:
	-rm -f *.pdf *.log *.out *.aux *.dvi *.blg *.bbl remote.txt
	
