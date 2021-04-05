"  _____  _             _
" |  __ \| |           (_)
" | |__) | |_   _  __ _ _ _ __  ___
" |  ___/| | | | |/ _` | | '_ \/ __|
" | |    | | |_| | (_| | | | | \__ \
" |_|    |_|\__,_|\__, |_|_| |_|___/
"                  __/ |
"                 |___/

" Vim Plug begin
call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Goyo for 'distraction free writing in vim'
Plug 'junegunn/goyo.vim'

" Git integration
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' } " Epic Git GUI
Plug 'mhinz/vim-signify' " Show changes in file while editing

" Comment functions for many languages
Plug 'tpope/vim-commentary'

" A floating terminal
Plug 'voldikss/vim-floaterm'

" FZF for fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' " Searches through directories

" Codi for inline REPL
Plug 'metakirby5/codi.vim'

" Autoformatting
Plug 'Chiel92/vim-autoformat'

" Autocomplete brackets
Plug 'jiangmiao/auto-pairs'

" Vim Which Key for managing key mappings
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Quickscope for highlighting letters in inline finding
Plug 'unblevable/quick-scope'

" Vim Easy Align for fancy alignment
Plug 'junegunn/vim-easy-align'

" Vim Surround for epic surrond stuff
Plug 'tpope/vim-surround'

" Vim Markdown Preview for opening a preview of a markdown file in a browser
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

" Vim Clap for FZF like stuff
Plug 'liuchengxu/vim-clap'

" Indent Line to add lines at every indent
Plug 'Yggdroot/indentLine'

" Vim Bookmarks for making bookmarks to mark file
Plug 'MattesGroeger/vim-bookmarks'

" Vim Lastplace to move cursor back to last position when opening file
Plug 'farmergreg/vim-lastplace'

" Vim Startify for starting screen and sessions
Plug 'mhinz/vim-startify'

" Rainbow Parenthesis for color coded parenthesis, braces, and brackets
Plug 'junegunn/rainbow_parentheses.vim'

" NERDTree for file navigation (plus file creation)
Plug 'preservim/nerdtree'
" NERDTree icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" FAR for project wide find and replace
Plug 'brooth/far.vim'

" Vim Sneak for jumping around a file
Plug 'justinmk/vim-sneak'

" Nvim Web Devicons for fancy file icons
Plug 'kyazdani42/nvim-web-devicons'

" Neovim Native LSP Config
Plug 'neovim/nvim-lspconfig'
" Neovim Native LSP Autocomplete
" Plug 'hrsh7th/nvim-compe'

" Vim LSPKind for fancy autocomplete icons
Plug 'onsails/lspkind-nvim'
" LSP Saga for code actions
Plug 'glepnir/lspsaga.nvim'

" COC for autocomplete (for stuff native LSP can't do)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Premade snippets
Plug 'honza/vim-snippets'


" Vim Plug end
call plug#end()
