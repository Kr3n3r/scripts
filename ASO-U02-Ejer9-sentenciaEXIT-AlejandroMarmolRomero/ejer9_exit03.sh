# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que muestra si el comando "cat /etc/shadow" se ejecuta satisfactoriamente
# uso: bash ejer9_exit03.sh

cat /etc/shadow
if [ $? -eq 0 ]; then
	echo "Comando ejecutado satisfactoriamente"
	exit 0
else
	echo "Comando ejectutado con errores"
	exit 1
fi
