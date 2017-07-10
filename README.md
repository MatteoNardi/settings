My vim suggestions:
- Don't copy others settings since everyone is different. Take inspiration.
- Make it simple to make customizations, these are the most important lines
  in my .vimrc:
	```
		nnoremap <Leader>vr :so ~/.vimrc<CR>
		nnoremap <Leader>vj :sp ~/.vim/bundle/vim-babel/.vimrc<CR>
		nnoremap <Leader>vs :execute "sp ~/.vim/bundle/vim-babel/syntax/".&ft.".vim"<CR>
	```
- Remap caps-lock to ctrl. 
  While you're at it, if you're using tmux and linux, consider setting `ctrl-;` as your prefix
	[https://stackoverflow.com/a/42804312/4074995](https://stackoverflow.com/a/42804312/4074995)
