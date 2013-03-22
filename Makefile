CloudAssure.pdf: CloudAssure.tex CloudAssure.bib
	pdflatex CloudAssure.tex
	biber CloudAssure.aux
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl *.aux *.blg *.log *.xml *blx.bib *.bcf
