PAPER=my_thesis
RUBBER=rubber
DEPS=titlepage

.phony: all clean

all: $(DEPS)
	$(RUBBER) -d $(PAPER)

titlepage: head/titlepage.tex
	cd head && $(RUBBER) -d titlepage.tex

clean:
	$(RUBBER) --clean -d $(PAPER)
	cd head && $(RUBBER) --clean -d titlepage.tex
	rm -f *.mtc*

open:
	xdg-open my_thesis.pdf &