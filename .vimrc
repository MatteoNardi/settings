" https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source


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
set statusline=%f\ %=%4l/%L\ %P
set laststatus=2               

"colorscheme
syntax enable
set t_Co=16  
set background=dark
colorscheme smyck  
set cursorline     
hi clear CursorLine

"show invisibles
set list listchars=tab:»·,trail:·,extends:·,precedes:·
set nolist                                            

"search settings
set ignorecase  
set smartcase
set incsearch
set hlsearch

"windows split
set splitbelow
set splitright

"indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
set cino+=g0

"folding
set foldmethod=syntax
set foldlevel=20
set fillchars="fold: "

"backspace
set backspace=indent,eol,start
set backspace=2


"===== Shortcuts =====
let mapleader=","
nnoremap <Leader>vr :so ~/.vimrc<CR>
nnoremap <Leader>vj :sp ~/.vim/bundle/vim-babel/.vimrc<CR>
nnoremap <Leader>vs :execute "sp ~/.vim/bundle/vim-babel/syntax/".&ft.".vim"<CR>
