# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que muestra la manpage de un comando($1) y en caso de no pasar parámetro error
# entrada: bash ejer3_if07.sh cp

if [ $# -eq 1 ]; then 
	man $1
else
	echo "No se ha introducido un argumento"
fi






