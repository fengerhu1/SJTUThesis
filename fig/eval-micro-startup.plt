reset
set term post "Times" eps color solid enh
set output "eval-micro-startup.eps"

#set size ratio 0.5
set size 1,0.6
#set multiplot layout 1,2

# Figure for openwhisk
#set size 1, 0.55
set origin 0,0

#set key center at 3.7,30000 samplen 3 spacing 1 width 0.6 height 0.5 font ',25' #horizontal
#set key left samplen 3 spacing 1 width 0.6 height 0.5 font ',25' box opaque # horizontal
set key left width 0.5 height 0.5 font ',14.9' box opaque # horizontal

set border black


#set boxwidth 0.8 relative

#set ylabel "Time (ns)" font ",25"
set ylabel "Startup latency\n\n(million instructions)" font ",25" offset character -5, 0, 0 

#set ylabel offset character -1, 0, 0
#set yrange[50:500]
set ytics font ",30"
set log y 2

#set lmargin 15
#set bmargin 7
#set tmargin -10


set lmargin 16
set rmargin 8
set bmargin 5
set tmargin 1

set yrange [0.1: 60000] 
#noreverse nowriteback



set xrange[16:32770]
unset xtics
set xtics  nomirror  font ",30"
set xlabel "Eapp file size (Byte)"  font ",25" offset character 0, -1, 0
set log x 2

set label "0.34"  	tc rgb "red"	font ",25" at 33000, 0.9



#red 
set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 4 \
    pointtype 3 pointsize 2.1


#pink
set style line 2 lt 1 lc rgb "#F3759E" lw 4 pt 7 ps 2.1

#green
set style line 3 lt 1 lc rgb "#77A656" lw 4 pt 11 ps 2.1

#dark green
set style line 4 lt 1 lc rgb "#344035" lw 4 pt 8 ps 3

#dark green-2
set style line 5 lt 1 lc rgb "#344035" lw 4 pt 7 ps 3


#blue
set style line 6 lt 1 lc rgb "#00ADB5" lw 4 pt 9 ps 2.1



#lw 20 lc rgb "#00ADB5"


set grid


#set xtics font ",12, Blod"  offset 0,0,0
#unset xtics
set xtics font ",24" ("16K" 16,  "64K" 64, "256K" 256, "1M" 1024, "4M" 4096, "16M" 16384) 
set ytics font ",24" ("1" 1, "4" 4, "16" 16, "64" 64, "256" 256, "1K" 1024, "4K" 4096, "16K" 16384) 
#set lmargin 10
#set xtics 5


plot  'eval-micro-startup.txt' u 1:4 with linespoints linestyle 1 ti "Heimdallr-Baseline",\
        '' u 1:3 with linespoints linestyle 3 ti "Heimdallr-ShadowFork", \
        '' u 1:2 with linespoints linestyle 2 ti "Heimdallr-NoAttestation",\
        '' u 1:5 with linespoints linestyle 6 ti "Keystone"


