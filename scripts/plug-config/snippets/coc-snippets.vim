" ––– COC Snippets –––

inoremap <silent><expr> <TAB> "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>"

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'
