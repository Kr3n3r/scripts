# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que comprueba tipo de archivo
# uso: bash ejer9_exit02.sh [archivo/directorio]

if [ -f $1 ]; then
	echo "$1 es un archivo normal"
	sleep 3s
	exit 0
elif [ -d $1 ]; then
	echo "$1 es un directorio normal"
	sleep 3s
	exit 1
elif [ -e $1 ]; then
	echo "$1 es otro tipo de archivo"
	sleep 3s
	exit 2
else
	echo "El argumento no existe"
	sleep 1s
fi
clear
