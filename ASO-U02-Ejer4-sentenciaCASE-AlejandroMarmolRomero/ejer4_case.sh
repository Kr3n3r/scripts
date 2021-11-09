# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022

# descripcion: script emulador de aceptador de licencia
# entrada: bash ejer4_case.sh

# En la mayoría de las instalaciones de software, durante el acuerdo de licencia,
# se pide aceptar o no la licencia de uso. Se pide simular la aceptación o no de esta licencia. 
# Para ello el script debe mostrar un mensaje preguntando si se acepta la licencia. 
#  a) En caso afirmativo se mostrará un mensaje que diga “Aceptado”.
#  b) Si se responde que no, se mostrará un mensaje que diga 
#     “No aceptado, tu no puedes proceder con la instalación” y saldrá con código de error 1.
#  c) Si no se responde con “yes” o “no” se mostrará el mensaje “Entrada incorrecta".

clear
read -p "¿Aceptas la licencia de uso de este programa?" ANS
case $ANS in
	yes)
		echo "Aceptado"
		;;
	no)
		echo "No aceptado, tú no puedes proceder con la instalación"
		exit 1
		;;
	*)
		echo "Entrada incorrecta"
		;;
esac
		
		
		
		
		
		
		
