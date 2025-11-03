pdf: main.tex bibliography.bib
	# Passo 1: Compilação inicial para criar o .aux
	xelatex main.tex
	
	# Passo 2: Executa o Biber (corrigido!)
	biber main

	# Passo 3: Recompilação para incorporar a bibliografia
	xelatex main.tex

	# Passo 4: Recompilação final para resolver referências cruzadas
	xelatex main.tex

clean:
	rm -f *.aux *.log *.out *.toc *.nav *.snm *.bbl *.blg *.dvi *.lot *.lof *.fls *.fdb_latexmk *.run.xml *.bcf *.glo *.gls *.idx *.ind *.ist *.ilg