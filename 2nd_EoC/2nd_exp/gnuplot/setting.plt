#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[5s]"
set ylabel "Inflow[L/min]"

set key right bottom reverse box Left

plot "../data/data.dat" using 1:2 smooth bezier with lines title "Approximate curve"  

set output "../picture/buffer.eps"

