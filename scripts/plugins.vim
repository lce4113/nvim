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
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' } " Epic Git GUI
Plug 'mhinz/vim-signify' " Show changes in file while editing

" Allow nerd fonts
Plug 'ryanoasis/vim-devicons'

" Comment functions for many languages
Plug 'preservim/nerdcommenter'

" A floating terminal
Plug 'voldikss/vim-floaterm'

" FZF for fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' " Searches through directories

" Codi for inline REPL
Plug 'metakirby5/codi.vim'

" Tagbar for seeing a file's structure
Plug 'preservim/tagbar'

" Airline for a cool tabline
Plug 'vim-airline/vim-airline'

" MRU for reopening closed tabs
Plug 'yegappan/mru'


" End Plug statements
call plug#end()
