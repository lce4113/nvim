"  _____  _             _           
" |  __ \| |           (_)          
" | |__) | |_   _  __ _ _ _ __  ___ 
" |  ___/| | | | |/ _` | | '_ \/ __|
" | |    | | |_| | (_| | | | | \__ \
" |_|    |_|\__,_|\__, |_|_| |_|___/
"                  __/ |            
"                 |___/             

" Begin Plug statements
call plug#begin('~/.config/nvim/plugged')


" Gruvbox theme
Plug 'morhetz/gruvbox'

" Conquer of Completion for intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Show  a dfirectory tree
Plug 'preservim/nerdtree'

" C++ IDE
Plug 'rhysd/vim-clang-format' " code formatting
Plug 'vim-syntastic/syntastic' " syntax checking

" Goyo for 'distraction free writing in vim'
Plug 'junegunn/goyo.vim'

" vim-jsx-pretty for JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'

" yats for Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" Premade snippets for vim
Plug 'honza/vim-snippets'

" Git integration
Plug 'mhinz/vim-signify' " Show changes in file while editing
Plug 'tpope/vim-fugitive' " Git commands as vim comands
Plug 'tpope/vim-rhubarb' " Adds GBrowse command to go to Github
Plug 'junegunn/gv.vim' " Shows changes in files over commits

" Allow nerd fonts
Plug 'ryanoasis/vim-devicons'

" Comment functions for many languages
Plug 'preservim/nerdcommenter'


" End Plug statements
call plug#end()
