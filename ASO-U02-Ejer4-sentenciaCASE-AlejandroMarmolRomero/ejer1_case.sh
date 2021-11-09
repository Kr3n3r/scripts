# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que dice al pulsar una tecla, si es letra, numero o carácter especial.
# entrada: bash ejer1_case.sh

read -n 1 -p "Pulsa una tecla: " tecla
case $tecla in
	[a-z,A-Z])
		echo
		echo "Es una letra"
		;;
	[0-1])
		echo
		echo "Es un número"
		;;
	*)
		echo
		echo "Es un caracter especial"
		;;
esac
