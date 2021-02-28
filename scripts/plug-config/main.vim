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


" ––– Nerd Commenter –––

" Add spaces after comment delimiters by default
let g:nerdspacedelims = 10

" Enable trimming of trailing whitespace when uncommenting
let g:nerdtrimtrailingwhitespace = 1
" Enable nerdcommentertoggle to check all selected lines is commented or not
let g:nerdtogglecheckalllines = 1


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

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" Enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'gruvbox'

" Always show tabs
set showtabline=2


" ––– Ultisnips –––

" Set ultisnips triggers
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"


" ––– Auto Pairs –––

let g:AutoPairsShortcutToggle='π' " Option + p
let g:AutoPairsShortcutFastWrap='´' " Option + shift + e
let g:AutoPairsShortcutJump='µ' " Option + m


" ––– Which Key –––

source ~/.config/nvim/scripts/plug-config/which-key.vim


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


" ––– Vim Ranger –––

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1
" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1
" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1
" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70
