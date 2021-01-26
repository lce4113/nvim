"   _____             __ _       
"  / ____|           / _(_)      
" | |     ___  _ __ | |_ _  __ _ 
" | |    / _ \| '_ \|  _| |/ _` |
" | |___| (_) | | | | | | | (_| |
"  \_____\___/|_| |_|_| |_|\__, |
"                           __/ |
"                          |___/ 

" ––– Syntastic –––

" Make location list update without :Errors command
let g:syntastic_always_populate_loc_list = 1


" ––– Nerd Commenter –––

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 10

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


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

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2
