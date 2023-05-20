file=researchreport

all:
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm -rf *.dvi *.aux *.toc *.log *.out *.bbl *.blg *.synctex.gz *.lot *.lof
