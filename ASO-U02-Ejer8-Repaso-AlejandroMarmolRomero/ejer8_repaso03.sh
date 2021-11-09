# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que cambia de dueño o grupo propietario de un direcotorio o fichero(1) 
#			   a un usuario o grupo dado($3)
# uso: $0 [directorio | fichero] ['usuario' | 'grupo'] [usuario | grupo]


if [ -d $1 ] || [ -f $1 ]; then
	case $2 in
		usuario)
			if $(cut -d : -f 1 /etc/passwd | grep $3); then
				chown $3 $1 -R
				echo "Ahora el usuario $3 es el dueño de $1"
			else
				echo "El parámetro introducido '$3' no coincide con ningún usuario del sistema"
				echo "Uso: $0 [directorio | fichero] ['usuario' | 'grupo'] [usuario | grupo]"
				exit 1
			fi
			;;
		grupo)
			if $(cut -d : -f 1 /etc/group | grep $3); then
				chown :$3 $1 -R
				echo "Ahora el grupo $3 es el dueño de $1"
			else
				echo "El parámetro introducido '$3' no coincide con ningún grupo del sistema"
				echo "Uso: $0 [directorio | fichero] ['usuario' | 'grupo'] [usuario | grupo]"
				exit 1
			fi
			;;
		*)
			echo "No has introducido ni 'grupo' ni 'usuario'"
			echo "Uso: $0 [directorio | fichero] ['usuario' | 'grupo'] [usuario | grupo]"
			exit 1
			;;
	esac
else
	echo "No has introducido como '$1' ni un fichero ni un directorio"
	exit 1
fi
