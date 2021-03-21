"  __  __                   _
" |  \/  |                 (_)
" | \  / | __ _ _ __  _ __  _ _ __   __ _ ___
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              | |   | |             __/ |
"              |_|   |_|            |___/

" ––– Which Key –––
source ~/.config/nvim/scripts/mappings/which-key.vim

" ––– Autocommands –––
source ~/.config/nvim/scripts/mappings/autocommands.vim

" ––– Key Maps –––

" Press 'jk' to go into normal mode
inoremap jk <ESC>
vnoremap jk <ESC>

" Go to left tab with "gr" instead of "gT"
nnoremap gr gT

" Press e to delete character and enter insert mode
nnoremap e cl

" Copy rest of line with Y (just like D and C)
nnoremap Y y$

" ; (semicolon) to go to the end of the line
nnoremap ; $

" Option + j or k key to move a line down or up in normal and insert mode
nnoremap ∆ ddp
nnoremap ˚ ddkkp
inoremap ∆ <ESC>ddpi
inoremap ˚ <ESC>ddkkpi

" Option + < or > key to move to beginning or end of line
inoremap ≥ <C-c>A
inoremap ≤ <C-c>I
nnoremap ≥ A<C-c>
nnoremap ≤ I<C-c>

" Press enter in normal mode to create new line
nnoremap <CR> o<ESC>

" Backspace in normal mode to delete previous character
nnoremap <BS> dh
