# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que averigua los usuarios humanos del sistema y los pasa a un archivo($1)
# uso: bash ejer8_repaso01.sh [fichero]

# LISTADO DE USUARIOS HUMANOS DEL SISTEMA: 
# ======================================== 
# root, cuyo nombre tiene 4 caracteres. 
# federico, cuyo nombre tiene 8 caracteres. 
# ofelia, cuyo nombre tiene 6 caracteres. 
# En total hay 3 usuarios humanos. 

LEER=$(cat /etc/passwd 2>/dev/null)
i=0

if [[ $# -eq 1 ]]; then
	touch $1
	echo "LISTADO DE USUARIOS HUMANOS DEL SISTEMA: 
========================================" > $1
	for line in $LEER
	do
		USERID=$(echo $line | cut -f3 -d:)
		USER=$(echo $line | cut -f1 -d:)
		if [ $USERID -ge 1000 -a $USER != "nobody" ] &> /dev/null; then #  opcionalmente añadir condición para incluir root
			echo -e "$USER, cuyo nombre tiene ${#USER} caracteres" >> $1 # opcionalmente usar $(expr length $USER)
			i=$(($i + 1))
		fi
	done
	echo -e "El número de usuarios humanos del sistema son $i" >> $1
else
	echo "Uso: $0 [nombre fichero salida]"
	sleep 3s
	exit 1;
fi
