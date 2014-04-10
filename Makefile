
all: paper.pdf

paper.pdf: Makefile paper.tex \
		refs.bib introduction.tex \
		language.tex virtual_machine.tex \
		conclusions.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.toc *.log *.aux paper.pdf *.bbl *.blg
