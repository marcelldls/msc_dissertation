file=researchreport
ref=6f58d0c

all:
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm -rf *.dvi *.aux *.toc *.log *.out *.bbl *.blg *.synctex.gz *.lot *.lof *-diff.tex *-ref.tex

diff:
	git show $(ref):$(file).tex > $(file)-ref.tex
	latexdiff $(file)-ref.tex $(file).tex > $(file)-diff.tex
	pdflatex $(file)-diff.tex
	bibtex $(file)-diff
	pdflatex $(file)-diff.tex
	pdflatex $(file)-diff.tex
