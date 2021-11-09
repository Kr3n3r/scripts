# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: calculadora
# uso: bash ejer2_case.sh

# 2. Realizar un script que nos muestra un menú para elegir la operación a realizar 
# 	 a dos números solicitados por teclado. Las operaciones que se pueden realizar son:
#    a) Suma
#    b) Resta
#    c) Multiplicación
#    d) División entera
#    e) Resto
#    f) ¿Es un numero par?. En este caso no se pedirá el segundo número.

clear
read -p "Introduce el primer número: " A
read -p "Introduce la opción[a-f]: " OPTION
if [ $OPTION != "f" ]; then
	read -p "Introduce el segundo número: " B
fi
case $OPTION in
		a) 
			resultado=$(expr $A + $B)
			echo "La suma de ambos es "$resultado
			;;
		b)
			resultado=$(expr $A - $B)
			echo "La resta de ambos es "$resultado
			;;
		c)
			resultado=$(expr $A \* $B)
			echo "La multiplicacion de ambos es "$resultado
			;;
		d)
			resultado=$(expr $A \ $B)
			echo "La resta de ambos es "$resultado
			;;
		e)
			resultado=$(expr $A % $B)
			echo "El resto es "$resultado
			;;
		f)
			echo "Has introducido un número par, no te pediré el segundo"
			;;
		*)
			echo "ERROR"
			;;
esac



