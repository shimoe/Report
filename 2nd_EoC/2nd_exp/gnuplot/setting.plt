#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"
set ylabel "y[m]"

set key right bottom reverse box Left

plot "../data/data.dat" using 1:2 smooth bezier with linespoints title "Data points"  

set output "../picture/buffer.eps"

