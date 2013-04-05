CloudAssure.pdf: CloudAssure.tex CloudAssure.bib Makefile Chapters/TrustManagement.tex Chapters/Planning.tex Chapters/Conclusion.tex Chapters/Classification.tex Figures
	pdflatex CloudAssure.tex
	makeglossaries CloudAssure
	biber CloudAssure
	pdflatex CloudAssure.tex
	pdflatex CloudAssure.tex

clean:
	rm -rf *.bbl *.aux *.blg *.log *.xml *blx.bib *.bcf *.toc *.acn *.acr *.alg *.bib.bak *.glg *.glo *.gls *.ist *.out
	

Figures: Figures/DataPropagation.eps Figures/TrustValuePropagation.eps

Figures/TrustValuePropagation.eps: Figures/TrustValuePropagation.svg
	inkscape -z --export-eps=Figures/TrustValuePropagation.eps Figures/TrustValuePropagation.svg

Figures/DataPropagation.eps: Figures/DataPropagation.svg
	inkscape -z --export-eps=Figures/DataPropagation.eps Figures/DataPropagation.svg

distclean: clean
	rm -rf *.pdf
