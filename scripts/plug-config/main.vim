"   _____             __ _
"  / ____|           / _(_)
" | |     ___  _ __ | |_ _  __ _
" | |    / _ \| '_ \|  _| |/ _` |
" | |___| (_) | | | | | | | (_| |
"  \_____\___/|_| |_|_| |_|\__, |
"                           __/ |
"                          |___/

" ––– Syntastic –––

" Make location list update without :errors command
let g:syntastic_always_populate_loc_list = 1


" ––– NERD Commenter –––

" Add spaces after comment delimiters by default
let g:nerdspacedelims = 10
" Enable trimming of trailing whitespace when uncommenting
let g:nerdtrimtrailingwhitespace = 1
" Enable nerdcommentertoggle to check all selected lines is commented or not
" let g:nerdtogglecheckalllines = 1


" ––– Floaterm –––

let g:floaterm_keymap_toggle = '†'
let g:floaterm_title = 'FLOATERM: $1/$2'
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


" ––– Lazy Git –––

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed


" ––– FZF –––
source ~/.config/nvim/scripts/plug-config/fzf.vim

" ––– Airline –––

" NERDTree integration
let g:airline#extensions#nerdtree_statusline = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" ––– Auto Pairs –––

let g:AutoPairsShortcutToggle='π' " Option + p
let g:AutoPairsShortcutFastWrap='´' " Option + shift + e
let g:AutoPairsShortcutJump='µ' " Option + m


" ––– Quickscope –––

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150


" ––– Vim Easy Align –––

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)


" ––– Indent Line –––

" Line character
let g:indentLine_char = '│'


" ––– Vim Startify –––

source ~/.config/nvim/scripts/plug-config/startify.vim


" ––– Rainbow Parenthesis –––

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses


" ––– NERD Tree –––

" Close NERD Tree after opening a file
let NERDTreeQuitOnOpen=1
" Show hidden files by default
let NERDTreeShowHidden=1


" ––– FAR –––

let g:far#source='rgnvim'
" let g:far#source='rg'
" let g:far#source='vimgrep'
" let g:far#source='ag'

set lazyredraw " improve scrolling performance when navigating through large results

let g:far#window_width=60
" Use %:p with buffer option only
let g:far#file_mask_favorites=['%:p', '**/*.*', '**/*.js', '**/*.py', '**/*.java', '**/*.css', '**/*.html', '**/*.vim', '**/*.cpp', '**/*.c', '**/*.h', ]
let g:far#window_min_content_width=30
let g:far#enable_undo=1


" ––– COC Snippets –––

" Use tab to expand snippets in insert and visual mode
" imap <TAB> <Plug>(coc-snippets-expand)
" vmap <TAB> <Plug>(coc-snippets-select)
" xmap <TAB> <Plug>(coc-convert-snippet)
" imap <TAB> <Plug>(coc-snippets-expand-jump)
" let g:coc_snippet_next = '<TAB>'
" let g:coc_snippet_prev = '<S-TAB>'


" ––– Autoformat –––

autocmd FileType snippets let b:autoformat_autoindent=0


" ––– Vim Sneak –––

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " case insensitive sneak
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompts
let g:sneak#prompt = '🔎'


" ––– Vim Clap –––

let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }


" ––– Vim LSP Config –––
source ~/.config/nvim/scripts/plug-config/lspconfig.vim

" ––– Vim Compe –––
luafile ~/.config/nvim/scripts/plug-config/compe.lua

" ––– Vim LSP Kind –––
luafile ~/.config/nvim/scripts/plug-config/lspkind.lua

" ––– Snippets –––
source ~/.config/nvim/scripts/plug-config/UltiSnips.vim
" luafile ~/.config/nvim/scripts/plug-config/nvim-snippets.vim

" ––– LSP Saga –––
luafile ~/.config/nvim/scripts/plug-config/lspsaga.lua

" ––– Codi ––––

autocmd BufEnter *.py Codi

let g:codi#interpreters = {
      \ 'python': {
      \    'bin': 'python3',
      \    'prompt': '^\(>>>\|\.\.\.\) '
      \ }
      \ }

let g:codi#virtual_text_prefix = " ❯ "
