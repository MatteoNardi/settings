
delfunction FollowSymlink
function! FollowSymlink()
  let realpath=system("realpath " . expand("%"))
  echo realpath
  execute("bw %")
  execute("e ".realpath)
endfunction

nnoremap <F9> :let realpath=system("realpath " . expand("%"))<CR>:bw %<CR>:execute("sp " . realpath)<CR>
