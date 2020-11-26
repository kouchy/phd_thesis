.phony: all clean mrproper

all: slides.tex
	rubber --unsafe -d slides.tex

clean: slides.tex
	rubber --clean slides

mrproper: slides.tex
	rubber --clean -d slides.tex

open:
	xdg-open slides.pdf &
