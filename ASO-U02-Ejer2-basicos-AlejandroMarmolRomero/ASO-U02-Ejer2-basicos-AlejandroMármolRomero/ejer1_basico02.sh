# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
# Crear un script con nombre ejer1_basico02.sh  que facilite la tarea de dar el permiso
# de ejecución a todos los usuarios de todos los ficheros del directorio actual.

chmod -R a+x $PWD # or chmod -R a+x .
