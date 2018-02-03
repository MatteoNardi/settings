#!/usr/bin/env bash

set -e

function link() {
  echo Linking $1 to $2
  if [ -L "$1" ]
  then
    rm "$1"
  elif [ -e "$1" ]
  then
    rm -ir $2
  fi
  ln -sr $2 $1 
}

link ~/.vimrc vim/vimrc
link ~/.vim/bundle/my_settings vim
link ~/.tmux.conf tmux/tmux.conf
