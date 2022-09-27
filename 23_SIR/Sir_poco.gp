#graficafr datos sir enfermedades contagiosas

#set term wxt persit enhanced
set term pngcairo enhanced
set output "SIR_poco.png"

set title "Evolución de una enfermedad poco infecciosa"
set xlabel "Tiempo [días]"
set ylabel "Proporción de población (unitaria)"

plot "Sir_poco.dat" u 1:2, "" u 1:3, "" u 1:4, "" u 1:($2+$3+$4)

unset output
