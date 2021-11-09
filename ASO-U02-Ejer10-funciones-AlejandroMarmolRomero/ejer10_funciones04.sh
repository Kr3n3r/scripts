# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script adaptado que usa funciones
# uso: $0 

function __main__(){
	lectura
	info
}
function lectura(){
	echo "Introduzca el Nombre del Fichero en el que desea guardar el contenido > "
	read fichfin
	touch $fichfin
	echo "Introduzca el numero de ficheros a introducir:"
	read num
}
function info(){
	for i in {1..$num}
	do
		echo -n "Introduzca el nombre del fichero del cual quiere extraer la informacion "
		echo -n "e introducir en $fichfin: " 
		read fich
		if [ -f $fich ];then
			cat $fich >> $fichfin
		else
			echo "El fichero no existe."
		fi
	done
}

clear
__main__
