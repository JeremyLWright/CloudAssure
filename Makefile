CloudAssure.pdf: CloudAssure.tex CloudAssure.bib Makefile Chapters/TrustManagement.tex Chapters/Planning.tex Chapters/Conclusion.tex Chapters/Classification.tex
	pdflatex CloudAssure.tex
	makeglossaries CloudAssure
	biber CloudAssure
	pdflatex CloudAssure.tex
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl *.aux *.blg *.log *.xml *blx.bib *.bcf *.toc *.acn *.acr *.alg *.bib.bak *.glg *.glo *.gls *.ist *.out
	

distclean: clean
	rm -rf *.pdf
