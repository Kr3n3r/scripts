# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que hace multiplicación sin multiplicar
# entrada: bash ejer6_until03.sh

clear

numero='^[1-9]+$'

read -p "Introduce el primer factor: " factor1
read -p "Introduce el segundo factor: " factor2

if [[ $factor1 =~ $numero && $factor2 =~ $numero ]]; then
	until [ $factor2 = 0 ]
	do
		resultado=$(($resultado + $factor1))
		factor2=$(($factor2 - 1))
	done
	echo "El resultado es "$resultado
else
	if [[ $factor1 == 0 || $factor2 == 0 ]]; then
		echo "El resultado es 0"
	else
		echo "Error en alguno de los factores introducidos."
		echo "Recuerda que el algoritmo está diseñado para números enteros y positivos"
	fi
fi
