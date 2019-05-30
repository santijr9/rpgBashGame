#!/bin/bash

clear
cd "$1" && cat .escenario

export Mochila=/opt/bash_game/Masria/home/Mochila
export monedas
exec bash --rcfile <(cat ~/.bashrc; echo 'PS1="\[\033[01;32m\]Cloud@World\[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] > "')
