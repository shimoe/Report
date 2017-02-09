#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/t-z_500.eps"

set xtics nomirror
set ytics nomirror

set xlabel "time[10s]"
set ylabel "z(t)"

set key right top reverse box Left

fit a*x+b "../data/t-z.dat" using 1:6 via a,b
plot a*x+b title "-0.00615x+3.49", "../data/t-z.dat" using 1:6 with dots title "data points"


set output "../picture/buffer.eps"

