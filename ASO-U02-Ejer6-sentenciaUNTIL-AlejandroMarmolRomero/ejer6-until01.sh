# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que muestra las tablas de un número($1)
# entrada: bash ejer6_until01.sh [n]

clear

numero='^[0-9]+$'
i=1

if [ $# -eq 1 ] && [[ $1 =~ $numero ]];then
	until [ $i -gt 10 ]
	do
		producto=$(($1 * $i))
		echo $1 x $i = $producto
		i=$(($i + 1))
	done
else
	echo "Uso: $0 [n]"
fi
