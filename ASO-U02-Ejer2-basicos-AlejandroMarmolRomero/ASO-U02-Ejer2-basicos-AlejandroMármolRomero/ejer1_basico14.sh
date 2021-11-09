# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
#
# Crea un script con nombre  ejer1_basico14.sh   que lea 2 números pasados como
# parámetros y muestre el producto de ellos.

PRODUCTO=$(expr $1 \* $2) 
echo "El producto es $PRODUCTO"


