CloudAssure.pdf: CloudAssure.tex CloudAssure.bib
	pdflatex CloudAssure.tex
	bibtex CloudAssure.aux
	pdflatex CloudAssure.tex
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl
	rm -rf *.aux
	rm -rf *.blg
