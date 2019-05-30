#!/bin/bash

rm -rf /opt/bash_game/Masria
# Copiar Hyrule_Orig.tar.gz en /opt/bash_game
mkdir -p /opt/bash_game
cd /opt/bash_game
tar -xzvf /opt/bash_game/Masria.tar.gz
Mochila=''
export monedas='100'
rm /opt/bash_game/Masria/home/Mochila/*
export PS1='Claud@Masria:'

clear
cat Masria/.scene
echo " "
read -p "Pulsa la tecla [INTRO] para empezar la aventura!" abc

move Masria
