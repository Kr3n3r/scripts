# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
#
# Crear un script con nombre  ejer1_basico07.sh   que guarde la salida del comando
# "hostname"   en   una   variable   y   muestre   el   mensaje:   "Este   script   es   ejecutado   en
#______." Donde "_______" es la salida del comando hostname.

HNAME="$(hostname)"
echo "Este script es ejecutado en $HNAME"
