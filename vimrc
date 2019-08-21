"No compatibility mode
set nocompatible

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
inoremap jk <ESC>

"Maps space to leader and has a search window in the bottom
map <space> <leader>

"FINDING FILES
"Search sub-directorys
set path+=**

"Display matching files when tabbing
set wildmenu

