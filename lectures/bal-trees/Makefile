NAME=bal-trees

$(NAME).pdf : $(NAME).ps
	ps2pdf $< $@ 

$(NAME).ps : $(NAME).dvi
	dvips -o $@ $<

$(NAME).dvi : $(NAME).tex 
	latex $< && latex $<

clean :
	rm -f *.pdf *.ps *.dvi $(NAME).1* mpx* *.log *.mpx *.nav *.toc *.aux *.out *.snm
