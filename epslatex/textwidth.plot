#!/usr/bin/env gnuplot

set terminal epslatex color dashed "default" 10
set output "epslatex/textwidth.eps"

# The default terminal size is 5 inches by 3 inches.
# Scale to the textwidth which is 452.0 pt, where
# 1 pt = 1/72.27 in
set size (452.0/72.27)/5.0, 2/3.0
#set size (452.0/72.27)/10.0, 2/6.0

set noxtics

#plot tan(x)
set multiplot
set size (452.0/72.27)/15.0, 2/9.0

A=0.66
B=0.33
C=0.01

D=0.44
E=0.22
F=0.01

set origin C,D
plot   'ascii0080.txt'  using 1:4 title 'Mass' with lines
set origin B,D
plot  'ascii0080.txt'  using 1:8 title 'Pressure' with lines
set origin A,D
plot  'ascii0080.txt'  using 1:11 title 'Energy' with lines
set origin C,E
plot  'ascii0080.txt'  using 1:5 title 'Vx' with lines
set origin B,E
plot  'ascii0080.txt'  using 1:6 title 'Vy' with lines
set origin A,E
plot  'ascii0080.txt'  using 1:7 title 'Vz' with lines
set origin C,F
plot  'ascii0080.txt'  using 1:10 title 'By' with lines
set origin B,F
plot  'ascii0080.txt'  using 1:9 title 'Bz' with lines
set origin A,F
plot  'ascii0080.txt'  using 1:11 title 'Bz' with lines



unset multiplot
