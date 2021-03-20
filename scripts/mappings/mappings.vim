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

" ––– Key Maps –––

" Press 'jk' to go into normal mode
inoremap jk <C-c>

" Move faster when pressing shift + key
nnoremap H 4h
nnoremap J 4j
nnoremap K 4k
nnoremap L 4l

" Go to left tab with "gr" instead of "gT"
nnoremap gr gT
nnoremap gf :BufferLinePick<CR>
nnoremap gs :BufferLineSortByDirectory<CR>
nnoremap gS :BufferLineSortByExtension<CR>

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

" Space + a to insert a character after the current position in normal mode
nnoremap <LEADER>a li <ESC>r

" Space + i to insert a character before the current position in normal mode
nnoremap <LEADER>i i <ESC>r

" Start Live Easy Align with oa in visual and normal mode
nmap <LEADER>oa <Plug>(LiveEasyAlign)
xmap <LEADER>oa <Plug>(LiveEasyAlign)

" Format which-key.vim dictionary
nmap <LEADER>oA vi{:EasyAlign*/[,\]]/l0is<CR>
xmap <LEADER>oA vi{:EasyAlign*/[,\]]/l0is<CR>

" Search and replace
function SearchAndReplace()
  echohl ClapMatches5
  let l:search = input("Search Regular Expression: ")
  echohl ClapFuzzyMatches
  let l:replace = input("Replace With: ")
  execute '%s/' . l:search . '/' . l:replace . '/gc'
endfunction
nnoremap <LEADER>or :call SearchAndReplace()<CR>
