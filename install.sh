#!/bin/bash

#sudo apt update
#sudo apt install feh


# cl es un 'cd vitaminado. Lo que hace es un cd, luego limpia la pantalla, y muestra alguna imagen o .escenario de la pantalla a la que llegas.

# cambiar cl a move?
rm /usr/local/bin/move
cp move /usr/local/bin/move
sudo chmod +x /usr/local/bin/move




rm -rf /opt/bash_game
# Copiar Hyrule_Orig.tar.gz en /opt/bash_game
mkdir -p /opt/bash_game
cp Masria.tar.gz /opt/bash_game
cp new_game.sh /opt/bash_game
sudo chmod +x /opt/bash_game/new_game.sh
cd /opt/bash_game
tar -xzvf /opt/bash_game/Masria.tar.gz
