# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que muestra las tablas de un número($1)
# entrada: bash ejer5_while01.sh [n]

clear

i=0
while [ $i -le 10 ]
do
	producto=$(( $1 * $i ))
	echo $1 x $i = $producto
	i=$(($i+1))
done
