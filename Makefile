SOURCE=Article

all:
	pdflatex -interaction=nonstopmode $(SOURCE).tex
	bibtex $(SOURCE).aux
	pdflatex -interaction=nonstopmode $(SOURCE).tex
	pdflatex -interaction=nonstopmode $(SOURCE).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(SOURCE).tex

clean:
	-rm $(SOURCE).aux $(SOURCE).bbl $(SOURCE).blg $(SOURCE).log $(SOURCE).maf $(SOURCE).mtc $(SOURCE).mtc0 $(SOURCE).spl $(SOURCE).out

forceClean:
	rm $(SOURCE).pdf 
