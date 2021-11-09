# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que hace multiplicación sin multiplicar
# entrada: bash ejer5_while03.sh

clear

read -p "Introduce el primer factor: " factor1
read -p "Introduce el segundo factor: " factor2

while [ $factor2 != 0 ]
do
	resultado=$(($resultado + $factor1))
	factor2=$(($factor2 - 1))
done
echo "El resultado es "$resultado
