"   _____      _   _   _                 
"  / ____|    | | | | (_)                
" | (___   ___| |_| |_ _ _ __   __ _ ___ 
"  \___ \ / _ \ __| __| | '_ \ / _` / __|
"  ____) |  __/ |_| |_| | | | | (_| \__ \
" |_____/ \___|\__|\__|_|_| |_|\__, |___/
"                               __/ |    
"                              |___/ 

" Theme
colorscheme gruvbox " Set colorscheme to gruvbox
set background=dark " Tell vim what the background color looks like

" Tab configuration
set tabstop=2 softtabstop=2 " Make tab 2 spaces long
set shiftwidth=2 " Make indentation 2 spaces long
set expandtab " Convert tabs to spaces
set whichwrap+=<,>,h,l,[,]

set smartindent
set number relativenumber " Hybrid line numbers
set cursorline " Highlight current line
set nowrap " Don't wrap long lines
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch " Remove highlight after last search
set mouse=a " Allow mouse click to move cursor
set splitright

" Stop comment continuation to next line
autocmd FileType * set formatoptions-=cro

" Column for line length limit
set colorcolumn=110
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Cursor shape
set guicursor=n:block-blinkwait300-blinkon200-blinkoff150
set guicursor+=i-v:ver20-blinkwait300-blinkon200-blinkoff150
set guicursor+=r:hor20-blinkwait300-blnkon200-blinkoff150
