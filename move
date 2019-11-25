#!/bin/bash

dir=$(pwd)
a=$dir
b=$HOME/rpgBashGame/Masria
c=$1
d=".."
e="$HOME/rpgBashGame/Masria/Valentia/Wall_Market/GrogsTabern"
f="cosas_de_Guybrush"
if [[ "$a" == "$b" ]] && [[ "$c" == "$d" ]]
then 
	echo "No puedes salir del Mundo de Masria"
	exit
fi


if [[ "$a" == "$e" ]] && [[ "$c" == "$f" ]] 
then 
	echo "No puedes ver las cosas personales de Guybrush"
	exit
fi

if [[ "$a" == "$e" ]] && [[ "$c" == "$f/" ]] 
then 
	echo "No puedes ver las cosas personales de Guybrush"
	exit

fi

if [[ "$c" == "Frontera" ]] || [[ "$c" == "Frontera/" ]] || [[ "$c" == "../Frontera" ]] || [[ "$c" == "../Frontera/" ]] 
then 
	eom $HOME/rpgBashGame/Masria/Frontera/sephiroth.jpg &
	eog $HOME/rpgBashGame/Masria/Frontera/sephiroth.jpg &
	$HOME/rpgBashGame/Masria/Frontera/.sephiroth.sh &
	
fi


clear

cd "$1" && cat .escenario

export Mochila=$HOME/rpgBashGame/Masria/home/Mochila
export monedas
exec bash --rcfile <(cat ~/.bashrc_game; echo 'PS1="\[\033[01;32m\]Cloud@World\[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] > "')
