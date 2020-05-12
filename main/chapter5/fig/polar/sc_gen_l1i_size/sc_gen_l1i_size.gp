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

my_line_width = "4.5"
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

set logscale y 2
set xtics ("6" 6, "7" 7, "8" 8, "9" 9, "10" 10, "11" 11, "12" 12, "13" 13, "14" 14, "15" 15, "16" 16)

set terminal pdf enhanced font 'Helvetica,14' size 4,3

# set the style for the set 1, 2, 3...
set style line 1 linetype 1 linecolor rgbcolor  blue_050 linewidth @my_line_width
set style line 2 linetype 2 linecolor rgbcolor green_050 linewidth @my_line_width
set style line 3 linetype 3 linecolor rgbcolor brown_050 linewidth @my_line_width
set style line 4 linetype 7 linecolor rgbcolor   red_050 linewidth @my_line_width

set output "./sc_gen_l1i_size_small.pdf"

set key on
set key top left width -3
set xrange [6:16]
set xlabel "Codewords size (n = log2(N))"
set ylabel "Decoder binary size (KB)"
set title "P-EDGE generated decoder binary sizes (R=1/2)"
datafile = "./dat/samples_generated_decoders_sizes.dat"

plot datafile using 1:2 with linespoint title "32-bit Inter-SIMD",\
     datafile using 1:4 with linespoint title "32-bit Intra-SIMD",\
     datafile using 1:6 with linespoint title "8-bit  Intra-SIMD",\
     (x*0+32)           with lines      title "L1I size"

###############################################################################

set terminal pdf enhanced font 'Helvetica,14' size 10,4

set output "./sc_gen_l1i_size.pdf"
# set multiplot layout 1,2 title "{/:Bold=16 P-EDGE generated decoder binary sizes depending on the frame size (R=1/2)}"
set multiplot layout 1,2

set key on
set key top left width -3
set xrange [6:16]
set xlabel "Codewords size (n = log2(N))"
set ylabel "Decoder binary size (KB)"
set title "Without compression"
datafile = "./dat/samples_generated_decoders_sizes.dat"

plot datafile using 1:2 with linespoint title "32-bit Inter-SIMD",\
     datafile using 1:4 with linespoint title "32-bit Intra-SIMD",\
     datafile using 1:6 with linespoint title "8-bit  Intra-SIMD",\
     (x*0+32)           with lines      title "L1I size"

set arrow from 12,2 to 12,7 linetype 1 linecolor rgbcolor "#000000" linewidth 4.5
set label "Enable sub-tree folding" at 10,1.5 font 'Helvetica,18'

set key off # leave enabled since it is not identical to the previous one
set ylabel ""
set title "With compression"
datafile = "./dat/samples_generated_decoders_sizes_after_compression.dat"
plot datafile using 1:2 i 0 with linespoint title "32-bit inter r=1/2",\
     datafile using 1:4 i 0 with linespoint title "32-bit intra r=1/2",\
     datafile using 1:6 i 0 with linespoint title "8-bit  intra r=1/2",\
     (x*0+32)               with lines      title "L1I size"

unset multiplot

###############################################################################
