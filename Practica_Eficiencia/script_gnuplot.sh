#!/bin/bash

declare -a arr=("burbuja" "heapsort" "insercion" "mergesort" "quicksort" "seleccion" "floyd" "hanoi")
(for i in "${arr[@]}"
do
  echo "set xlabel 'Tamanio' "
  echo "set ylabel 'Tiempo(seg)' "
  echo "set terminal png"
  echo "plot '${i}.dat' title '--Eficiencia ${i}--' with points"
  echo "set output '${i}.png'"
  echo "replot"

done) | /usr/bin/gnuplot
