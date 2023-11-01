
old=$1
latexdiff $old researchreport.tex > diff.tex
make -f makefile.diff
