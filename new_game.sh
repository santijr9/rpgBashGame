#!/bin/bash

gamedir='$HOME/rpgBashGame'

rm -rf $HOME/rpgBashGame/Masria


mkdir -p $HOME/rpgBashGame
cd $HOME/rpgBashGame
echo "$HOME/rpgBashGame/Masria" > saved_game
tar -xzvf $HOME/rpgBashGame/Masria.tar.gz


Mochila=''
export monedas='100'
rm $HOME/rpgBashGame/Masria/home/Mochila/*
export PS1='Claud@Masria:'

clear
cat Masria/.scene
echo " "
read -p "Pulsa la tecla [INTRO] para empezar la aventura!" abc

#PATH MAC OS X
PATH=$PATH:$HOME/bin



eog $HOME/rpgBashGame/caratula.png &
eom $HOME/rpgBashGame/caratula.png &
/System/Applications/Preview.app/Contents/MacOS/Preview &

move Masria
