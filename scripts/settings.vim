"   _____      _   _   _
"  / ____|    | | | | (_)
" | (___   ___| |_| |_ _ _ __   __ _ ___
"  \___ \ / _ \ __| __| | '_ \ / _` / __|
"  ____) |  __/ |_| |_| | | | | (_| \__ \
" |_____/ \___|\__|\__|_|_| |_|\__, |___/
"                               __/ |
"                              |___/

" Theme
colorscheme sonokai " Set colorscheme
let g:airline_theme = "sonokai" " Airline theme
set background=dark " Use dark theme
set termguicolors

" Set space to the leader key
let mapleader = ' '

set mouse=a " Allow mouse click to move cursor
set splitright " Put new window on right side when doing vsplit
set startofline " Place cursor on first non-space character
set showtabline=2 " Show tab line even when there is one tab left
set number relativenumber " Hybrid line numbers
set cursorline " Highlight current line
set nowrap " Don't wrap long lines
set colorcolumn= " Remove color column for line length limit
set formatoptions-=cro " Stop comment continuation to next line

" Files
set noswapfile " Disable swap file
set nobackup " Disable backup files

" Indentation
set smartindent " Automatic indentation
set tabstop=2 softtabstop=2 " Make tab 2 spaces long
set shiftwidth=2 " Make indentation 2 spaces long
set expandtab " Convert tabs to spaces
set whichwrap+=<,>,h,l,[,] " Cursor wraps to next line

" Search
set incsearch " Allow highlighting while searching
set nohlsearch " Remove highlight after last search

" Cursor shape
set guicursor=n:block-blinkwait300-blinkon200-blinkoff150 " Normal mode
set guicursor+=i-v:ver20-blinkwait300-blinkon200-blinkoff150 " Insert and Visual mode
set guicursor+=r:hor20-blinkwait300-blinkon200-blinkoff150 " Replace mode
