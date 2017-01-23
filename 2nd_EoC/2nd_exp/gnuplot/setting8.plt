#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp1.eps"

set xtics nomirror
set ytics nomirror

set xlabel "time[s]"
set ylabel "y"

set key right bottom reverse box Left

f(x) = a*(1-(e^(-B*t)/(1-T^2))*cos(c*t-d)

T=0.4
B=T*


plot "../data/data.dat" using 1:2 smooth bezier with linespoints title "Data points"  

set output "../picture/buffer.eps"