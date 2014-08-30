NAME=patricia

$(NAME).pdf : $(NAME).tex pat*.eps keytree.eps
	pdflatex $< && pdflatex $<

clean :
	rm -f *.pdf *.log *.mpx *.nav *.toc *.out *.aux *.snm *.vrb
