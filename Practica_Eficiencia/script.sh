#!/bin/bash

#compilar los programas

g++ -o burbuja burbuja.cpp  -O2
g++ -o floyd floyd.cpp -O2
g++ -o hanoi hanoi.cpp -O2
g++ -o heapsort heapsort.cpp -O2
g++ -o insercion insercion.cpp -O2
g++ -o mergesort mergesort.cpp -O2
g++ -o quicksort quicksort.cpp -O2
g++ -o seleccion seleccion.cpp -O2

#ejecucion de los programas volcando su tiempo de ejecucion en un archivo


declare -a arr=("burbuja" "heapsort" "insercion" "mergesort" "quicksort" "seleccion")

for i in "${arr[@]}"
do
	let j=1
	echo ${i}
	while [[ $j -le 100000 ]]; do
		#statements
		echo $j
		echo "ejecucion de ${i} numero $j"
		./${i} $j >> "${i}.dat"
		let j=j+1000
	done
done

for ((i=1; i<=2900; i+100)); do
	echo "ejecucion de floyd numero $i"
  ./floyd $i >> floyd.dat
	let i=i+100
done

for ((i=1; i<=27; i++)); do
	echo "ejecucion de hanoi numero $i"
  ./hanoi $i >> hanoi.dat
done
