#!/bin/bash
#description : script de instalación y configuración para Ubuntu
#author : Alejandro Mármol Romero
#email : alejandro.marmol.romero.alu@iesjulioverne.es
#date : 28/09/2021
#version : 1.0
#license : GNU GPLv3

# Cabecera #

echo "      ***************************************
      **   PROGRAMA DE INSTALACIÓN DESATENDIDO  **
      **         Versión: 28/09/2021       **
      ***************************************" | tee /root/install.log /root/install_error.log

# Instalación de paquetes #

#- update y upgrade -#
echo Actualizando los repositorios... | tee -a /root/install.log /root/install_error.log
apt-get update -y >> /root/install.log 2>> /root/install_error.log
apt-get upgrade -y >> /root/install.log 2>> /root/install_error.log
echo ✔️  Repositorios actualizados | tee -a /root/install.log /root/install_error.log

#- openssh-server -#
echo Instalando openssh-server... | tee -a /root/install.log /root/install_error.log
apt-get install -y openssh-server >> /root/install.log 2>> /root/install_error.log
echo ✔️  openssh-server instalado | tee -a /root/install.log /root/install_error.log

#- synaptic -#
echo Instalando synaptic... | tee -a /root/install.log /root/install_error.log
apt-get install -y synaptic >> /root/install.log 2>> /root/install_error.log
echo ✔️  synaptic instalado | tee -a /root/install.log /root/install_error.log

#- vlc -#
echo Instalando vlc... | tee -a /root/install.log /root/install_error.log
apt-get install -y vlc >> /root/install.log 2>> /root/install_error.log
echo ✔️  vlc instalado | tee -a /root/install.log /root/install_error.log

#- shutter -#
echo Instalando shutter... | tee -a /root/install.log /root/install_error.log
apt-get install -y shutter >> /root/install.log 2>> /root/install_error.log
echo ✔️  shutter instalado | tee -a /root/install.log /root/install_error.log

#- geany -#
echo Instalando geany... | tee -a /root/install.log /root/install_error.log
apt-get install -y geany >> /root/install.log 2>> /root/install_error.log
echo ✔️  geany instalado | tee -a /root/install.log /root/install_error.log

#- sqlite3 -#
echo Instalando sqlite3... | tee -a /root/install.log /root/install_error.log
apt-get install -y sqlite3 >> /root/install.log 2>> /root/install_error.log
echo ✔️  sqlite3 instalado | tee -a /root/install.log /root/install_error.log

#- exelearning -#
echo Instalando exelearning... | tee -a /root/install.log /root/install_error.log
add-apt-repository -y ppa:exelearning/exelearning  >> /root/install.log 2>> /root/install_error.log
apt update -y >> /root/install.log 2>> /root/install_error.log
apt upgrade -y >> /root/install.log 2>> /root/install_error.log
snap install exelearning >> /root/install.log 2>> /root/install_error.log
echo ✔️  exelearning instalado | tee -a /root/install.log /root/install_error.log

#- Terminando -#
# echo "·" | sleep 1s | echo "·" | sleep 1s | echo "·" | sleep 1s # <- No funciona
echo 💻 Programa de instalación terminado 💻 | tee -a /root/install.log /root/install_error.log

# Fin del script
