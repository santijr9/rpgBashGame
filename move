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
	echo "No puedes salir del Pais de Masria"
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


clear

cd "$1" && cat .escenario

export Mochila=$HOME/rpgBashGame/Masria/home/Mochila
export monedas
exec bash --rcfile <(cat ~/.bashrc; echo 'PS1="\[\033[01;32m\]Cloud@World\[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] > "')
