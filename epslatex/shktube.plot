#!/usr/bin/env gnuplot
# Usage: "gnuplot plot" or "make plot"
reset
#set terminal latex
#set terminal eepic
set terminal epslatex color dashed "default" 10
set output "shktube.eps"

set size (221.0/72.27)/45.0, 2/27.0

set origin 0.0, 0.0
set multiplot
set size 0.33,0.33
set nogrid
#set xlabel 'x'
set multiplot
#set size square 0.3,0.3
#set ylabel 'Mass'
set noxtics

A=0.66
B=0.33
C=0.01

set origin C,A
plot 	 '/home/gmurphy/gnuplot/ascii0080.txt'  using 1:4 title 'Mass' with points 
set origin B,A
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:8 title 'Pressure' with points 
set origin A,A
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:11 title 'Energy' with points 
set origin C,B
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:5 title 'Vx' with points 
set origin B,B
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:6 title 'Vy' with points 
set origin A,B
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:7 title 'Vz' with points 
set origin C,C
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:10 title 'By' with points 
set origin B,C
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:9 title 'Bz' with points 
set origin A,C
plot	'/home/gmurphy/gnuplot/ascii0080.txt'  using 1:11 title 'Bz' with points 

unset multiplot
#set term postscript enhanced color
#set output "printme.ps"
#replot
