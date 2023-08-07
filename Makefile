DOCNAME=main

all: report

.PHONY: clean

report:
	pdflatex $(DOCNAME).tex
	cp main.pdf target-per-maand.pdf

view: report
	evince $(DOCNAME).pdf

okular: report
	okular $(DOCNAME).pdf&

clean:
	rm *.blg *.bbl *.aux *.log *.out *.spl
