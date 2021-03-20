"                 _                                                      _
"      /\        | |                                                    | |
"     /  \  _   _| |_ ___   ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
"    / /\ \| | | | __/ _ \ / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
"   / ____ \ |_| | || (_) | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"  /_/    \_\__,_|\__\___/ \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/


" ––– Run Code –––

" C++

" "r" for run
autocmd BufEnter *.cpp nnoremap <LEADER>r :Autoformat \| w \| !g++ -O2 -lm -std=c++17 -o output "%" && cat main.in \| ./output<CR>
autocmd BufEnter *.cpp inoremap ® <ESC>:Autoformat \| w \| !g++ -O2 -lm -std=c++17 -o output "%" && cat main.in \| ./output<CR>
" "R" for run without input
autocmd BufEnter *.cpp nnoremap <LEADER>R :Autoformat \| w \| !g++ -O2 -lm -std=c++17 -o output "%" && ./output<CR>
autocmd BufEnter *.cpp inoremap ‰ <ESC>:Autoformat \| w \| !g++ -O2 -lm -std=c++17 -o output "%" && ./output<CR>

" Python

" "r" for run
autocmd BufEnter *.py nnoremap <LEADER>R :Autoformat \| w \| !cat main.in \| python3 "%"<CR>
autocmd BufEnter *.py inoremap ‰ <ESC>:Autoformat \| w \| !cat main.in \| python3 "%"<CR>
" "R" for run without input
autocmd BufEnter *.py nnoremap <LEADER>R :Autoformat \| w \| !python3 "%"<CR>
autocmd BufEnter *.py inoremap ‰ <ESC>:Autoformat \| w \| !python3 "%"<CR>

" Vim

" "r" for save and source
autocmd BufEnter *.vim nnoremap <LEADER>r :Autoformat \| w \| source $MYVIMRC<CR>
autocmd BufEnter *.vim inoremap ® <ESC>:Autoformat \| w \| source $MYVIMRC<CR>
" "R" for save, source, and PlugInstall
autocmd BufEnter *.vim nnoremap <LEADER>R :Autoformat \| w \| source $MYVIMRC \| PlugInstall<CR>:q
autocmd BufEnter *.vim inoremap ‰ <ESC>:Autoformat \| w \| source $MYVIMRC \| PlugInstall<CR>:q


" ––– Other –––

" When Vim is exited
augroup SetCursorOnLeave
  autocmd!
  autocmd VimLeave * set guicursor=a:ver20-blinkwait300-blinkon200-blinkoff150
augroup end

" Source MYVIMRC on enter
augroup SourceMYVIMRC
  autocmd!
  autocmd VimEnter * source $MYVIMRC
augroup end
