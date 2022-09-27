# lorenzXT.gp
set term wxt persist

splot "lorenz_attractor.dat" u 2:3:4 with lines
