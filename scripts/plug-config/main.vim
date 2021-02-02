"   _____             __ _
"  / ____|           / _(_)
" | |     ___  _ __ | |_ _  __ _
" | |    / _ \| '_ \|  _| |/ _` |
" | |___| (_) | | | | | | | (_| |
"  \_____\___/|_| |_|_| |_|\__, |
"                           __/ |
"                          |___/

" ––– Syntastic –––

" make location list update without :errors command
let g:syntastic_always_populate_loc_list = 1


" ––– Nerd Commenter –––

" add spaces after comment delimiters by default
let g:nerdspacedelims = 10

" enable trimming of trailing whitespace when uncommenting
let g:nerdtrimtrailingwhitespace = 1

" enable nerdcommentertoggle to check all selected lines is commented or not
let g:nerdtogglecheckalllines = 1


" ––– Floaterm –––

let g:floaterm_keymap_toggle = '†'

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

" set ultisnips triggers
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"


" ––– Auto Pairs –––

" Allow fly mode (move to closing bracket)
let g:AutoPairsShortcutToggle='π'
let g:AutoPairsShortcutFastWrap='´'
let g:AutoPairsShortcutJump='µ'


" ––– Which Key –––

source ~/.config/nvim/scripts/plug-config/which-key.vim


" ––– Quickscope –––

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:qs_max_chars=150

