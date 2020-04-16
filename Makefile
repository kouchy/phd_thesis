PAPER=my_thesis
RUBBER=rubber
DEPS=titlepage chapter2_fig

.phony: all clean

all: $(DEPS)
	$(RUBBER) --unsafe -d $(PAPER)

titlepage: head/titlepage.tex
	cd head && $(RUBBER) -d titlepage.tex

chapter2_fig: main/chapter2/fig/vectorization/mandelbrot.gp \
              main/chapter2/fig/vectorization/data/perf_mandelbrot_32bit.dat \
              main/chapter2/fig/vectorization/data/perf_mandelbrot_64bit.dat
	cd main/chapter2/fig/vectorization/ && gnuplot mandelbrot.gp

clean:
	$(RUBBER) --clean -d $(PAPER)
	cd head && $(RUBBER) --clean -d titlepage.tex
	rm -f *.mtc*
	rm -f main/chapter2/fig/vectorization/mandelbrot_speedup.pdf
	rm -rf _minted*
	rm -rf build

open:
	xdg-open my_thesis.pdf &