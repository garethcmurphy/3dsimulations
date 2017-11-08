#!/usr/bin/env gnuplot

set terminal epslatex color dashed "default" 10
set output "epslatex/columnwidth.eps"

# The default terminal size is 5 inches by 3 inches.
# Scale to the columnwidth which is 221.0 pt, where
# 1 pt = 1/72.27 in
set size (221.0/72.27)/5.0, 2/3.0

#plot sin(x)
plot   '/home/gmurphy/gnuplot/ascii0080.txt'  using 1:4 title 'Mass' with points

