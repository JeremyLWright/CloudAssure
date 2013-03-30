CloudAssure.pdf: CloudAssure.tex CloudAssure.bib Makefile Chapters/Planning.tex Chapters/Conclusion.tex Chapters/Classification.tex
	pdflatex CloudAssure.tex
	makeglossaries CloudAssure
	biber CloudAssure
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl *.aux *.blg *.log *.xml *blx.bib *.bcf *.toc

distclean: clean
	rm -rf *.pdf
