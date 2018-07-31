all:	main.tex main.bib
	pdflatex main.tex
	biber main
	pdflatex main.tex
	pdflatex main.tex

clean:
	@rm -f *.aux
	@rm -f *.idx
	@rm -f *.log
	@rm -f *.toc
	@rm -f *.bbl
	@rm -f *.tdo
	@rm -f *.blg
	@rm -f *.out
	@rm -f *.bcf
	@rm -f *.run.xml

cleanall: clean
	@rm -f main.pdf
