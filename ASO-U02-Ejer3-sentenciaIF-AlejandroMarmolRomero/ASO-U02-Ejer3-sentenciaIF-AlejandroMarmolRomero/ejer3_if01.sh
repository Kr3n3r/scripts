# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que pide el nombre de un directorio($DIRECTORIO) y copia todo su contenido
#				al directorio ~/BACKUP. En caso de que no exista el directorio, ERROR
# entrada: bash ejer3_if01.sh

echo "Introduce el nombre del directorio:"
read DIRECTORIO
if $(test -d $DIRECTORIO); then
	cp $DIRECTORIO/* ~/BACKUP &> /dev/null
	echo "Los archivos han sido copiados al directorio ~/BACKUP"
else
	echo "El directorio no existe"
fi
