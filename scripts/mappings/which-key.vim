" Make m trigger which key
nnoremap m :silent WhichKey 'm'<CR>
vnoremap m :silent<C-u> :silent WhichKeyVisual 'm'<CR>

" Define a separator
let g:which_key_sep = '→'
" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
" Reload map every time popup opens
let g:which_key_run_map_on_popup = 1
" Minimum horizontal space between columns
let g:which_key_hspace = 3
" Time until the menu appears
set timeoutlen=250

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd FileType which_key set laststatus=0 noshowmode noruler
autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Map leader to which_key
nnoremap <LEADER> :silent WhichKey '<SPACE>'<CR>
vnoremap <LEADER> :silent<C-u> :silent WhichKeyVisual '<SPACE>'<CR>

" Create map to add keybindings to
let g:which_key_map =  {}
" Source file that builds map
source ~/.config/nvim/scripts/mappings/which-key-leader.vim
" Register which key map
autocmd! User vim-which-key call which_key#register('<SPACE>', "g:which_key_map")
