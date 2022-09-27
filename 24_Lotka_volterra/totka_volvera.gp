# totka_volverra.gp

set term  wxt persist
set term pngcairo enhanced size 800,600
#set output "Lin_vs_Con.png"
set output "Evol_Lin_vs_Con.png"

set title "Evolución Linces vs. Conejitos"
#set xlabel "Número de conejos"
#set ylabel "Númeor de linces"
set xlabel "Año (+ 1900)"
set ylabel "Población depredadora y presas"

plot "NUM_CON_LIN.dat" u 1:2 w lp pt 7 t "Conejos" , "" u 1:3 w lp pt 9 t "Linces" # lt rgb "#0000ff"
unset output
