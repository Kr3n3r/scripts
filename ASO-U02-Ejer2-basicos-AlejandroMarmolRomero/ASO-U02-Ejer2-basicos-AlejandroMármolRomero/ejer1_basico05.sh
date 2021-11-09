# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
# La variable de entorno HOME contiene el nombre de su directorio personal. Sabiendo 
# esto haz lo siguiente: 
# a) Comprueba el valor de esa variable.
# b) Usa esa variable para cambiarse a su directorio. 
# c) Cambia esta variable
# d) Usa el comando cd ~ y explica que ocurre con el comodín '~'. 
# Para hacer esto crear un script con nombre ejer1_basico05.sh.

echo "$HOME"
cd $HOME
HOME=/home/usuario
cd ~ 
