"adams .vimrc file

set nocompatible

" latex rubber macro for compiling
 nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

" view pdf macro: '%:r' is current file's root (base) name
 nnoremap <leader>s :!mupdf %:r.pdf &<CR><CR>

" vim-plug package manager
call plug#begin('~/.vim/plugged')

    Plug 'SirVer/ultisnips' " snippet tool
    Plug 'itchyny/lightline.vim' " swanky statusline
    Plug 'sjl/badwolf' " colour scheme
    Plug 'ervandew/supertab' " autocomplete
    Plug 'junegunn/goyo.vim' " distraction free mode
    Plug 'sheerun/vim-polyglot' " syntax highlighting

call plug#end()

" trigger configuration for ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips/"

" splits the screen vertically for new snippets
let g:UltiSnipsEditSplit="vertical"

" remap hjkl to rightleftupdown
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
set breakindent " smart wrapping for text
set smartindent " smart indents
set autoindent  " automatically indent
set viminfo='10,\"100,:20,%,n~/.viminfo' " no idea...

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

syntax on

colorscheme badwolf
set laststatus=2

