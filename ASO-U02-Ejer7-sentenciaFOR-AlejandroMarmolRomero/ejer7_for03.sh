# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que multiplica y suma x parámetros
# uso: bash ejer7_for03.sh [number 1] [number 2] ... [number n]

producto=1

for i in $@
do
	suma=$(($suma+$i))
	producto=$((producto*i))
done
echo "El resultado es: "$suma
echo "El producto es: "$producto

