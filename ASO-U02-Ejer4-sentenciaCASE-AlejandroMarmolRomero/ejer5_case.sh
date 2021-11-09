# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que ejecuta ejecutables escritos en c
# entrada: bash ejer5_case.sh [start|stop|restart]

# Realiza la simulación de creación de un demonio. 
# Para ello crea un script que admita un argumento:
#  a) Si el argumento es la palabra “start” mostrará el mensaje "Iniciando aplicación …" 
#		y a continuación ejecutará el programa “/usr/bin/startpc”.
#  b) Si el argumento es la palabra “stop” mostrará el mensaje "Parando aplicación …" 
#		y a continuación ejecutará el programa “/usr/bin/stoppc”.
#  c) Si el argumento es la palabra “restart” mostrará el mensaje "Uso: $0 [start|stop]" .

CONTENIDO="#!/bin/bash 
echo "Programa iniciado""
START="/usr/bin/startpc.sh"
STOP="/usr/bin/stoppc.sh"

clear
if [ -e $START ] && [ -e $STOP ]; then
	clear
else
	touch $START
	touch $STOP
	echo $CONTENIDO | tee -a $START $STOP
	chmod +x $START
	chmod +x $STOP
fi

if [ $# -eq 1 ];then
	case $1 in
		start)
			echo "Iniciando aplicación ..."
			$START
			;;
		stop)
			echo "Parando aplicación ..."
			$STOP
			;;
		restart)
			echo "Uso: $0 [start|stop]"
			;;
		*)
			echo "Error, no has intoducido ningún valor aceptado"
			;;
	
	esac
else
	echo "No has introducido el argumento"
fi
