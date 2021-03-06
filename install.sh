#!/bin/bash


#sudo apt update
#sudo apt install feh

# move es un 'cd vitaminado. Lo que hace es un cd,
# luego limpia la pantalla, y muestra alguna imagen o .escenario de la pantalla a la que llegas.

gamedir='$HOME/rpgBashGame'

if [[ -d $gamedir ]]
then
	rm -rf $gamedir
	rm $HOME/bin/*
	rm $HOME/.bashrc_game

fi

mkdir -p $HOME/rpgBashGame
mkdir -p $HOME/bin

cp move $HOME/bin/move
chmod +x $HOME/bin/move

cp cat_game $HOME/bin/cat_game
chmod +x $HOME/bin/cat_game

cp continuegame $HOME/bin/continuegame
chmod +x $HOME/bin/continuegame

cp Masria.tar.gz $HOME/rpgBashGame/Masria.tar.gz
cp caratula.png $HOME/rpgBashGame/caratula.png

cp newgame $HOME/bin/newgame
chmod +x $HOME/bin/newgame




cd $HOME/rpgBashGame
tar -xzvf $HOME/rpgBashGame/Masria.tar.gz

#solventar queja de consola lliurex en usuario normal.
touch $HOME/.sudo_as_admin_successful


cp $HOME/.bashrc $HOME/.bashrc_game
echo "alias cd='move'" >> $HOME/.bashrc_game
echo "alias cat='cat_game'" >> $HOME/.bashrc_game

#MAC OS X
PATH=$PATH:$HOME/bin

echo "PATH=$PATH:$HOME/bin" >> $HOME/.bashrc
echo "PATH=$PATH:$HOME/bin" >> $HOME/.zshrc

echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> $HOME/.bashrc_game



if [[ $? -eq 0 ]]
then
	echo "El juego se ha instalado correctamente."
	read -p "Pulsa [INTRO] para empezar una nueva partida." aaa
	newgame
	
else
echo "algo no ha ido bien en la instalacion."
fi
