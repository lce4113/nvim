"                 _                                                      _
"      /\        | |                                                    | |
"     /  \  _   _| |_ ___   ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
"    / /\ \| | | | __/ _ \ / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
"   / ____ \ |_| | || (_) | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"  /_/    \_\__,_|\__\___/ \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/


" ––– Running Code –––

" C++

" "r" for run
autocmd BufEnter *.cpp nnoremap <LEADER>r :call Format() \| wa \| lcd %:p:h \| !g++ -O2 -lm -std=c++17 -o output "%" && cat main.in \| ./output<CR>
autocmd BufEnter *.cpp inoremap ® <ESC>:call Format() \| wa \| lcd %:p:h \| !g++ -O2 -lm -std=c++17 -o output "%" && cat main.in \| ./output<CR>
" "R" for run without input
autocmd BufEnter *.cpp nnoremap <LEADER>R :call Format() \| wa \| lcd %:p:h \| !g++ -O2 -lm -std=c++17 -o output "%" && ./output<CR>
autocmd BufEnter *.cpp inoremap ‰ <ESC>:call Format() \| wa \| lcd %:p:h \| !g++ -O2 -lm -std=c++17 -o output "%" && ./output<CR>

" Python

" "r" for run
autocmd BufEnter *.py nnoremap <LEADER>r :call Format() \| wa \| lcd %:p:h \| !cat main.in \| python3 "%"<CR>
autocmd BufEnter *.py inoremap ® <ESC>:call Format() \| wa \| lcd %:p:h \| !cat main.in \| python3 "%"<CR>
" "R" for run without input
autocmd BufEnter *.py nnoremap <LEADER>R :call Format() \| wa \| lcd %:p:h \| !python3 "%"<CR>
autocmd BufEnter *.py inoremap ‰ <ESC>:call Format() \| wa \| lcd %:p:h \| !python3 "%"<CR>

" Vim

" "r" for save and source
autocmd BufEnter *.vim nnoremap <LEADER>r :call Format() \| wa \| source $MYVIMRC<CR>
autocmd BufEnter *.vim inoremap ® <ESC>:call Format() \| wa \| source $MYVIMRC<CR>
" "R" for save, source, and PlugInstall
autocmd BufEnter *.vim nnoremap <LEADER>R :call Format() \| wa \| source $MYVIMRC \| PlugInstall<CR>:q
autocmd BufEnter *.vim inoremap ‰ <ESC>:call Format() \| wa \| source $MYVIMRC \| PlugInstall<CR>:q

" All Other Files (Snippets, JSON, etc.)

" "r" for save and source
autocmd BufEnter *.lua,*.snippets,*.json,*.sh nnoremap <LEADER>r :call Format() \| wa \| source $MYVIMRC<CR>
autocmd BufEnter *.lua,*.snippets,*.json,*.sh inoremap ® <ESC>:call Format() \| wa \| source $MYVIMRC<CR>


" ––– Other –––

" When Vim is exited
augroup SetCursorOnLeave
  autocmd!
  autocmd VimLeave * set guicursor=a:ver20-blinkwait300-blinkon200-blinkoff150
augroup end

" Which Key needs Vim to be sourced again on enter for some reason
augroup SourceVimrcOnEnter
  autocmd!
  autocmd VimEnter * source $MYVIMRC
augroup END
