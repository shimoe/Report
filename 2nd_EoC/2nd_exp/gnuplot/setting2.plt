#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp2.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"
set ylabel "y[m]"

set key right bottom reverse box Left

plot "../data/data.dat" using 1:2 smooth bezier with linespoints title "Experimental value" , "../data/data2.dat" using 1:2 smooth bezier with linespoints title "Theoretical value"


set output "../picture/buffer.eps"

