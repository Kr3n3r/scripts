# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que lee 3 números y muestra el mayor de ellos
# entrada: bash ejer3_if03.sh

echo "Introduce el primer número:"
read a
echo "Introduce el segundo número:"
read b
echo "Introduce el tercer número:"
read c

if [ $a -ge $b ] && [ $a -ge $c ]; then
	echo "El número más grande es $a "
elif [ $b -ge $a ] && [ $b -ge $c ]; then
	echo "El número más grande es $b "
else
	echo "El número más grande es $c "
fi
