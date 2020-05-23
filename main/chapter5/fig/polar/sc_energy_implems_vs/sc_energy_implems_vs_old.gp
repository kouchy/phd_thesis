set macro

set terminal pdf enhanced font 'Helvetica,10' size 4,3
set encoding utf8
set termoption dash
set tmargin 1.8
set bmargin 3.2

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

my_line_width = "2.0"
my_axis_width = "1.2"
my_ps = "0.65"

set pointsize @my_ps

# set the style for the set 1, 2, 3...
set style line 1 linetype 5  linecolor rgbcolor  blue_025 linewidth @my_line_width
set style line 2 linetype 4  linecolor rgbcolor  blue_050 linewidth @my_line_width
set style line 3 linetype 7  linecolor rgbcolor   red_025 linewidth @my_line_width
set style line 4 linetype 6  linecolor rgbcolor   red_050 linewidth @my_line_width
set style line 5 linetype 9  linecolor rgbcolor green_025 linewidth @my_line_width
set style line 6 linetype 8  linecolor rgbcolor green_050 linewidth @my_line_width
set style line 7 linetype 11 linecolor rgbcolor brown_025 linewidth @my_line_width
set style line 8 linetype 10 linecolor rgbcolor brown_050 linewidth @my_line_width

# this is to use the user-defined styles we just defined.
set style increment user

# set key options
set key bottom right width -2 height 0 font 'Helvetica, 10'

# set the color and width of the axis border
set border 31 lw @my_axis_width lc rgb text_color

# set grid color
set grid lc rgb grid_color

set logscale x
set xtics ("2^{8}" 256, "2^{10}" 1024, "2^{12}" 4096, "2^{14}" 16384, "2^{16}" 65536, "2^{18}" 262144, "2^{20}" 1048576)

set xlabel "Codeword size (N)"

###############################################################################

set output 'sc_energy_implems_vs_old.pdf'
#set multiplot layout 1,2 title "Energy consumption depending on the codeword size"
set multiplot layout 1,2
datafile = "dat/A15_1100MHz_R05_intra_inter_bis.dat"

set yrange [0 : 55]
set ylabel "Energy-per-bit (nJ)"
set key on
set title "Total (cluster + memory)"
plot datafile using 5:20 i 0 with linespoint title columnheader(1),\
     datafile using 5:20 i 1 with linespoint title columnheader(1),\
     datafile using 5:20 i 2 with linespoint title columnheader(1),\
     datafile using 5:20 i 3 with linespoint title columnheader(1)

set yrange [0 : 0.13]
set ylabel "Percentage of energy-per-bit (nJ)"
set ytics ("1%%" 0.01, "2%%" 0.02, "3%%" 0.03, "4%%" 0.04, "5%%" 0.05, "6%%" 0.06, "7%%" 0.07, "8%%" 0.08, "9%%" 0.09, "10%%" 0.10, "11%%" 0.11, "12%%" 0.12)
#set ytics ("2%%" 0.02, "4%%" 0.04, "6%%" 0.06, "8%%" 0.08, "10%%" 0.10, "12%%" 0.12)
set key off
set title "Memory only"
plot datafile using 5:(($20-$19)/$20) i 0 with linespoint title columnheader(1),\
     datafile using 5:(($20-$19)/$20) i 1 with linespoint title columnheader(1),\
     datafile using 5:(($20-$19)/$20) i 2 with linespoint title columnheader(1),\
     datafile using 5:(($20-$19)/$20) i 3 with linespoint title columnheader(1)

unset multiplot

