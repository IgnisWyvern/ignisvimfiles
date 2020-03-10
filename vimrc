call plug#begin('C:\Users\keian\vimfiles\plugged')

Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"No compatibility mode
set nocompatible
set updatetime=200
"Encoding
set encoding=utf-8

"Disable modelines
set modelines=0

"Highlight syntax
syntax enable

"Enable plugins
filetype plugin on

"Set colour Scheme
color codedark

"Enable 256 colours
set t_Co=256

"Enable auto indent
set autoindent

"Set line numbers
set relativenumber 
set number

"Map leaving insert mode to jk
inoremap hh <ESC>

"Maps space to leader and has a search window in the bottom
map <space> <leader>

"FINDING FILES
"Search sub-directorys
set path+=**

"Display matching files when tabbing
set wildmenu

"Use backspace for indents and eol
set backspace=indent,eol

"Keep 4 lines below cursor
set scrolloff=5
set textwidth=79
set colorcolumn=80

"Allow editing of vimrc and reload on the fly
nmap <leader>vr :sp ~\vimfiles\vimrc<cr>
nmap <leader>so :source ~\vimfiles\vimrc<cr>

"Fold settings
set foldmethod=indent
set foldlevelstart=99

"Smoooooth
set ttyfast
"Pretty bar
set laststatus=2
set showmode
set showcmd
set signcolumn=yes

"use tab for trigger completion with characters ahead and navigate.
"NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
 let col = col('.') - 1
 return !col || getline('.')[col - 1]  =~# '\s'
endfunction
