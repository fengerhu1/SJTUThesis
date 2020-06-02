reset
set term post "Times" eps color solid enh
set output "eval-scale-memory.eps"


set size 1,0.5
set origin 0,0

#set key center at 3.7,30000 samplen 3 spacing 1 width 0.6 height 0.5 font ',25' #horizontal
#set key left samplen 3 spacing 1 width 0.6 height 0.5 font ',25' box opaque # horizontal
set key right width 0.6 height 0.5 font ',25' box opaque # horizontal

set border black


set boxwidth 0.8 relative

#set ylabel "Time (us)" font ",25"
set ylabel "Secure memory size\n\n(MB)" font ",20" offset character -2.5, 0, 0

#set ylabel offset character -1, 0, 0
#set yrange[50:120000]
set ytics font ",25"
#set log y 2
# set lmargin 20
set bmargin 5


set yrange [0: 650] 
#noreverse nowriteback



set xrange[-0.6:105.6]
unset xtics
#set xtics font ",20" ("0" 0, "16KB" 10,  "64KB" 30,  "256KB" 50, "1MB" 70,"4MB" 90,"16MB" 110,"64MB" 130) nomirror
set xtics  nomirror  50
set xtics font ",25" ("50" 50, "100" 100)
set xlabel "Time elapsed"  font ",25" offset character 0, -0.5, 0
    


#set xlabel "Argument Size" font ",30" offset character 0, -0.5, 0
#set format x "%.1t"
#set xlabel "Memory Size" font ",25" offset character 0, -0.5, 0




#red 
set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 2 \
    pointtype 3 pointsize 0.8


#pink
set style line 2 lt 1 lc rgb "#F3759E" lw 4 pt 7 ps 1.5

#green
set style line 3 lt 1 lc rgb "#77A656" lw 4 pt 11 ps 0.8

#dark green
set style line 4 lt 1 lc rgb "#344035" lw 4 pt 8 ps 0.8


#blue
set style line 5 lt 1 lc rgb "#3D80D9" lw 4 pt 8 ps 0.8



set grid



#set xtics font ",12, Blod"  offset 0,0,0
#unset xtics
#set xtics font ",20" ("0" 0, "10" 10, "20" 20, "30" 30, "40" 40, "50" 50) 
#set lmargin 10
#set xtics 5

set style fill pattern 4

plot  'eval-scale-memory.txt' u 1:2 linestyle 2 with filledcurves x   notitle, \
						''	  u 1:2   with linespoints  linestyle 2  ti "Heimdallr",




