
if [ ! -f ~/.vim/autoload/pathogen.vim ]
then
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! -d ~/.vim/bundle/gruvbox ]
then
	git clone git://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
fi

if [ ! -d ~/.vim/bundle/ctrlp ]
then
	git clone git://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp
fi

if [ ! -d ~/.vim/bundle/YouCompleteMe ]
then
	git clone git://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
  git -C ~/.vim/bundle/YouCompleteMe submodule update --init --recursive
fi
