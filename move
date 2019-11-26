#!/bin/bash

dir=$(pwd)
a=$dir
b=$HOME/rpgBashGame/Masria
c=$1
d=".."
e="$HOME/rpgBashGame/Masria/Valentia/Wall_Market/GrogsTabern"
f="cosas_de_Guybrush"


nivel=$(tr -dc '/' <<<"$dir" | awk '{ print length; }')

# nivel 2 home usuario
# nivel 3 carpeta juego
# nivel 4 carpeta Masria
# nivel 5 Valentia..
# maximo hay nivel 7.




if [[ $nivel -eq 4 ]] && [[ $c == *..* ]] 
then 
	echo "No puedes salir del Mundo de Masria"
	exit
fi

if [[ $nivel -eq 5 ]] && [[ $c == *../..* ]] 
then 
	echo "No puedes salir del Mundo de Masria"
	exit
fi

if [[ $nivel -eq 6 ]] && [[ $c == *../../..* ]] 
then 
	echo "No puedes salir del Mundo de Masria"
	exit
fi

if [[ $nivel -eq 7 ]] && [[ $c == *../../../..* ]] 
then 
	echo "No puedes salir del Mundo de Masria"
	exit
fi



## si el argumento de cd empieza por /,  no dejar.

if [[ $c == /* ]] 
then 
	echo "No puedes salirte del Juego ahora!!"
	exit
fi


if [[ $c == *Guybrush* ]] 
then 
	echo "No puedes ver las cosas personales de Guybrush"
	exit
fi

if [[ $c == *Mochila* ]] 
then 
	echo 'No puedes entrar en tu Mochila! No cabes!!! Prueba: ls $Mochila'
	exit

fi

if [[ $c == *Frontera* ]]
then 


	if [[ -f /usr/bin/eog ]]
	then
		eog $HOME/rpgBashGame/Masria/Frontera/sephiroth.jpg &
	fi
	if [[ -f /usr/bin/eom ]]
	then
		eom $HOME/rpgBashGame/Masria/Frontera/sephiroth.jpg &
	fi
	$HOME/rpgBashGame/Masria/Frontera/.sephiroth.sh &
	
fi


clear

if [[ $nivel -le 3 ]]
then 
	
	move $HOME/rpgBashGame/Masria
	cd $HOME/rpgBashGame/Masria && cat .escenario
	
else cd "$1" && cat .escenario

fi


saved_game=$(pwd)
echo $saved_game > $HOME/rpgBashGame/saved_game
export Mochila=$HOME/rpgBashGame/Masria/home/Mochila
exec bash --rcfile <(cat ~/.bashrc_game; echo 'PS1="\[\033[01;32m\]Cloud@World\[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] > "')
