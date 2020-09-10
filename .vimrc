syntax on
filetype plugin indent on
set number
set smartindent
set autoindent
set noundofile
set clipboard=unnamed
set enc=utf-8
set bg=dark

map <C-l> :Lex!<CR>
set relativenumber
set list
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
