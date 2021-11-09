# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que ordena las líneas de un archivo de texto($1) 
#				ascendente si $2=A y descendente si $2=Z
# entrada: bash ejer3_if12.sh fichero1.txt [A/Z]

if [ $2 = "Z" ]; then
	cat $1 | sort
else
	if [ $2 = "A" ]; then
		cat $1 | sort -r
	else
		echo "Introduce A v Z"
	fi
fi
