# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que muestra un menú que ejecuta los diferentes scripts del ejer5_while
# uso: $0 

function menu(){
	while [ TRUE ]; do
		echo "MENU DEL EJERCICIO 5
--------------------
1.- Apartado 1
2.- Apartado 2
3.- Apartado 3
4.- Apartado 4
5.- Apartado 5
6.- Apartado 6

0.- Salir"
		read -n 1 op
		echo
		case $op in
			[1-6])
				exscript $op
				;;
			0)
				return 0
				;;
			*)
				echo "Opcion no disponible. Espere por favor…"
				sleep 1s
				;;
		esac
		read -n 1 -p "Pulsa una tecla para continuar..." enter
		clear
		done
}
function exscript(){
	if [ $op -eq 4 ]; then
		echo "Introduce los parámetros para la función 4 separados por espacios > "
		read parameters
		bash aux/ejer5_while0$1.sh $parameters
	elif [ $op -eq 1 ]; then
		echo "Introduce un número para calcular sus tablas de multiplicar > "
		read number
		bash aux/ejer5_while0$1.sh $number
	else
		bash aux/ejer5_while0$1.sh
	fi
	}

menu

clear

