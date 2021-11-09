# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que al pasarle $1 determina si es fichero, directorio o si no existe
# entrada: bash ejer3_if08.sh [/root / /root/fichero1.txt]

if $(file $1 &> /dev/null | grep $1); then
	if $(test -d $1); then
		echo "Es un directorio"
	else
		echo "Es un fichero"
	fi
else
	echo "El parámetro no existe"
fi
