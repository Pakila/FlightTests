rem Remove the old result file
del /Q aircraft\p51d\Results\%1.csv

rem Run the test 
Debug\JSBSim --script=aircraft\p51d\scripts\%1.xml  --outputlogfile=aircraft\p51d\Results\%1.csv>JSBSim.out --realtime

rem Generate gnuplot to the screen
gnuplot aircraft\p51d\plots\%1.p