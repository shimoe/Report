#set terminal wxt font "Arial,12"

set terminal postscript eps enhanced color font "Arial,16"
set output "../fig/least_square.eps"

set xtics nomirror
set xrange [0:6]
set xlabel "Differential Pressure Transducer Output [V]"

set ytics nomirror
set yrange [0:60]
set ylabel "Water Level [cm]"

set key right bottom reverse
set key spacing 1.5
set key box
set key width -6

plot "data1.dat" with points pointtype 7 pointsize 0.5 title ": Result ", 9.4513*x+1.3272 title ": Approximate Straight "
