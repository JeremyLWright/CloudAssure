CloudAssure.pdf: CloudAssure.tex CloudAssure.bib Makefile
	pdflatex CloudAssure.tex
	biber CloudAssure
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl *.aux *.blg *.log *.xml *blx.bib *.bcf *.toc

distclean: clean
	rm -rf *.pdf
