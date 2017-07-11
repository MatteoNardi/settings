
iabbr shebang #!/usr/bin/env python3
nnoremap <Leader>a :w<CR>:!python3 %<CR>

set ts=4
set autoindent
set expandtab
set shiftwidth=4
let python_highlight_all = 1
set colorcolumn=81

" install https://github.com/tmhedberg/SimpylFold
set foldlevel=99


let g:ycm_python_binary_path = 'python'
autocmd User YcmQuickFixOpened cclose
map <C-]> :YcmCompleter GoTo<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
nnoremap <F5> :YcmDiags<CR>
nnoremap <F6> :let g:program="python ".expand("%")<CR>
nnoremap <F7> :let g:arguments=

set formatprg=autopep8\ -

