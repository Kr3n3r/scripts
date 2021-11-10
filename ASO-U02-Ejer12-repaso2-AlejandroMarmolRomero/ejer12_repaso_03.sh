# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que comprueba si hay conexión a una IP($IP_SERVIDOR) y lo guarda en un archivo
#			   .log($LOG)
# uso: $0

# Haz un script que permita ejecutar el script del ejercicio anterior como si fuera un servicio de linux. 
# Para ello debes implementar una función que permita iniciar el servicio, 
# otra que permita pararlo y por último otra que permita ver el estado. 
# Además, debes tener en cuenta lo siguiente:
    #OK) El script debe ejecutarse con permisos de administrador. 
	   #En caso contrario mostrará un mensaje en la terminal indicándolo y 
	   #saldrá con estado de salida 1.
    #b) Si el script recibe como primer parámetro '-h' o '--help' 
    #deberá mostrar en la terminal el siguiente mensaje que deberá estar programado 
    #en una función llamada ayuda():
#SYNOPIS
    #$0 start|stop|status
#DESCRIPCIÓN
    #Permite iniciar, parar y ver estado del servicio.
#CÓDIGOS DE RETORNO
    #0 - no hay ningún error.
    #1 - script no ejecutado como usuario root o administrador
	#2 - parámetro incorrecto
	#3 - el proceso ya se está ejecutando
    #c) Este script tendrá un fichero log llamado “ejer12_repaso_3.log”.
    #d) Si el script recibe como primer parámetro:
    #• start: inicia el servicio. Creará un registro en el fichero log con el siguiente formato de texto:
          #[2018-12-11_00:25:46] --> Iniciando servicio...
    #• stop: para el servicio, es decir, debe eliminar el proceso. Además creará un registro en el fichero log con el siguiente formato:
      #[2018-12-11_00:28:54] *** Finalizando servicio...
    #• status: indica el estado en el que está el servicio mediante un mensaje en la terminal.
    #• En cualquier otro caso no indicado anteriormente mostrará el mensaje “Parámetro   incorrecto”, mostrará el mismo mensaje que sale cuando se usar el parámetro -h (ayuda) y saldrá con estado de salida 2.
    #e) El servicio solo se puede ejecutar si no está ya ejecutándose. En caso de querer ejecutarlo estando en ejecución mostrará el mensaje “El proceso ya se está ejecutando.” y saldrá con código de salida 3.

LOG="ejer12_repaso_2.log"

function main(){
	# Comprueba si se ha introducido parámetro y si el usuario tiene permisos de administración
	if test $# -eq 1;then
		if [[ $(id|grep "4(adm) -w") ]] || [[ $(id|grep "0(root)" -w) ]]; then
			# Comprueba si el fichero log existe
			if test -e $LOG;then
				rm $LOG
				touch $LOG
			else
				touch $LOG
			fi
			case $1 in
				start)
					result=`ps aux | grep -i "ejer12_repaso_03.sh" | grep -v "grep" | wc -l`
					if [ $result -ge 1 ]; then
						echo "El servicio está activo. No se puede iniciar"
						return 3
					else
						echo "Iniciando servicio..."
						start
					fi
					;;
				stop)
					;;
				status)
					;;
				-h | --help)
					ayuda
					;;
				*)
					;;
			esac
		else
			echo "No posees permisos de administrador"
			return 1
		fi
	else
		echo "Debes introducir un solo parámetro"
		echo "Uso: $0 [start|stop|status]"
	fi
}
function ayuda(){
	echo "SYNOPIS
    $0 start|stop|status
DESCRIPCIÓN
    Permite iniciar, parar y ver estado del servicio.
CÓDIGOS DE RETORNO
    0 - no hay ningún error.
    1 - script no ejecutado como usuario root o administrador
	2 - parámetro incorrecto
	3 - el proceso ya se está ejecutando"
}

main $1


