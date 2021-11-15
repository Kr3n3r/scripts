# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que muestra el número de archivos del directorio actual(v2)
# uso: $0 

function cuenta_ficheros(){
	if [ $# -eq 1 ] && [ -d $1 ]; then
		local NDIRECTORY=`ls $1 | wc -l`
		echo -e "$1:\n \t $NDIRECTORY"
	else
		echo "No has introducido el parámetro bien"
	fi
	}

cuenta_ficheros /etc
cuenta_ficheros /usr
cuenta_ficheros /usr/bin

sleep 5s

clear
