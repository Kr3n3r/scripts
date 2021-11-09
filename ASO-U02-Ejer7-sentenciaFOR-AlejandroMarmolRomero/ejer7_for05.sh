# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que hace la media de parámetros
# uso: bash ejer7_for05.sh [number 1] [number 2] ... [number n]

media=0

for i in $@
do
	media=$(($media + $i))
done
media=$(bc -l <<< $media/$#)
echo "La media es $media"
sleep 3s
clear
