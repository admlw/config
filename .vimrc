"adams .vimrc file

set nocompatible

call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/syntastic'  " syntax checker
  Plug 'godlygeek/tabular'     " alignment
  Plug 'oblitum/rainbow'       " rainbow parentheses
  Plug 'itchyny/lightline.vim' " lightline
call plug#end()

" remap hjkl to rightleftupdown
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <S-A-UP> <C-w>W

set number         " show line number
set showmatch      " show matching braces
set hlsearch       " highlight searches
set tabstop=2      " next 3: insert spaces instead of tabs
set shiftwidth=2
set expandtab
set smartindent    " smart indents
set autoindent     " automatically indent
set viminfo='10,\"100,:20,%,n~/.viminfo' " no idea...

" lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:rainbow_active = 1 
