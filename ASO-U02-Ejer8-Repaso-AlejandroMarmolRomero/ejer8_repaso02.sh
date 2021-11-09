# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que analiza cuantos elementos tiene un directorio($1), su espacio en disco y
#			   redirige esos datos a un directorio($2) y hace un resumen en este
# uso: bash ejer8_repaso02.sh [directorio analizar] [directorio copia]


if [[ $# -eq 2 ]]; then
	if [ -d $1 ]; then
	
		if [ -d $2 ]; then
			echo "El directorio '$2' ya existe";
		else
			echo "El direcotorio '$2' no existe, procedo a crearlo"
			mkdir $2;
		fi
		
		FICHERO_SALIDA=$2/resumen
		FICHEROS=$(ls $1 -p | grep -v / 2> /dev/null)
		
		echo "LISTADO RESUMEN DE LOS FICHEROS DE ESTE DIRECTORIO: 
===================================================" > $FICHERO_SALIDA

		for line in $FICHEROS
		do
			NLINE=$(cat $1/$line 2> /dev/null | wc -l 2> /dev/null)
			NBYTES=$(du $1/$line 2> /dev/null | cut -f 1 2> /dev/null)
			if [[ $NLINE -gt 10 ]]; then
				cp $1/$line $2
				echo "$line tiene $NLINE líneas y ocupa $NBYTES bytes." >> $FICHERO_SALIDA 2> /dev/null
			fi
		done
		
		echo "El fichero ha sido creado. ¿Desea verlo?"
		read -n 1 RESPUESTA
		
		if [ $RESPUESTA = "s" ] || [ $RESPUESTA = "S" ]; then
			cat $FICHERO_SALIDA
			sleep 10
			echo "PROCESO FINALIZADO";
		else
			echo "PROCESO FINALIZADO";
		fi
		
	else
		echo "El parámetro 1 no es un direcotorio, o no existe"
		echo "Uso: $0 [directorio para copiar] [directorio copia]";
	fi
	
else
	echo "El directorio pasado por parámetro '$1' existe, pero te falta el segundo parámetro"
	echo "Uso: $0 [directorio para copiar] [directorio copia]";
fi
