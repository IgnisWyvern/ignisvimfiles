call plug#begin()

Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"No compatibility mode
set nocompatible
set updatetime=300
"
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
set lazyredraw

"Enable 256 colours
set t_Co=256

"Enable auto indent
set autoindent

"tab stuff
set tabstop=4
set softtabstop=4
set expandtab

"Set line numbers
set relativenumber 
set number

"Map leaving insert mode to hh
inoremap hh <ESC>

"Maps space to leader and has a search window in the bottom
map <space> <leader>

"FINDING FILES
"Search sub-directorys
set path+=**

"Display matching files when tabbing
set wildmenu

"Use backspace for indents and eol
set backspace=indent,eol,start

"spell stuff
set spelllang=en_gb
map <leader>ss :setlocal spell!<cr>
hi SpellBad ctermbg=124

"hightlight search
set hlsearch
set incsearch

"Keep 4 lines below cursor
set scrolloff=5
set textwidth=79
set colorcolumn=80

"Allow editing of vimrc and reload on the fly
nmap <leader>vr :sp ~/.vim/vimrc<cr>
nmap <leader>so :source ~/.vim/vimrc<cr>

"Fold settings
set foldmethod=indent
set foldlevelstart=99

"Smoooooth
set ttyfast
"
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
