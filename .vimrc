"adams .vimrc file

set nocompatible

" LaTeX rubber macro for compiling
 nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

" View PDF macro: '%:r' is current file's root (base) name
 nnoremap <leader>s :!mupdf %:r.pdf &<CR><CR>

" vim-plug package manager
call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'
Plug 'sjl/badwolf'
Plug 'ervandew/supertab'

call plug#end()

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"
 let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips/"

 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <S-A-UP> <C-w>W

set number      " show line number
set showmatch   " show matching braces
set hlsearch    " highlight searches
set tabstop=4   " next 3: insert spaces instead of tabs
set shiftwidth=4
set expandtab
set nowrap
set smartindent
set autoindent
set viminfo='10,\"100,:20,%,n~/.viminfo'

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

colorscheme badwolf
set laststatus=2

