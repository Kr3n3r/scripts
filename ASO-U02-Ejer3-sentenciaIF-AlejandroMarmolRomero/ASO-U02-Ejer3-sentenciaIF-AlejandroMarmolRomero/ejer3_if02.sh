# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que lee 2 números y muestra el mayor entre ellos
# entrada: bash ejer3_if02.sh

echo "Introduce un número"
read a
echo "Introduce otro número"
read b

if [ $a -ge $b ]; then
	if [ $a -eq $b ]; then
		echo "Los dos números son iguales"
	else
		echo "El número más grande es $a"
	fi
else
	echo "El número más grande es $b"
fi
