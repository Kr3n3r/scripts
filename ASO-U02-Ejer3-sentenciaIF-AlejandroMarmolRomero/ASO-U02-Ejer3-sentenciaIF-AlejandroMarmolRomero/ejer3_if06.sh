# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script que comprueba si un demonio($1) está activo y si no lo está, lo activa
# entrada: bash ejer3_if06.sh [ufw/soap]

if $(systemctl is-active $1 | grep inactive &> /dev/null); then
	echo "Iniciando demonio"
	systemctl start $1 &> /dev/null
else
	echo "El demonio está activo"
fi
