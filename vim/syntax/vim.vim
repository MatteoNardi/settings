
nnoremap <F9> :let realpath=system("realpath " . expand("%"))<CR>:bw %<CR>:execute("sp " . realpath)<CR>
