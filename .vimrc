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
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
map <leader>o :setlocal spell! spelllang=en_us,pt_pt<CR>
set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

:hi TabLineFill ctermfg=Black ctermbg=White
:hi TabLine ctermfg=White ctermbg=Black
:hi TabLineSel ctermfg=Yellow ctermbg=Black
set listchars=tab:→\ ,eol:↲
set tabstop=4
set shiftwidth=4
