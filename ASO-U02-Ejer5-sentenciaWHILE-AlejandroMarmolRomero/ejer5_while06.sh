# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que comprueba si un usuario está conectado al sistema con el comando who
# entrada: bash ejer5_while06.sh

read -p "Introduce el nombre del usuario > " USUARIO
while [ TRUE ]
do
	if $(who|grep "$USUARIO" &> /dev/null );then
		echo "El usuario $USUARIO está conectado"
		sleep 3
	else
		break;
	fi
done 
echo "El usuario $USUARIO está desconectado"
