syntax on
filetype plugin indent on

set number
set smartindent
set autoindent
set noundofile
set clipboard=unnamedplus
set enc=utf-8
set bg=dark
set relativenumber
set list
set wildmode=longest,list,full

nnoremap <C-n> :Lex<CR>:vertical resize 20<CR>
nnoremap <Up> :resize +4<CR>
nnoremap <Down> :resize -4<CR>
nnoremap <Left> :vertical resize +4<CR>
nnoremap <Right> :vertical resize -4<CR>
nnoremap Q <nop>
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
map <leader>o :setlocal spell! spelllang=en_us,pt_pt<CR>
set splitbelow splitright
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e
autocmd BufWritePre * g/^\_$\n\_^$/d
:hi TabLineFill ctermfg=Black ctermbg=White
:hi TabLine ctermfg=White ctermbg=Black
:hi TabLineSel ctermfg=Yellow ctermbg=Black
set listchars=tab:→\ ,eol:↲
set tabstop=4
set shiftwidth=4
set ignorecase smartcase
set incsearch
set nowrap
set hidden
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set iskeyword+=-
set conceallevel=0
set laststatus=0
set showmode
" Alternate way to save
nnoremap <C-s> :w<CR>
" Tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
" Enabling swap files
set swapfile
nmap <Space><Space> <Esc>/<++><CR><Esc>cf>

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimEnter * :Lex<CR>
au VimEnter * :vertical resize 20<CR>
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
