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

#set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set terminal pdf enhanced font "arial,10" fontscale 1.0 size 12,4 
set output 'mandelbrot_speedup.pdf'
set bar 1.000000 front
set boxwidth 0.9 absolute
#set style fill solid 1.00 border lt -1
#set style circle radius graph 0.02, first 0.00000, 0.00000 
#set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
#set key inside right top vertical Right noreverse noenhanced autotitle nobox
# set key options
set key top right width -0 height 0 font 'arial, 10' #box lt 1 lw 0.5 lc rgbcolor grid_color

#set style histogram clustered gap 1 title textcolor lt -1
#set style textbox transparent margins  1.0,  1.0 border
set datafile missing '-'
set style data histograms
set style fill solid 0.5 border
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit 
set xtics   ()
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
#set title "Title" 
#set yrange [ 0.00000 : 300000. ] noreverse nowriteback
set yrange [ 0.00000 : 15.0 ] noreverse nowriteback
#set logscale y
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
# set grid color
set grid y lc rgb grid_color
#set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
set ylabel "Speedup" 
#set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front bdefault
#x = 0.0
#i = 23
## Last datafile plotted: "immigration.dat"
#plot 'data/immigration.dat' using 6:xtic(1) ti col, '' u 12 ti col, '' u 13 ti col, '' u 14 ti col

set multiplot layout 1,2

set key off
set title "Float 32-bit"
plot 'data/perf_mandelbrot_32bit.dat' using 2:xtic(1) ti col fillstyle pattern 6, '' u 3 ti col fillstyle pattern 1, '' u 4 ti col fillstyle pattern 2, '' u 5 ti col

set yrange [ 0.00000 : 6.5 ] noreverse nowriteback
set key on
set title "Float 64-bit"
set ylabel "" 
plot 'data/perf_mandelbrot_64bit.dat' using 2:xtic(1) ti col fillstyle pattern 6, '' u 3 ti col fillstyle pattern 1, '' u 4 ti col fillstyle pattern 2, '' u 5 ti col

unset multiplot