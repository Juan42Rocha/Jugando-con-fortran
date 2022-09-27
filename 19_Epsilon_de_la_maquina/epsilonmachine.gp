set term pngcairo enhanced
set output "epsilonmachine.png"
set key left bottom
set title "Cálculo del Epsilon ({/Symbol \145}) de la Máquina "
set xlabel "Número de pasos"
set ylabel "Evolución del {f/Symbol \145}
set logscale x
set logscale y

set format x "10^{%L}"
set format y "10^{#L}"
set grid

plot "epsilonmachine.dat" every ::::63 u 1:2 w p pt 8 t\
     "Variable de coma Flotante simple presición",\
     "epsilonmachine.dat" every ::65 u 1:2 w p pt 6 t\
     "Variable de coma Flotante de doble Presición"
     
unset output

#para graficar desde la primera linea hasta la linea 100
#plot "my.dat" every :::: 100

#para graficar datos desde la linea 10 hasta la última 
#plot "my.dat" every ::10

#para graficar datos desde la linea 10 a la 100
#plot "my.dat" every ::10::100
