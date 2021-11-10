# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que comprueba si hay conexión a una IP($IP_SERVIDOR) y lo guarda en un archivo
#			   .log($LOG)
# uso: $0

IP_SERVIDOR="aula.iesjulioverne.es."
LOG="ejer12_repaso_2.log"

function main(){
	if [[ $(id|grep "4(adm) -w") ]] || [[ $(id|grep "0(root)" -w) ]]; then
		while [ TRUE ]; do
			if ping $IP_SERVIDOR -c 1 &> /dev/null ; then
				echo "[$(date +%Y-%m-%d" "%H:%M:%S)] Conectado satisfactoriamente con aula.iesjulioverne.es." >> $LOG
			else
				echo "[$(date +%Y-%m-%d" "%H:%M:%S)] No hay conexión con aula.iesjulioverne.es." >> $LOG
			fi
			sleep 1s
		done
	else
		echo "No tienes permisos de administrador"
		exit 1
	fi
}
function exist(){
	if test -e $LOG;then
		rm $LOG
		touch $LOG
	else
		touch $LOG
	fi
}
clear

exist

main



