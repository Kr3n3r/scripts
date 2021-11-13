#!/bin/bash

# ejercicio1a.sh
# autor: Alejandro Mármol Romero
# ejemplo declaración, lectura y asignación de arrays

# Declaración de todo tipo de arrays
declare -a idx_array1
declare -A asc_array1
declare -a idx_array2=(12 3 6 7 4)
declare -a idx_array3=(valor1 "valor2" valor3)
declare -A asc_array2=([clave1]=valor1 [clave2]="valor2")
declare -A asc_array3=([key1]=2 [key2]=7)
declare -A asc_array4=(key1 78 key2 6798)
idx_array4=(4567 678 123 346)
asc_array5=([key1]="Nombre" [Key2]=Apellido)
contraseñas[45]=78
contraseñas[0]=54
diccionario[perro]="animal"

# Lectura de arrays
echo ${idx_array2[0]}	# 12
echo ${idx_array2[1]}	# 3
echo ${idx_array2[2]}	# 6
echo ${idx_array2[3]}	# 7
echo ${idx_array2[4]}	# 4

echo ${idx_array3[@]:1:2}	# Mostrará dos elementos desde la posición 1
echo ${idx_array3[2]:1:4}	# Mostrará los elementos desde el 1 al 4 del elemento número2 del array
# Resultado='alor'
echo ${#idx_array4}	#Devuelve la longitud del array
#Resultado=4
idx_array4=(123 "${idx_array4[@]}")	#Añade elemento por delante del array

idx_array2=("${idx_array2[@]:0:2}" 567 "${idx_array2[@]:3}")	#Intercala en el tercer elemento(número 2 dentro del array)

#Lectura de array con bucles
for i in "${idx_array2[@]}"
do
	if [ $i -eq 567 ]; then
		echo "Encontré el número 567"
	fi
done

#Operaciones sobre arrays
echo "(${idx_array3[@]/valor3/})" # Muesta el array sin el patrón introducido(valor3)
								  # Esto se puede usar para eliminar ciertos elementos que sigan ciertas reglas en el array
echo "${idx_array2[@]:$(${#idx_array2[@]}-2)}" #Imprime los dos últimos elementos sin saber la longitud del array. Es una solución bastante larga
echo "${idx_array2[@]::3}"	#Muestra tres primeros elementos del array

#Liberar las variables
for i in {1..4}; do
	unset idx_array$i
done

for i in {1..5}; do
	unset asc_array$i
done
