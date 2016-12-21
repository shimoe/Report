#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp7.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"
set ylabel "y[m]"

set key right bottom reverse box Left


plot "../data/shimoe5.dat" using 1:2 with lines title "台車位置", "../data/shimoe5.dat" using 1:4 smooth bezier with lines title "台車位置の推定値", 0.25 title "目標位置"



set output "../picture/exp7_2.eps"

set ylabel "velocity[m/s]"

plot "../data/shimoe5.dat" using 1:6 with lines title "台車速度", "../data/shimoe5.dat" using 1:5 smooth bezier with lines title "台車速度の推定値"




set output "../picture/exp7_3.eps"

set ylabel "Input Voltage[V]"

plot "../data/shimoe5.dat" using 1:3 with lines title "入力電圧"

set output "../picture/buffer.eps"
