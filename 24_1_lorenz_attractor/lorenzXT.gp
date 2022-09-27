# lorenzXT.gp
#set term wxt persist
set term pngcairo enhanced
set output "L1.png"
plot "lorenz_attractor.dat" u 1:2 with lines
unset output
