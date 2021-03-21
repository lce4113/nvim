" Ultisnips for making and using snippets
Plug 'SirVer/ultisnips'
" Premade snippets
Plug 'honza/vim-snippets'
" Add UltiSnips to autocomplete
Plug 'nvim-lua/completion-nvim'

" ––– Ultisnips –––

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips/"
let g:UltiSnipsEditSplit="tabdo"


" ––– Nvim Completion –––

" autocmd BufEnter * lua require'completion'.on_attach()
let g:completion_enable_snippet = 'UltiSnips'
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c
