#reset
#clear

j={0.0,1.0}
########伝達関数の記入################################################ 
L=77.75
T=348.5
R=2.65
K=1.123
I=208.6
TF(s)=(R*exp(-L*s))/(T*s+1)
#TF(s)=K*(1+ 1/I*s)*(R*exp(-L*s))/(T*s+1)
########周波数の範囲################################################## 
set xrange [0.001:0.004]
########以下は各種設定################################################ 
TF1(x)=TF(j*2*pi*x)	

set terminal eps
set output "../picture/bode4.eps"

set angles degrees
set format x "10^%01T"
set logscale x

#set multiplot
#set size 1.0,0.6
#set origin 0.0,0.4

set xlabel 'frequency [Hz]'

set key left bottom reverse box Left

set ytics nomirror
set ylabel 'Gain [dB]'
set yrange [-10:10]

set y2label 'Phase Shift [deg.]'
set y2tics
set y2range [-180:0]

plot 20*log10(abs(TF1(x))) title "Gain plot" , arg(TF1(x)) axes x1y2 title "Phase plot"

set output "./aaa.eps"

#unset multiplot

