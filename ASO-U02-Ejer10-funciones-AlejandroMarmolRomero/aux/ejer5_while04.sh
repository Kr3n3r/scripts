# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que hace suma y multiplicación de parámetros($[1-10])
# entrada: bash ejer5_while05.sh [$1] [$2] ... [$10]

#clear
resultadoproducto=1
resultadosuma=0
while [[ $1 != 0 ]]
do
	resultadosuma=$(($resultadosuma + $1)) 
	resultadoproducto=$(($resultadoproducto * $1))
	shift 1
done
echo "La suma es "$resultadosuma
echo "El producto es "$resultadoproducto
