" ––– COC Snippets –––

" Use tab to expand snippets in insert and visual mode
imap <TAB> <Plug>(coc-snippets-expand)
vmap <TAB> <Plug>(coc-snippets-select)
xmap <TAB> <Plug>(coc-convert-snippet)
imap <TAB> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'


" ––– Ultisnips –––

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips/"
let g:UltiSnipsEditSplit="tabdo"
