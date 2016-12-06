set terminal wxt font "Arial,12"

#set terminal postscript eps enhanced color font "Arial,16"
#set output "../fig/data4dpt.eps"

set xtics nomirror
set xrange [0:420*5]
set xlabel "Time [s]"

set ytics nomirror
set yrange [0:60]
set ylabel "Water Level [cm]"

set key right center reverse
set key spacing 1.5 
set key box
set key width -5

#plot "data4.dat" with points pointtype 7 pointsize 0.5 title ": Experimental Result ", 47.67*(1+0.6592*exp(-x/90.7)-1.659*exp(-x/228.3)) title ": Time Response "
plot "data4.dat" with points pointtype 7 pointsize 0.5 title ": Experimental Result ", 50*(1+0.6592*exp(-x/90.7)-1.659*exp(-x/228.3)) title ": Time Response "
