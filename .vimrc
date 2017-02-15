"adams .vimrc file

set number      " show line number
set showmatch   " show matching braces
set hlsearch    " highlight searches
set tabstop=4   " next 3: insert spaces instead of tabs
set shiftwidth=4
set expandtab
set viminfo='10,\"100,:20,%,n~/.viminfo'

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" LaTeX rubber macro for compiling
nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

" View PDF macro: '%:r' is current file's root (base) name
nnoremap <leader>s :!mupdf %:r.pdf &<CR><CR>

" vim-plug package manager
call plug#begin('~/.vim/plugged')

" Declare list of plugins
Plug 'tpope/vim-sensible'
Plug 'Shougo/neocomplete.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
 
let g:neocomplete#enable_at_startup = 1

" Trigger configuration 
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
