#lotka_volteera2.gp
#set term wxt persist size 800,600
set term pngcairo size 800,600
set output "Modelo_lotka_volterra.png"

set title "Población de conejos y linces"
set xlabel "Tiempo [años + 1900]"
set ylabel "Número de individuos"

set xrange [0:25]

set xtics 1
set ytics 5
set grid

plot "lotka_volterra.dat" u 1:2 w  lines lw 2 lt rgb "#ff0000" t "Conejos", \
      "NUM_CON_LIN.dat" u 1:2 w lp pt 7 lt rgb "#ff0000" t "Número de conjeos",\
      "lotka_volterra.dat" u 1:3 w lp pt 7 lt rgb "#0000ff" title "Linces", \
      "NUM_CON_LIN.dat" u 1:3 w lp pt 7 lt rgb "#0000ff" t "Número de Linces"

unset output
