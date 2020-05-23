set macro

# set text font and size
set terminal pdf enhanced font 'Helvetica,14' size 10,4
set encoding utf8

# start define plot styles ####################################################
# Palette URL:
# http://colorschemedesigner.com/#3K40zsOsOK-K-

red_000    = "#F9B7B0"
red_025    = "#F97A6D"
red_050    = "#E62B17"
red_075    = "#8F463F"
red_100    = "#6D0D03"

blue_000   = "#A9BDE6"
blue_025   = "#7297E6"
blue_050   = "#1D4599"
blue_075   = "#2F3F60"
blue_100   = "#031A49"

green_000  = "#A6EBB5"
green_025  = "#67EB84"
green_050  = "#11AD34"
green_075  = "#2F6C3D"
green_100  = "#025214"

brown_000  = "#F9E0B0"
brown_025  = "#F9C96D"
brown_050  = "#E69F17"
brown_075  = "#8F743F"
brown_100  = "#6D4903"

grid_color = "#6a6a6a"
text_color = "#6a6a6a"

my_line_width = "1.5"
my_axis_width = "1.2"
my_ps = "0.75"

set pointsize @my_ps

# this is to use the user-defined styles we just defined.
set style increment user

# set the color and width of the axis border
set border 31 lw @my_axis_width lc rgb text_color

# set key options
set key top right width -0 height 0 font 'Helvetica, 14'

# set grid color
set grid lc rgb grid_color

# end define plot styles ######################################################

set logscale x 2
set xtics ("2" 4, "3" 8, "4" 16, "5" 32, "6" 64, "7" 128, "8" 256, "9" 512, "10" 1024, "11" 2048, "12" 4096, "13" 8192, "14" 16384, "15" 32768, "16" 65536)

###############################################################################

set output "sc_gen_thr_intra_old.pdf"
set multiplot layout 1,2 title "{/:Bold=16 Intra frame vectorization (32-bit, float)}"

# set the style for the set 1, 2, 3...
set style line 1 linetype  4 linecolor rgbcolor  blue_050 linewidth @my_line_width
set style line 2 linetype  2 linecolor rgbcolor  blue_075 linewidth @my_line_width
set style line 3 linetype  5 linecolor rgbcolor green_050 linewidth @my_line_width
set style line 4 linetype  3 linecolor rgbcolor green_075 linewidth @my_line_width

set key on
set key top right width -3
set xrange [64:65536]
set xlabel "Codewords size (n = log2(N))"
set ylabel "Coded throughput (Mbit/s)"
set title "Intel Xeon CPU E31225 (AVX1 SIMD)"
datafile = "./dat/E31225_samples_intra_32b.dat"

# use 'point' instead of 'linespoint' for McGill since we don't have a
# full plot
#plot for [IDX=0:3] datafile using 1:14 i IDX with linespoint title columnheader(5)
plot datafile using 1:14 i 0 with linespoint title columnheader(5),\
     datafile using 1:14 i 1 with point ps 1.4 title columnheader(5),\
     datafile using 1:14 i 2 with linespoint title columnheader(5),\
     datafile using 1:14 i 3 with point ps 1.4 title columnheader(5)

# set the style for the set 1, 2, 3...
set style line 1 linetype  4 linecolor rgbcolor  blue_050 linewidth @my_line_width
set style line 2 linetype  5 linecolor rgbcolor green_050 linewidth @my_line_width

#set key top left width -2 height 0 font 'Helvetica, 14'
set key on # leave enabled since it is not identical to the previous one
set ylabel ""
set title "Nvidia Jetson TK1 CPU A15 (NEON SIMD)"
datafile = "./dat/A15_samples_intra_32b.dat"
plot for [IDX=0:1] datafile using 1:14 i IDX with linespoint title columnheader(5)

unset multiplot

###############################################################################
