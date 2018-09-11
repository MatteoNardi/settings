set expandtab
set shiftwidth=2
set softtabstop=2
set list
nnoremap <F5> :silent! dot -Tpng -o /tmp/out.png ".expand("%")." && eog /tmp/out.png"<CR>:redraw!<CR>

