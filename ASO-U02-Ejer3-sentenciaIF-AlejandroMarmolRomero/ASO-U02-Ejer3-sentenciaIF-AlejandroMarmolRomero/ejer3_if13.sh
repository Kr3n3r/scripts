# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script para eliminar archivo($1) y pide confirmación antes
# entrada: bash ejer3_if13.sh ../fichero1.txt

echo "¿Estás seguro de quieres eliminarlo?(yes/no)"
read ANSWER
if [ $ANSWER = "yes" ]; then
	rm -r $1 &> /dev/null
else
	if [ $ANSWER = "no" ]; then
		echo "No se eliminará"
	else
		echo "No se reconoció tu respuesta(yes/no)"
	fi
fi
