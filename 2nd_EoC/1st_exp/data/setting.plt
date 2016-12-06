#set terminal wxt enhanced font "Arial, 16"

set terminal eps 

set output "../picture/exp3.eps"

set xtics nomirror
set ytics nomirror

set xlabel "Sumpling time[5s]"
set ylabel "Inflow[L/min]"

set key right bottom reverse box Left

#plot [4:20][0:30] "exp1.dat" smooth bezier with lines title "Approximate curve" , "exp1.dat" title "Data points" , 8*x-48 title "y = 8x - 48"  

#f(x)=a*x+b
#a=1
#b=1
#fit f(x) "exp2.dat" using 1:2 via a,b
#plot [3.5:54.8][0.129:5.6]"exp2.dat" title "Data points" , f(x) title "y = 0.106x - 0.234"


set nokey
plot [0:305] "20161012.dat" using 1:2 title "Data plots"

set key right bottom reverse box Left
set output "../picture/exp3_2.eps" 
set ylabel "Output Voltage[V]"
plot [0:305][0:4] "20161012.dat" using 1:3 title "Data plots", "20161012.dat" using 1:3 smooth bezier with lines title "Approximate curve" , 0.038*x+0.41, 3.65 title "y = 3.65"

set output "aaa.eps"
