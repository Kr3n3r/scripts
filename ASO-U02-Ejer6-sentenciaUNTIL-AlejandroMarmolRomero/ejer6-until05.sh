# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script de un menú para practicar bucles
# entrada: bash ejer5_until05.sh


until false
	do
		echo "1.-Hacer un listado del directorio actual" #ls -l .
		echo "2.-Ver la cantidad de memoria disponible" #free -m
		echo "3.-Ver estado de las unidades de almacenamiento" #df -h
		echo "0.-Salir"
		read BUCLE
		case $BUCLE in
			1)
				ls -l .
				;;
			2)
				free -m
				;;
			3)
				df -h
				;;
			0)
				break
				;;
			*)
				echo "Opción no disponible. Espere por favor"
				sleep 1s
				;;
		esac
		echo "Pulsa enter para continuar:" 
		read TECLA
		while [ $TECLA != "" ]
		do
			read TECLA
		done
		clear
done
echo "Has salido"

