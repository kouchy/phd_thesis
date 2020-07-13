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

# set the style for the set 1, 2, 3...
set style line 1 linetype  1 linecolor rgbcolor  blue_100 linewidth @my_line_width
set style line 2 linetype  2 linecolor rgbcolor  blue_050 linewidth @my_line_width
set style line 3 linetype  2 linecolor rgbcolor  blue_025 linewidth @my_line_width
set style line 4 linetype  6 linecolor rgbcolor   red_075 linewidth @my_line_width
set style line 5 linetype  3 linecolor rgbcolor green_050 linewidth @my_line_width
set style line 6 linetype  5 linecolor rgbcolor brown_025 linewidth @my_line_width
set style line 7 linetype  2 linecolor rgbcolor "#000000" linewidth @my_line_width


# this is to use the user-defined styles we just defined.
set style increment user

# set the color and width of the axis border
set border 31 lw @my_axis_width lc rgb text_color

# set key options
set key top right width -0 height 0 font 'Helvetica, 14' #box lt 1 lw 0.5 lc rgbcolor grid_color
#set key off

# set grid color
set grid y lc rgb grid_color

# configure gnuplot for ploting an histogram
set style data histogram
set style fill solid 0.7 border

# size of histogram
set boxwidth 0.25

# rotate legend of abscissa axe
set xtic rotate by -45 scale 0

# end define plot styles ######################################################

# configuration ---------------------------------------------------------------

set xlabel "Rate (R = K / N)"
set ylabel "Coded throughput (Mbit/s)"
set xtics ("1/5" 1, "1/2" 2, "5/6" 3, "9/10" 4)
set yrange [0:560]
set xrange [0:5]

# end configuration -----------------------------------------------------------

## begin histogram -------------------------------------------------------------

set output "./sc_tree_cut_old.pdf"
set multiplot layout 1,2 title "{/:Bold=16 Impact of the different optimizations on the throughput}"

set key off
set title "32-bit intra frame SIMD (AVX1)"
datafile = "./dat/E31225_samples_intra_32b_opti.dat"
#set output "./outputs/E31225_thr_intra_32b_opti.pdf"

plot datafile using 3:10          w boxes  title "spc2",\
     datafile using 3:11          w boxes  title "spc4",\
     datafile using 3:12          w boxes  title "spc6",\
     datafile using 3:9           w boxes  title "rep",\
     datafile using 3:8           w boxes  title "cut1",\
     datafile using 3:7           w boxes  title "cut0",\
     datafile using 3:6           w boxes  title "ref",\
     datafile using 3:($13+25):13 w labels title "" font "Helvetica,10"

set ylabel ""
set key on
set xtics ("1/5" 0.4, "1/2" 1.4, "5/6" 2.4, "9/10" 3.4)
set yrange [0:2000]
set title "8-bit inter frame SIMD (SSE4.1)"
datafile = "./dat/E31225_samples_inter_8b_opti.dat"
#set output "./outputs/E31225_thr_inter_8b_opti.pdf"
plot datafile using 3:10          w boxes  title "spc2",\
     datafile using 3:11          w boxes  title "spc4",\
     datafile using 3:12          w boxes  title "spc6",\
     datafile using 3:9           w boxes  title "rep",\
     datafile using 3:8           w boxes  title "cut1",\
     datafile using 3:7           w boxes  title "cut0",\
     datafile using 3:6           w boxes  title "ref",\
     datafile using 3:($13+75):13 w labels title "" font "Helvetica,10"

unset multiplot
# end histogram ---------------------------------------------------------------
