reset

set term post "Times" eps color solid enh
set output "eval-integrity-bench.eps"
#set terminal postscript "Helvetica" eps enhance dl 2 color

#set size ratio 0.60
set size 1.6,1
#set multiplot layout 1,5

#set size 1,0.9
#set size 1.6, 1

set origin 0,0

#set key font ",15"
#set key samplen 3 spacing 3.5 width 0.6 height 0.5 font ',20' #horizontal
#set key top right samplen 3 spacing 1 width 0.6 height 0.5 font ',36' #horizontal
#set key top outside  center samplen 3 spacing 1 width 0.6 height 0.5 font ',24' horizontal
set key top left samplen 3 spacing 1 font ',32' horizontal


set style data histogram
#set style histogram clustered gap 3
set style fill pattern 3 border -1
#set style fill solid border -1
#set style fill solid 0.5 border

set boxwidth 0.8 relative

set ylabel "Normalized time" font ",36"
set ylabel offset character -4, 0, 0
set yrange[0:10]
#set ytics font ",25"
set ytics font ",28"
#set log y 10
#set format y "%.1t"

set xrange[-0.6:6.6]
unset xtics
set xtics font ",36, Blod" #rotate by -24
set lmargin 15
set rmargin 8
set bmargin 3
set tmargin 3


set grid

set label "18*10^{13} "  	tc rgb "red"	font ",25" at -0.3, 4
set label "3.8*10^{13} "  	tc rgb "red"	font ",25" at 0.7, 6
set label "3.23*10^{13} "  	tc rgb "red"	font ",25" at 1.6, 3.5 
set label "1.36*10^{12} "  	tc rgb "red"	font ",25" at 2.5, 2.9
set label "9.86*10^{13} "  	tc rgb "red"	font ",25" at 3.6, 2.2
set label "2.07*10^{13} "  	tc rgb "red"	font ",25" at 4.9, 8.8 
set label "12.1*10^{13} "  	tc rgb "red"	font ",25" at 5.55, 2.8 




#set label "2"  		font ",15" at 1.1, 	-0.4 
#set label "4"  		font ",15" at 2.1, 	-0.4 
#set label "8"  		font ",15" at 3.1,	-0.4 
#set label "16" 		font ",15" at 4.1, 	-0.4 

#set arrow from 1,1000 to 0,700 head



#
##set label "S (0B)" 		center at 0,  2500	rotate by 0	font ",25"
##set label "S (4KB)" 	center at 1,  8100	rotate by 0	font ",25"
##set label "S-X (0B)"	center at 2,  1300	rotate by 0	font ",25"

#set label "3859" center at 2.3,  950	rotate by 0	font ",25"
#set label "1985" center at 3.3,  950	rotate by 0	font ",25"
#set label "1547" center at 7.1,  950	rotate by 0	font ",25"
#set label "5.189"  	center at 0.32,90	rotate by 90	font ",16"


#set label "Enclave size" center font "," at 1, -0.2

plot "eval-integrity-bench.txt" using 2:xticlabels(1) title columnheader(2) lc rgb "#F3759E"   fs patter 1,\
	     '' using 3:xticlabels(1) title columnheader(3) lc rgb "#77A656" fs patter 4,\
	     '' using 4:xticlabels(1) title columnheader(4) fs patter 7 lc rgb "#FFFFFF", \
	     '' using 5:xticlabels(1) title columnheader(5) fs patter 3 lc 3, \
	     '' using 6:xticlabels(1) title columnheader(6) fs patter 5 lc 6


