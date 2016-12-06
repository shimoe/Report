#set terminal wxt font "Arial,12"

set terminal postscript eps enhanced color font "Arial,16"
set output "../fig/data2diff.eps"

set xtics nomirror
set xrange [0:420]
set xlabel "Time [5s]"

set ytics nomirror
set yrange [-0.05:0.1]
set ylabel "Differential Pressure Transducer Output [V]"

set key right top reverse
set key spacing 1.5 
set key box
set key width -8

plot "data2diff.dat" with points pointtype 7 pointsize 0.5 title ": Difference between the next values ", 0.054 title ": 0.054 "
