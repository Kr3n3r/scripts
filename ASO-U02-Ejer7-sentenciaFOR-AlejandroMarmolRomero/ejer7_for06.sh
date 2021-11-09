# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que crea usuarios introducidos por el usuario
# uso: bash ejer7_for06.sh

read -p "Introduce los usuarios que se guardarán en una variable:" USUARIOS

for i in $USUARIOS
do
	if $(cat /etc/passwd|grep $i &> /dev/null); then
		echo "El usuario o grupo $i ya existe";
	else
		useradd $i
		echo "Usuario '$i' creado";
	fi
done
	
