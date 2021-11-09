# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que devuelve el tipo de todos los archivos de un directorio($1)
# entrada: bash ejer3_if10.sh /root

if [ $# -eq 1 ]; then
	if $(test -f $1); then
		echo "Has introducido un fichero"
	else
		file $1/*
	fi
else
	echo "No has pasado ningún parámetro o no existe ningún fichero o directorio con el nombre indicado"
fi
