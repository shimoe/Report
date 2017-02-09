#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/replot_500.eps"

set xtics nomirror
set ytics nomirror

set xlabel "time[10s]"
set ylabel "y(℃)"

set key right bottom reverse box Left

plot "../data/plot.dat" using 1:2 with dots title "data points","../data/replot.dat" using 1:6 with dots title "Theoretical value"


set output "../picture/buffer.eps"

