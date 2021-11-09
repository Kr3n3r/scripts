# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que devuelva una lista con los tipos de archivo que tiene un directorio($1)
#				que está comprobado que existe y si no ERROR
# entrada: bash ejer3_if05.sh /root

if test -d $1; then
	file $1/*
else
	echo "El directorio o no se encuentra o no existe"
fi
