#!/usr/bin/env gnuplot
set terminal epslatex color dashed "default" 10
set output "epslatex/rj3b.eps"
XSCALE=1.15
YSCALE=1.15
set size XSCALE,YSCALE
set noxtics
set multiplot
set size 0.33*XSCALE,0.33*YSCALE
A=0.66*XSCALE
B=0.33*XSCALE
C=0.01*XSCALE
D=0.66*YSCALE
E=0.33*YSCALE
F=0.01*YSCALE
set origin C,D
plot   'rj3b.txt'  using 1:4 title '$\rho$' with lines
set origin B,D
plot  'rj3b.txt'  using 1:8 title '$p_g$' with lines
set origin A,D
plot  'rj3b.txt'  using 1:11 title 'E' with lines
set origin C,E
plot  'rj3b.txt'  using 1:5 title 'V$_x$' with lines
set origin B,E
plot  'rj3b.txt'  using 1:6 title 'V$_y$' with lines
set origin A,E
plot  'rj3b.txt'  using 1:7 title 'V$_z$' with lines
set origin C,F
plot  'rj3b.txt'  using 1:10 title 'B$_y$' with lines
set origin B,F
plot  'rj3b.txt'  using 1:9 title 'B$_z$' with lines
set origin A,F
plot  'rj3b.txt'  using 1:11 title '$\phi$' with lines
unset multiplot
