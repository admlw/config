"Adams .vimrc file

set number "show line number
set autoindent
set cursorline
set cindent
set showmatch
set expandtab "insert space chars when tab is pressed
set hlsearch "highlight searches
set wildmenu "command line autocompletion
set wildmode=list:longest,full
set tabstop=2
set shiftwidth=2
set viminfo='10,\"100,:20,%,n~/.viminfo'

" move by visual line
nnoremap j gj
nnoremap k gk

" package manager
call pathogen#infect()
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" markdown filetype
augroup mkd
  autocmd BufRead *.mkd setfiletype mkd
augroup END

" LaTeX (rubber) macro for compiling
nnoremap <leader>c :w<CR>:!rubber --pdf --waen all %<CR>

" View PDF macro: '%:r' is current file's root (base) name
nnoremap <leader>v :!mupdf %:r.pdf &<CR><CR>
