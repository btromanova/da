NAME=arithm

$(NAME).pdf : $(NAME).tex
	pdflatex $< && pdflatex $<

clean :
	rm -f *.pdf *.log *.mpx *.nav *.toc *.out *.aux *.snm *.vrb
