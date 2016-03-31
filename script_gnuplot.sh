#!/bin/bash

#declare -a arr=("burbuja" "heapsort" "insercion" "mergesort" "quicksort" "seleccion" "floyd" "hanoi")
declare -a arr=("mergesort")
(for i in "${arr[@]}"
do
  echo "set xlabel 'Tamanio' "
  echo "set ylabel 'Tiempo(seg)' "
  echo "set terminal png"
  echo "plot '${i}.dat' title '--Eficiencia ${i}--' with points"
  echo "set output '${i}1.png'"
  echo "replot"
  echo "plot '${i}2.dat' title '--Eficiencia ${i}--' with points"
  echo "set output '${i}2.png'"
  echo "replot"
  echo "plot '${i}3.dat' title '--Eficiencia ${i}--' with points"
  echo "set output '${i}3.png'"
  echo "replot"
done) | /usr/bin/gnuplot
