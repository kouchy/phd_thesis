set macro

set terminal pdf enhanced font 'Helvetica,10' size 4,3
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
set style line 3 linetype  6 linecolor rgbcolor   red_075 linewidth @my_line_width
set style line 4 linetype  6 linecolor rgbcolor   red_050 linewidth @my_line_width
set style line 5 linetype  3 linecolor rgbcolor green_100 linewidth @my_line_width
set style line 6 linetype  3 linecolor rgbcolor green_050 linewidth @my_line_width
set style line 7 linetype  3 linecolor rgbcolor brown_100 linewidth @my_line_width
set style line 8 linetype  3 linecolor rgbcolor brown_050 linewidth @my_line_width
set style line 9 linetype  2 linecolor rgbcolor "#000000" linewidth @my_line_width

# this is to use the user-defined styles we just defined.
set style increment user

###############################################################################

set border 3 front linetype -1 linewidth 1.000 lc rgb text_color
set boxwidth 0.8 absolute
set style fill solid 1.00 noborder
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linetype 0 linewidth 1.000,  linetype 0 linewidth 1.000
set grid y lc rgb grid_color
set key bmargin center horizontal Left reverse noenhanced autotitles columnhead nobox
#set nokey
#unset key
set style histogram rowstacked title  offset character 2, 0.25, 0
set datafile missing '-'
set style data histograms
set style fill solid 0.7 border
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0 autojustify
set xtics  norangelimit font ",8"
set xtics   ()
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ztics border in scale 0,0 nomirror norotate  offset character 0, 0, 0 autojustify
set cbtics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set rtics axis in scale 0,0 nomirror norotate  offset character 0, 0, 0 autojustify
#set xlabel "(Same plot using rowstacked rather than clustered histogram)"
#set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Energy-per-bit (nJ)"
#set yrange [ 0.00000 : 900000. ] noreverse nowriteback
#i = 23

set yrange [0:30]

set output 'sc_energy_freq.pdf'

set multiplot layout 1,2 title "Energy consumption depending on the frequency (N = 4096)"

set title "ARM Cortex-A7"
plot newhistogram "{/:Bold=8 250MHz}", 'dat/A7_250MHz_550MHz_R05_N4096_intra_inter_bis.dat' u 2:xtic(1) t col, '' u ($3-$2) t col,\
     newhistogram "{/:Bold=8 350MHz}", ''                                                   u 4:xtic(1) t col, '' u ($5-$4) t col,\
     newhistogram "{/:Bold=8 450MHz}", ''                                                   u 6:xtic(1) t col, '' u ($7-$6) t col,\
     newhistogram "{/:Bold=8 550MHz}", ''                                                   u 8:xtic(1) t col, '' u ($9-$8) t col

set ylabel ""
set title "ARM Cortex-A15"
plot newhistogram "{/:Bold=8 800MHz}", 'dat/A15_800MHz_1400MHz_R05_N4096_intra_inter_bis.dat' u 2:xtic(1) t col, '' u ($3-$2) t col,\
     newhistogram "{/:Bold=8 900MHz}", ''                                                     u 4:xtic(1) t col, '' u ($5-$4) t col,\
     newhistogram "{/:Bold=8 1.0GHz}", ''                                                     u 6:xtic(1) t col, '' u ($7-$6) t col,\
     newhistogram "{/:Bold=8 1.1GHz}", ''                                                     u 8:xtic(1) t col, '' u ($9-$8) t col

unset multiplot
