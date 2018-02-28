#!/usr/bin/env bash

set -e

function link() {
  echo Linking $1 to $2
  if [ -L "$1" ]
  then
    rm "$1"
  elif [ -e "$1" ]
  then
    rm -ir $1
  fi
  ln -sr `pwd`/$2 $1
}

link ~/.vimrc vim/vimrc
link ~/.vim/bundle/my_settings vim
link ~/.tmux.conf tmux/tmux.conf

if [ ! -f ~/.vim/autoload/pathogen.vim ]
then
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
fi

