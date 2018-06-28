#!/usr/bin/env bash
#set -x


function install() {
  repo="git://github.com/$1.git"
  target=~/.vim/pack/my_settings/start/`basename "$1"`
  echo "Installing $repo to $target"
  mkdir -p `dirname "$target"`
  if [ -d "$target" ]
  then
    git -C "$target" pull
  else
    git clone "$repo" "$target"
  fi
  git -C "$target" submodule update --init --recursive
}

install "rhysd/vim-clang-format"
install "morhetz/gruvbox"
install "kien/ctrlp.vim"
install "Valloric/YouCompleteMe"
install "airblade/vim-gitgutter"
install "tpope/vim-fugitive"
install "tpope/vim-surround"
install "scrooloose/nerdtree"
install "albfan/nerdtree-git-plugin"
