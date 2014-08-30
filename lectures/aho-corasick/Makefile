NAME=ac
NAME2=kmp

$(NAME).pdf b: $(NAME).ps
	ps2pdf $< $@ 

$(NAME).ps : $(NAME).dvi
	dvips -o $@ $<

$(NAME).dvi : $(NAME).tex $(NAME).1.eps $(NAME).2.eps $(NAME).3.eps $(NAME).4.eps $(NAME2).1.eps $(NAME2).2.eps $(NAME2).3.eps $(NAME2).4.eps $(NAME2).5.eps $(NAME2).6.eps #$(NAME).5.eps $(NAME).6.eps # $(NAME).7.eps $(NAME).8.eps $(NAME).9.eps $(NAME).10.eps $(NAME).11.eps $(NAME).12.eps $(NAME).13.eps $(NAME).14.eps $(NAME).15.eps $(NAME).16.eps $(NAME).17.eps $(NAME).18.eps
	latex $< && latex $<

$(NAME).1 : $(NAME).mp 
	export TEX=latex && mpost $(NAME).mp || rm $@

$(NAME2).1 : $(NAME2).mp 
	export TEX=latex && mpost $(NAME2).mp || rm $@

clean :
	rm -f *.pdf *.ps *.dvi $(NAME).1*$(NAME2).1*  mpx* *.log *.mpx *aux *toc *nav *log *snm *vrb *out

tmp_file := tmp_file
preheader := preheader.tex

%.eps: % 
	cpp -DFNAME=$< -P eps.tmpl > $(tmp_file).tex && latex $(tmp_file).tex && dvips -E -o $@ $(tmp_file).dvi
	rm $(tmp_file).*

%.1 %.2 %.3 %.4 %.5 %.6 %.7 %.8 %.9 %.10 %.11 %.12 %.13 %.14 %.15 %.16 %.17 %.18 : %.mp
	mpost $<
