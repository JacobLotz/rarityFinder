DOCNAME=main

all: report

.PHONY: clean

augustend:
	pdflatex "\def\augustend{1} \input{$(DOCNAME).tex}"
	cp main.pdf augustus-end.pdf

septemberstart:
	pdflatex "\def\septemberstart{1} \input{$(DOCNAME).tex}"
	cp main.pdf 09a-september-start.pdf

septemberend:
	pdflatex "\def\septemberend{1} \input{$(DOCNAME).tex}"
	cp main.pdf 09b-september-end.pdf

octoberstart:
	pdflatex "\def\octoberstart{1} \input{$(DOCNAME).tex}"
	cp main.pdf 10a-october-start.pdf

report:
	pdflatex $(DOCNAME).tex
	cp main.pdf target-per-maand.pdf

view: report
	evince $(DOCNAME).pdf

okular: report
	okular $(DOCNAME).pdf&

clean:
	rm *.blg *.bbl *.aux *.log *.out *.spl *.pdf
