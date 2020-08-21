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

link ~/.vimrc vim/vimrc
link ~/.vim/coc-settings.json vim/coc-settings.json
link ~/.vim/pack/my_settings/start/my_settings vim
link ~/.tmux.conf tmux/tmux.conf

link ~/.config/systemd/user systemd
systemctl --user daemon-reload

bash vim/install.sh

# Keyboard settings
sudo ansible-playbook keyboard/keyboard.yml
