#!/bin/bash


#sudo apt update
#sudo apt install feh

# move es un 'cd vitaminado. Lo que hace es un cd,
# luego limpia la pantalla, y muestra alguna imagen o .escenario de la pantalla a la que llegas.

gamedir='$HOME/rpgBashGame'

if [[ -d $gamedir ]]
then
	rm -rf $gamedir
	rm $HOME/bin/move

fi

mkdir -p $HOME/rpgBashGame
mkdir -p $HOME/bin

cp move $HOME/bin/move
chmod +x $HOME/bin/move

cp Masria.tar.gz $HOME/rpgBashGame/Masria.tar.gz

cp new_game.sh $HOME/rpgBashGame/
chmod +x $HOME/rpgBashGame/new_game.sh
cd $HOME/rpgBashGame
tar -xzvf $HOME/rpgBashGame/Masria.tar.gz
