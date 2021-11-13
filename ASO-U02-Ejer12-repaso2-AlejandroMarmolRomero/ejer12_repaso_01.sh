# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripción: script que sirve para detectar si se cambia la MAC del router de tu red
#			   y por tanto para detectar ataques MITM o Spoofing o simplemente para detectar
#			   cuando se cambia.
# uso: $0 

    
MAC_ORIGINAL=$(cat /proc/net/arp | grep $(route -n | grep UG | awk {'print $2'}) -w | awk {'print $4'})

function main(){
	while test TRUE; do
		MAC_ACTUAL=$(cat /proc/net/arp | grep $(route -n | grep UG | awk {'print $2'}) -w | awk {'print $4'})
		if [ $MAC_ORIGINAL = $MAC_ACTUAL ];then
			continue;
		else
			zenity --notification --text "CAMBIO DE MAC DETECTADA
			MAC ORIGINAL: $MAC_ORIGINAL
			MAC ACTUAL: $MAC_ACTUAL"
		fi
		sleep 2m;
	done
	}
main
