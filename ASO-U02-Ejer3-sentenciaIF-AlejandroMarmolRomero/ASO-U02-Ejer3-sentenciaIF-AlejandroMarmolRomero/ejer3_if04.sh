# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que al ejecutarlo como root(comprobar), reinicia el equipo en 1 min
# entrada: bash ejer3_if04.sh

if [ $EUID -eq 0 ]; then
	shutdown -r +5
else
	echo "No eres administrador"
fi
