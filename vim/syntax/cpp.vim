
"indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
set textwidth=100

"backspace
set backspace=2

" 3 way open .h .cpp .test.cpp
nnoremap <Leader>3 :e! %:r:r.h<cr> :sp %:r:r.cpp<cr> :sp %:r:r.test.cpp<cr>
nnoremap <Leader>2 :e! %:r:r.h<cr> :sp %:r:r.cpp<cr>
nnoremap <Leader>. :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<cr>

iab <buffer> unittest <cr>#include <catch.hpp><cr>#include ".h"<cr><cr>TEST_CASE("", "[]"){<cr>REQUIRE(true);<cr>// TODO<cr>}<cr><esc>

nnoremap <Leader>p lBistd::unique_ptr<<esc>Ea><esc>b
"abbreviations
iab <buffer> cls class _CLASS_ {<cr>public:<cr>private:<cr>};<cr><esc>dd
iab <buffer> #i #include ""<cr><esc>k$i
iab <buffer> #i #include 
iab <buffer> nocopy L(L const &) = delete;<cr>void operator=(L const &) = delete;<cr>L(L const &&) = delete;<cr>void operator=(L const &&) = delete;
iab <buffer> pimpl class Impl;<cr>std::unique_ptr<Impl> m_impl;

set autoread

autocmd User YcmQuickFixOpened cclose
map <C-]> :YcmCompleter GoTo<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
nnoremap <Leader>c :YcmDiags<CR>

"let g:ycm_always_populate_location_list = 1

ClangFormatAutoEnable

nnoremap <Leader>b :diffthis<CR>:vsp<CR>:Gedit origin/matteo:%<CR>:diffthis<CR>

