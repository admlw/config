"adams .vimrc file

set nocompatible

" latex rubber macro for compiling
nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

" view pdf macro: '%:r' is current file's root (base) name
nnoremap <leader>s :!mupdf %:r.pdf &<CR><CR>

" vim-plug package manager
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'      " snippet tool
Plug 'itchyny/lightline.vim' " swanky statusline
" Plug 'sjl/badwolf'           " colour scheme
Plug 'junegunn/goyo.vim'     " distraction free mode
Plug 'sheerun/vim-polyglot'  " syntax highlighting
Plug 'godlygeek/tabular'     " auto align
Plug 'luochen1990/rainbow'   " rainbow parenthesis
Plug 'ervandew/supertab'     " autcomplete
call plug#end()

" remap hjkl to rightleftupdown
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <S-A-UP> <C-w>W

set number         " show line number
set showmatch      " show matching braces
set hlsearch       " highlight searches
set tabstop=2 " next 3: insert spaces instead of tabs
set shiftwidth=2
set expandtab
" set breakindent    " smart wrapping for text
set smartindent    " smart indents
set autoindent     " automatically indent
set viminfo='10,\"100,:20,%,n~/.viminfo' " no idea...

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

syntax on

" let &colorcolumn=join(range(81,999),",")

" colorscheme badwolf
" set laststatus=2

let g:rainbow_active = 1 
