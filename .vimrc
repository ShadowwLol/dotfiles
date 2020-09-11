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
nnoremap Q <nop>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
