#!/bin/bash

gamedir='$HOME/rpgBashGame'

rm -rf $HOME/rpgBashGame/Masria
# Copiar Hyrule_Orig.tar.gz en /opt/bash_game
mkdir -p $HOME/rpgBashGame
cd $HOME/rpgBashGame
tar -xzvf $HOME/rpgBashGame/Masria.tar.gz


Mochila=''
export monedas='100'
rm $HOME/rpgBashGame/Masria/home/Mochila/*
export PS1='Claud@Masria:'

clear
cat Masria/.scene
echo " "
read -p "Pulsa la tecla [INTRO] para empezar la aventura!" abc

move Masria
