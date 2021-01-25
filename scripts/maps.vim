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

" Save file with space + w and option + w in normal and insert mode
nmap <LEADER>w :w<CR><C-b>
imap ∑ <ESC>:w<CR>i<C-b>
nmap <LEADER>q :q<CR><C-b>
imap œ <ESC>:q<CR>i<C-b>

" Option + j or k key to move a line down or up in normal and insert mode
nnoremap ∆ ddp
nnoremap ˚ ddkkp
inoremap ∆ <ESC>ddpi
inoremap ˚ <ESC>ddkkpi

" Option + l or h key to move forward and backward by one word in insert mode
inoremap ¬ <C-c>lwi
inoremap ˙ <C-c>lbi

" Option + < or > key to move to beginning or end of line
inoremap ≥ <C-c>A
inoremap ≤ <C-c>I
nnoremap ≥ A<C-c>
nnoremap ≤ I<C-c>

" Press enter in normal mode to create new line
nnoremap <CR> o<ESC>

" Option + shift + n or space + n to make line numbers return to hybrid
nnoremap ˜ :set relativenumber!<CR>
nnoremap <LEADER>n :set relativenumber!<CR>
inoremap ˜ <ESC>:set relativenumber!<CR>a

" Space + s to resource init.vim
nnoremap <LEADER>s :source $MYVIMRC<CR>
nnoremap ß :source $MYVIMRC<CR>
inoremap ß <ESC>:source $MYVIMRC<CR>a


" ––– Code Formatting –––

" Prettier commands to format file - ':Prettier', ' b', ' f', Control-Option-b
command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd BufRead,BufNewFile *.js,*.ts,*.json nnoremap <C-b> :Prettier<CR>
autocmd BufRead,BufNewFile *.js,*.ts,*.json inoremap <C-b> <ESC>:Prettier<CR>i

" C++ code formatting
autocmd FileType cpp nnoremap <C-b> :ClangFormat<CR>
autocmd FileType cpp inoremap <C-b> <ESC>:ClangFormat<CR>i

" Vim script code formatting
autocmd BufRead,BufNewFile *.vim nnoremap <C-b> gg=G<C-o>
autocmd BufRead,BufNewFile *.vim inoremap <C-b> gg=G<C-o>


" ––– Run Code –––

" Run C++ code with leader + r
autocmd FileType cpp nnoremap <LEADER>r :w<CR>:!g++ % -O2<CR>:!./a.out<CR>
autocmd FileType cpp inoremap ® <ESC>:w<CR>:!g++ % -O2<CR>:!./a.out<CR>

" Save and execute init.vim with leader + r
autocmd BufRead,BufNewFile *.vim nmap <LEADER>r <C-b>:w<CR>:source %<CR>:PlugInstall<CR>:q
autocmd BufRead,BufNewFile *.vim imap ® <ESC><C-b>:w<CR>:source %<CR>:PlugInstall<CR>:q 


" ––– Plugin Key Maps –––

" Nerd Tree - open a directory tree with space + n
nnoremap <LEADER>t :NERDTreeToggle<CR>

" Goyo - option + g to toggle
nnoremap © :Goyo<CR>:set number relativenumber<CR>
inoremap © <ESC>:Goyo<CR>:set number relativenumber<CR>i

" Lazy Git - open GUI with space + l + g
nnoremap <LEADER>lg :LazyGit<CR>


" ––– Auto Commands –––

" When Vim is exited
augroup SetCursorOnLeave
  au!
  autocmd VimLeave * set guicursor=a:ver20-blinkwait300-blinkon200-blinkoff150
augroup end
