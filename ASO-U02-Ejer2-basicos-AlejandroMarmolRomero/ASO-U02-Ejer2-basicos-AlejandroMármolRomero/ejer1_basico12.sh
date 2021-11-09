# !/bin/bash
# author: Alejandro Mármol Romero
# curso: 2021-2022
#
# Crear un script con nombre  ejer1_basico12.sh  que será ejecutado como root que
# realice lo siguiente (deberá mostrarse un mensaje de todo lo que se hace):
# 1. cree un grupo pedido por teclado.
# 2. cree dos usuarios pedidos por teclado que se añadan al grupo anterior y se 
#    cree en el /home su directorio de trabajo.
# 3. crea un directorio en el /home con el nombre del grupo.
# 4. cambia el propietario del directorio al primer usuario que creaste y el grupo al que
# pertenece la carpeta al grupo que has creado.
# 5. ponle a esa carpeta y a todos los subdirectorios y ficheros que pueda haber, todos los
# permisos al propietario y a los miembros del grupo y al resto ninguno.

echo "Introduce el grupo para crear"
read GRUPO
groupadd $GRUPO
echo "Introduce dos usuarios separados por intro"
read USUARIO1
read USUARIO2
useradd $USUARIO1 -m -g $GRUPO
useradd $USUARIO2 -m -g $GRUPO
mkdir /home/$GRUPO
chown $USUARIO1:$GRUPO /home/$GRUPO
chmod 770 /home/$GRUPO -R


