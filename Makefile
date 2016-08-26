filename=abntex2-modelo-projeto-pesquisa

all: $(filename).pdf

$(filename).pdf: $(filename).tex capitulos/tema.tex capitulos/delimitacao.tex capitulos/problema.tex capitulos/hipotese.tex capitulos/objetivos.tex capitulos/justificativa.tex capitulos/fundamentacao.tex capitulos/metodologia.tex capitulos/cronograma.tex capitulos/orcamento.tex
	pdflatex $(filename)
	bibtex $(filename)
	pdflatex $(filename)
	pdflatex $(filename)

read:
	evince $(filename).pdf &

aread:
	acroread $(filename).pdf

clean:
	-rm -f *.ps *.log *.aux *.out *.dvi *.bbl *.blg *.brf *.idx *.lot *.toc
