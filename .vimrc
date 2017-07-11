" https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

set nocompatible

"phantogen
set sessionoptions-=options
execute pathogen#infect()

"buffer
set bufhidden=hide
set wildmenu
set wildignorecase

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

"encoding
scriptencoding utf-8
set encoding=utf-8

"line numbering
set number

"mouse support
set mouse=a

"statusline
set showcmd
set statusline=%m\ %f\ %=%4l/%L\ %P
set laststatus=2
set noruler

"colorscheme
let g:color_list=[['gruvbox', 'dark'], ['gruvbox', 'light'], ['smyck', 'dark']]
let g:color_current=-1
function! ChangeColorscheme()
	let g:color_current = (g:color_current + 1) % len(g:color_list)
	let c = g:color_list[g:color_current]
	execute('set background=' . c[1])
	execute('colorscheme ' . c[0])
endfunction
nnoremap <silent> <F3> :call ChangeColorscheme()<CR>
let g:gruvbox_italic=1
set termguicolors
set t_ut=
syntax enable
call ChangeColorscheme()
"cycle colors
" set t_Co=16
"colorscheme smyck
"set cursorline
"hi clear CursorLine
"hi ColorColumn ctermbg=none ctermfg=lightred cterm=bold
"hi clear VertSplit
"hi VertSplit ctermfg=grey term=NONE
"set fillchars=vert:\|

"spellchecking
"set spell

"show invisibles
set list listchars=tab:»·,trail:·,extends:·,precedes:·
highlight ExtraWhitespace guifg=purple
match ExtraWhitespace /\s\+$/
set nolist

"search settings
set ignorecase
set smartcase
set incsearch
set hlsearch

"windows split
set splitbelow
set splitright

"diff
if &diff
	syntax off
	set foldmethod=diff
	highlight Folded cterm=none ctermfg=0
	nnoremap <Space> ]czz
	highlight DiffAdd cterm=none ctermfg=2 ctermbg=none
	highlight DiffDelete cterm=none ctermfg=1 ctermbg=none
	highlight DiffChange cterm=none ctermfg=3 ctermbg=none
	highlight DiffText cterm=underline ctermfg=5 ctermbg=none
endif


"backspace
set backspace=indent,eol,start
set backspace=2


"===== Shortcuts =====
let mapleader=","
nnoremap <Leader>vr :so ~/.vimrc<CR>
nnoremap <Leader>vj :sp ~/.vim/bundle/vim-babel/.vimrc<CR>
nnoremap <Leader>vs :execute "sp ~/.vim/bundle/vim-babel/syntax/".&ft.".vim"<CR>

nnoremap <Leader>/ /<C-R>"<cr>


nnoremap <Leader>a :w<CR>:make<CR>
let g:ycm_python_binary_path = 'python'
let g:ycm_key_detailed_diagnostics = '<Leader>v'
let g:ycm_confirm_extra_conf = 0
let g:ycm_use_ultisnips_completer = 0
let g:ycm_autoclose_preview_window_after_completion = 1
" GlobalFind
nnoremap <Leader>F "gyiw:Ggrep <C-r>g<CR>:copen
"nnoremap <Leader>s :s/include\ \"/include\ \"printer\//
nnoremap <Leader>t :r !date +\%F<cr>

iabbr shebang #!/usr/bin/env

if filereadable(".custom_vimrc")
	so .custom_vimrc
endif

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown
au BufNewFile,BufFilePre,BufRead *.make set filetype=make
au BufNewFile,BufFilePre,BufRead *.jinja set filetype=jinja
au BufNewFile,BufFilePre,BufRead *.build set filetype=python
"indentation
filetype plugin indent on
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" Compilation
" let g:program="echo No program set"
let g:arguments=""
nnoremap <F6> :let g:program=expand("%")
nnoremap <F7> :let g:arguments=
nnoremap <F8> :execute(":!clear && " . g:program . " " . g:arguments)<CR>


