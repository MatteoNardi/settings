
"indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
"set colorcolumn=101
set textwidth=100

"folding
"set foldmethod=syntax
"set foldlevel=20
"set fillchars+="fold: "
"highlight Folded ctermbg=none
"set foldtext=MyFoldText()
"function! MyFoldText()
"  let nucolwidth = &fdc + &number*&numberwidth
"  let winwd = winwidth(0) - nucolwidth - 5
"  let foldlinecount = foldclosedend(v:foldstart) - foldclosed(v:foldstart) + 1
"  let fdnfo = "( ".string(foldlinecount)." )"
"  let line =  strpart(getline(v:foldstart), 0 , winwd - len(fdnfo))
"  let fillcharcount = 90 - len(line) - len(fdnfo)
"  return line . repeat(" ",fillcharcount) . fdnfo
"endfunction

"mac specific
set makeprg=make
:command! NoWarnings set errorformat^=%-G%f:%l:\ warning:%m
:command! Warnings set errorformat^=\ 

"backspace
set backspace=2

" 3 way open .h .cpp .test.cpp
nnoremap <Leader>3 :e! %:r:r.h<cr> :sp %:r:r.cpp<cr> :sp %:r:r.test.cpp<cr>
nnoremap <Leader>2 :e! %:r:r.h<cr> :sp %:r:r.cpp<cr>
nnoremap <Leader>. :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

iab <buffer> unittest <cr>#include <catch.hpp><cr>#include ".h"<cr><cr>TEST_CASE("", "[]"){<cr>REQUIRE(true);<cr>// TODO<cr>}<cr><esc>

nnoremap <Leader>p lBistd::unique_ptr<<esc>Ea><esc>b
"abbreviations
iab <buffer> guard #ifndef __BLOCK__CLASS__<cr>#define __BLOCK__CLASS__<cr><cr>#endif
iab <buffer> cls class _CLASS_ {<cr>public:<cr>private:<cr>};<cr><esc>dd
iab <buffer> #i #include ""<cr><esc>k$i
iab <buffer> #i #include 
iab <buffer> nocopy L(L const &) = delete;<cr>void operator=(L const &) = delete;<cr>L(L const &&) = delete;<cr>void operator=(L const &&) = delete;

set autoread

autocmd User YcmQuickFixOpened cclose
map <C-]> :YcmCompleter GoTo<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
nnoremap <F5> :YcmDiags<CR>

"let g:ycm_always_populate_location_list = 1

if getcwd() == "/home/dev/projects/cisterne"
    " let g:program="ninja -C fafnir_daemon/builddir && ./fafnir_daemon/builddir/fafnir_daemon"
    let g:program="ninja -C fafnir_daemon/builddir test"
    nnoremap <Leader>e <esc>:!ninja -C fafnir_daemon/builddir -t compdb cpp_COMPILER > fafnir_daemon/compile_commands.json <CR> :YcmRestartServer<CR>
endif

ClangFormatAutoEnable

nnoremap <Leader>b :diffthis<CR>:vsp<CR>:Gedit matteo:%<CR>:diffthis<CR>

