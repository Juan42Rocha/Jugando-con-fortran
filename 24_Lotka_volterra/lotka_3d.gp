set term wxt persist 
#set term pngcairo enhanced
#set output "3D.png"

set xlabel "Población de Conejos"
set ylabel "Población de Linces
set zlabel "Tiempo [años]"


splot "lotka_volterra.dat" u 2:3:1 w lines,\
      "NUM_CON_LIN.dat" u 2:3:1 w  points 
#unset output
