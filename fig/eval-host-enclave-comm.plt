reset
set term post "Times" eps color solid enh
set output "eval-host-enclave-comm.eps"

set size ratio 0.65
#set size 1,1
#set multiplot layout 1,2

# Figure for openwhisk
#set size 1, 0.55
set origin 0,0

#set key center at 3.7,30000 samplen 3 spacing 1 width 0.6 height 0.5 font ',25' #horizontal
#set key left samplen 3 spacing 1 width 0.6 height 0.5 font ',25' box opaque # horizontal
set key left width 0.6 height 0.5 font ',28' box opaque # horizontal

set border black


#set boxwidth 0.8 relative

#set ylabel "Time (ns)" font ",25"
set ylabel "Latency (kinstructions)" font ",38" offset character -5, 0, 0

#set ylabel offset character -1, 0, 0
#set yrange[50:120000]
set ytics font ",30"
set log y 2

#set lmargin 15
#set bmargin 7
#set tmargin -10


set lmargin 13
set rmargin 8
set bmargin 3
set tmargin 2

set yrange [1: 885390] 
#noreverse nowriteback



set xrange[4:65536]
unset xtics
set xtics  nomirror  font ",30"
set xlabel "Message size (Byte)"  font ",40" offset character 0, -1, 0
set log x 2




#red 
set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 2 \
    pointtype 3 pointsize 0.8


#pink
set style line 2 lt 1 lc rgb "#F3759E" lw 4 pt 7 ps 3

#green
set style line 3 lt 1 lc rgb "#77A656" lw 4 pt 11 ps 3

#dark green
set style line 4 lt 1 lc rgb "#344035" lw 2 pt 8 ps 0.8


#dark green-2
set style line 5 lt 1 lc rgb "#344035" lw 4 pt 7 ps 3



set grid


#set xtics font ",12, Blod"  offset 0,0,0
#unset xtics
set xtics font ",30" ("4K" 4,"16K" 16, "64K" 64, "256K" 256, "1M" 1024, "4M" 4096, "16M" 16384, "64M" 65536)
#set ytics font ",24" ("4" 4, "256" 256, "1K" 1024, "64K" 65536, "1M" 1048576) 
set ytics font ",30" ("4" 4, "16" 16, "64" 64, "256" 256, "1K" 1024, "4K" 4096, "16K" 16384, "64K" 65536, "256K" 262144) 

#set lmargin 10
#set xtics 5


plot  'eval-host-enclave-comm.txt' u 1:2 with linespoints linestyle 2 ti "Heimdallr",\
        '' u 1:3 with linespoints linestyle 3 ti "Keystone"


