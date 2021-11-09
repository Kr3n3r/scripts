# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
#
# Crear un script con nombre ejer1_basico10.sh que pueda mostrar información (ayuda
# del comando man) de un comando solicitado por teclado

echo "Introduce el comando: "
read COMANDO
man $COMANDO
