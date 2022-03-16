set terminal epslatex size 4.4in,1.8in font ',8'
set output 'figura_01.tex'
set border 0

set xzeroaxis
set xtics axis
set xtics pi
set format x ''
set xrange [-2*pi:4*pi]
set arrow from -2*pi,0 to graph 1, first 0 filled head

set yzeroaxis
set ytics axis
set ytics 1
set format y ''
set yrange [-1.5:1.5]
set arrow from 0,-1.5 to first 0, graph 1 filled head

set label '$t$' at 4*pi,-0.3
set label '$f(t)$' at 0.4,1.5

set arrow from -2*pi,-1 to -2*pi,1 nohead lt 0 lw 2
set arrow from 0,-1 to 0,1 nohead lt 0 lw 2
set arrow from 2*pi,-1 to 2*pi,1 nohead lt 0 lw 2
set arrow from 4*pi,-1 to 4*pi,1 nohead lt 0 lw 2

set arrow from 0,0.4 to 2*pi,0.4 heads lt 2 lw 2
set label '$T$' at 0.92*pi,0.55

f(x)= sin(x)

plot f(x) lt 7 lw 3 notitle
