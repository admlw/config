"Adams .vim file
set number "show line numebr
set autoindent
set cindent
set expandtab "insert space chars when tab is pressed
set hlsearch "highlight searches
set wildmenu "command line autocompletion
set wildmode=list:longest,full
set tabstop=1
set shiftwidth=2
set viminfo='10,\"100,:20,%,n~/.viminfo'

"package manager
call pathogen#infect()
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
