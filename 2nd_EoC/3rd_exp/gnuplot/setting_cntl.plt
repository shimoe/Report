#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/step.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"
set ylabel "y[V]"

set key right bottom reverse box Left

plot "../data/step.dat" using 1:2 with dots title "channel 1", "../data/step.dat" using 1:3 with dots title "channel 2","../data/step.dat" using 1:4 with dots title "channel 3","../data/step.dat" using 1:5 with dots title "channel 4","../data/step.dat" using 1:6 with dots title "channel 5"


set output "../picture/buffer.eps"

