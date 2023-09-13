DOCNAME=main

all: report

.PHONY: clean

augustend:
	pdflatex "\def\augustend{1} \input{$(DOCNAME).tex}"
	cp main.pdf augustus-end.pdf

septemberstart:
	pdflatex "\def\septemberstart{1} \input{$(DOCNAME).tex}"
	cp main.pdf september-start.pdf

septemberend:
	pdflatex "\def\septemberend{1} \input{$(DOCNAME).tex}"
	cp main.pdf september-end.pdf

report:
	pdflatex $(DOCNAME).tex
	cp main.pdf target-per-maand.pdf

view: report
	evince $(DOCNAME).pdf

okular: report
	okular $(DOCNAME).pdf&

clean:
	rm *.blg *.bbl *.aux *.log *.out *.spl *.pdf
