# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que simula un proceso, con sus correspondientes parámetros(ver "uso")
# uso: $0 [start|stop|status]

LOG="ejer12_repaso_3.log"

function main(){
	# Comprueba si se ha introducido parámetro y si el usuario tiene permisos de administración
	if test $# -eq 1;then
		if [[ $(id | grep "4(adm)" -w) ]] || [[ $(id | grep "0(root)" -w) ]]; then # Usar $EUID
			result=$(ps aux | grep -i "ejer12_repaso_02.sh" | grep -v "grep" | wc -l)
			case $1 in
				start)
					if [ $result -ge 1 ]; then
						echo "El proceso ya se está ejecutando."
						return 3
					else
						echo "El servicio no está activo"
						echo "[$(date +%Y-%m-%d" "%H:%M:%S)] --> Iniciando servicio" >> $LOG
						sleep 3s
						start &
					fi
					;;
				stop)
					if [ $result -ge 1 ]; then
						echo "Parando..."
						echo "[$(date +%Y-%m-%d" "%H:%M:%S)] *** Finalizando servicio..." >> $LOG
						stop
					else
						echo "El servicio no está activo"						
					fi
					;;
				status)
					status
					;;
				-h | --help)
					ayuda
					;;
				*)
					echo "Parámetro incorrecto"
					ayuda
					return 2
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

function start(){
	bash ejer12_repaso_02.sh &
	echo "Servicio iniciado"
}

function stop(){
	local PID=$(ps aux | grep -i "ejer12_repaso_02.sh" | grep -v "grep" | awk {'print $2'})
	kill -9 $PID
}

function status(){
	if [ $result -ge 1 ]; then
		echo "El servicio está activo"
		return 3
	else
		echo "El servicio no está activo"
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
# O hacerlo de esta manera
	#cat << HELP
#SYNOPIS
    #$0 start|stop|status
#DESCRIPCIÓN
    #Permite iniciar, parar y ver estado del servicio.
#CÓDIGOS DE RETORNO
    #0 - no hay ningún error.
    #1 - script no ejecutado como usuario root o administrador
    #2 - parámetro incorrecto
    #3 - el proceso ya se está ejecutando
#HELP
}

main $*


