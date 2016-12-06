#set terminal wxt font "Arial,12"

set terminal postscript eps enhanced color font "Arial,16"
set output "../fig/data2dpt.eps"

set xtics nomirror
set xrange [0:420]
set xlabel "Time [5s]"

set ytics nomirror
set yrange [1.5:5.5]
set ylabel "Differential Pressure Transducer Output [V]"

set key right center reverse
set key spacing 1.5 
set key box
set key width -3

plot "data2dpt.dat" with points pointtype 7 pointsize 0.5 title ": Result "
