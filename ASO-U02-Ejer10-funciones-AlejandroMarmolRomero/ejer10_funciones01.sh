# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que muestra el número de archivos del directorio actual
# uso: $0 

clear

function fcounter(){
	local NDIRECTORY=`ls . | wc -l`
	echo "El número de archivos del directorio actual($PWD) es $NDIRECTORY"
	}

fcounter

sleep 3s

clear
