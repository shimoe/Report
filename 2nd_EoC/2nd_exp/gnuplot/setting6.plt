#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp6.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"
set ylabel "y[m]"

set key right bottom reverse box Left


plot "../data/shimoe4.dat" using 1:2 with lines title "台車位置", "../data/shimoe4.dat" using 1:4 with lines title "台車位置の推定値", 0.25 title "目標位置"



set output "../picture/exp6_2.eps"

set ylabel "velocity[m/s]"

plot "../data/shimoe4.dat" using 1:6 with lines title "台車速度", "../data/shimoe4.dat" using 1:5 with lines title "台車速度の推定値"




set output "../picture/exp6_3.eps"

set ylabel "Input Voltage[V]"

plot "../data/shimoe4.dat" using 1:3 with lines title "入力電圧"

set output "../picture/buffer.eps"
