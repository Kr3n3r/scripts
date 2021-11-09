# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que devuelve una lista de ficheros del directorio $1 del tipo $2
# entrada: bash ejer3_if11.sh /root txt

if [ $# -eq 2 ]; then
	file $1/*.$2
else
	echo "No has introducido 2 parámetros"
fi







