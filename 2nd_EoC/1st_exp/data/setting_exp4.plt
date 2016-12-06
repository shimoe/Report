set terminal eps 

set output "../picture/exp4.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[s]"

set nokey


set ylabel "Current[mA]"
plot[0:1613] "kitayama.dat" using 1:2

set output "../picture/exp4_2.eps"
set ylabel "Water level[cm]"
plot[0:1613] "kitayama.dat" using 1:3


set output "aaa.eps"