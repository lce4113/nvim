" ––– COC Snippets –––

" Use tab to expand snippets in insert and visual mode
imap <TAB> <PLUG>(coc-snippets-expand)
vmap <TAB> <PLUG>(coc-snippets-select)
xmap <TAB> <PLUG>(coc-convert-snippet)
imap <TAB> <PLUG>(coc-snippets-expand-jump)


" ––– Ultisnips –––

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips/"
let g:UltiSnipsEditSplit="tabdo"
