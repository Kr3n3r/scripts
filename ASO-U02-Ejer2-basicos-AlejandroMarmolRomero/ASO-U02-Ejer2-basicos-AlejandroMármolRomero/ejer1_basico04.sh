# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
# Diseñar un script con nombre ejer1_basico04.sh que escriba la siguiente información
# respetando los saltos de línea:
# hola mundo 
# hoy es ................. 
# y en el sistema están conectados actualmente los siguientes usuarios:
# ..........
# actualmente nos encontramos en el directorio .....

echo "Hola mundo" 
echo "Hoy es " | date 
echo "Y en el sistema están conectados actualmente los siguientes usuarios:"
echo "$USER"
echo "Actualmente nos encontramos en el directorio $PWD"

