# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que hace la media de parámetros
# uso: bash ejer7_for07.sh [fichero] [directorio] [fichero distinto a archivo regular o directorio]
# ejemplo: bash ejer7_for07.sh /root/carpeta /root/fichero1.txt /dev/null

clear

for i in $@; do
	if [ -d $i ]; then
		echo "$i es un directorio regular"
	else
		if [ -f $i ]; then
			echo "$i es un fichero regular"
		else
			echo "$i es un fichero distinto a un archivo regular o directorio"
		fi
	fi
done

sleep $#s
clear




