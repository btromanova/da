NAME=dp

$(NAME).pdf b: $(NAME).ps
	ps2pdf $< $@ 

$(NAME).ps : $(NAME).dvi
	dvips -o $@ $<

$(NAME).dvi : $(NAME).tex
	latex $< && latex $<

clean :
	rm -f *.pdf *.ps *.dvi $(NAME).1* mpx* *.log *.mpx *out *nav *toc *snm *log *aux
