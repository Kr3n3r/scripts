# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que muestra por pantalla la siguientes palabras en una línea cada una
# uso: bash ejer7_for02.sh [number]

clear
numero='^[0-9]+$'

if [[ $# = 1 && $1 =~ $numero ]]; then
	for i in {1..10}; do
		echo $1 x $i = $(($i*$1))
	done
else
	echo "uso: bash ejer7_for02.sh [number]"
fi
