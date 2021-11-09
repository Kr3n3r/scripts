# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
#
# Crear un script con nombre ejer1_basico13.sh que lea 2 números pasados por teclado
# y muestre el producto de ellos.

echo "Introduce el primer número"
read NUMERO1
echo "Introduce el segundo número"
read NUMERO2
PRODUCTO="$(expr $NUMERO1 \* $NUMERO2)"
echo "El producto de ambos es $PRODUCTO"


