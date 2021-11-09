# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script para pasarle una señal($1) a un proceso id por PID($2)
# uso: bash ejer3_case.sh [1-3,9] [PID]

clear
if [ $# -eq 2 ]; then
	echo "La señal que se va a mandar es "$1
	sleep 3s
	case $1 in
		[1-3,9])
			kill -$1 $2
			;;
		*)
			echo "La señal que has pasado no es válida"
			;;
	esac
else
	echo "El uso del script es 'bash ejer3_case.sh [1,2,3,9] [PID]'" 
fi
