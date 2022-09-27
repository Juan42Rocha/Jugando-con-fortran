# lorenz_attractor.gp

#set term wxt persist
set term png
set output "lorentz_attractor.png"

splot "lorenz_attractor.dat" u 2:3:4 with lines

unset output
