#set terminal wxt font "Arial,12"

set terminal postscript eps enhanced color font "Arial,16"
set output "../fig/data2lines.eps"

set xtics nomirror
set xrange [0:420]
set xlabel "Time [5s]"

set ytics nomirror
set yrange [1.5:5.5]
set ylabel "Differential Pressure Transducer Output [V]"

set key right center reverse
set key spacing 1.5 
set key box
set key width -2

plot "data2dpt.dat" with points pointtype 7 pointsize 0.5 title ": Result ", 0.04*x+2.488-34*0.04 title ": Tangent ", 1.707 title ": 1.707 ", 5.043 title ": 5.043 ", 2.488 title ": 2.488 "
