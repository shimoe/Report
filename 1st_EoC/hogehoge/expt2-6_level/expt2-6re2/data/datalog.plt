#set terminal wxt font "Arial,12"

set terminal postscript eps enhanced color font "Arial,16"
set output "../fig/datalog.eps"

set xtics nomirror
set xrange [0:1]
set xlabel "x"

set ytics nomirror
set yrange [0:1]
set ylabel "y"

set key right center reverse
set key spacing 1.5
set key box
set key width -3

plot "datalog.dat" with linespoints pointtype 7 pointsize 0.5 title ": Result ", 0.765-x title ": 0.765-x ", x+0.33 title ": x+0.33 ", x-0.33 title ": x-0.33 "
