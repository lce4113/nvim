"  __  __                   _
" |  \/  |                 (_)
" | \  / | __ _ _ __  _ __  _ _ __   __ _ ___
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              | |   | |             __/ |
"              |_|   |_|            |___/

" ––– General Key Maps –––

" Set space to the leader key
let mapleader = ' '

" Press 'jk' to go into normal mode
inoremap jk <C-c>

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
nnoremap <BS> hx

" Space + i to insert a character before the current position in normal mode
nnoremap <LEADER>I i <ESC>r

" Space + a to insert a character after the current position in normal mode
nnoremap <LEADER>A li <ESC>r


" ––– Code Formatting –––

nnoremap <C-b> <SILENT>:Autoformat<CR>
inoremap <C-b> <SILENT><ESC>:Autoformat<CR>i


" ––– Run Code –––

" Run C++ code with leader + r
autocmd FileType cpp nnoremap <LEADER>r <C-b>:w<CR>:!g++ "%" -O2 && ./a.out<CR>
autocmd FileType cpp inoremap ® <ESC><C-b>:w<CR>:!g++ "%" -O2 && ./a.out<CR>

" Save and execute init.vim with leader + r
autocmd BufRead,BufNewFile *.vim nmap <LEADER>r <C-b>:w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>:q
autocmd BufRead,BufNewFile *.vim imap ® <ESC><C-b>:w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>:q

" ––– Auto Commands –––

" When Vim is exited
augroup SetCursorOnLeave
  au!
  autocmd VimLeave * set guicursor=a:ver20-blinkwait300-blinkon200-blinkoff150
augroup end
