# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que al pasarle un argumento($1) indica si es un fichero o directorio 
# 				e indica el tamaño
# entrada: bash ejer3_if09.sh [/root / /root/fichero1.txt]

if $(test -d $1); then
	echo "Es un directorio"
	ls $1 -lFh | head -n 1
else
	echo "Es un fichero"
	du -bsh $1
fi


