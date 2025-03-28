#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

function link() {
  echo Linking $1 to $2
  if [ -L "$1" ]
  then
    rm "$1"
  elif [ -e "$1" ]
  then
    rm -ir $1
  fi
  mkdir -p `dirname "$1"`
  ln -sr $2 $1
}

link ~/.config/xkb xkb
link ~/.tmux.conf tmux/tmux.conf
link ~/.config/nvim nvim

dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:ctrl_modifier', 'lv3:ralt_switch', 'custom:wombo']"
