" ––– COC Snippets –––

function! s:check_back_space() abort
  let col = col('.') -1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <TAB> "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>"
