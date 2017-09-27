set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

set tics font "Arial, 16"
set key font "Arial, 16"
set xlabel font "Arial, 16"
set ylabel font "Arial, 16"
# If you have graphical capabilities, you can plot on your screen
# if none of the other terminals is specificed.

   # This is how to output the plot in PostScript format
   #set terminal postscript portrait enhanced color lw 1 "Helvetica" 14 size 8.5,11
   
   # This is how to output the plot in PNG format
   # set terminal png size 1280,960
   # set output "aircraft/p51d/results/simple_roll.png"

   # This is how to output the plot in PDF format. (Not available on Mac)
   # set terminal pdfcairo color size 8.5,11
   # set output "aircraft/t6texan2/results/simple_roll.pdf"

set multiplot title ""
set size 1,0.30
set lmargin 10
set xrange [0:4]

set ytic auto 
set origin 0.0,0.00
set xlabel "Время,с"
set ylabel "Высота, м"
plot \
   "aircraft/p51d/results/simple_roll.csv" using 1:($43*0.3048) title "" with lines\


set origin 0.0,0.33
set ylabel "Угол тангажа, °"
set xlabel ""
plot \
   "aircraft/p51d/results/simple_roll.csv" using 1:33 title "" with lines\

set origin 0.0,0.66
set ylabel "Угол крена, °"
set xlabel ""
set yrange [-180:180]
set ytics 60
plot  \
   \
   "aircraft/p51d/results/simple_roll.csv" using 1:32 title "" with lines\

set ytic auto

   
unset multiplot                         # exit multiplot mode
pause -1 "Press ENTER to continue"