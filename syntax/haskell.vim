
nnoremap <F6> :let g:haskell_program="stack ".expand("%")<CR>
nnoremap <F7> :let g:haskell_arguments=
nnoremap <F8> :execute(":!clear && " . g:haskell_program . " " . g:haskell_arguments)<CR>
