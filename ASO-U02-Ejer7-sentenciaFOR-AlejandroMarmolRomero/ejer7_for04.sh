# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script averigua el mayor número de los pasados por parámetros
# uso: bash ejer7_for04.sh [number 1] [number 2] ... [number n]

mayor=$1

for i in $@
do
	if [[ $i -ge $mayor ]]; then
		mayor=$i
	else
		continue
	fi
done
echo "El mayor es el número $mayor"
sleep 3s
clear
