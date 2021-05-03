" ––– LSP Commands –––

nnoremap <silent> <LEADER>lc :Lspsaga code_action<CR>
nnoremap <silent> <LEADER>ld :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <LEADER>lD :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <LEADER>lf :Lspsaga lsp_finder<CR>
nnoremap <silent> <LEADER>lh :Lspsaga hover_doc<CR>
nnoremap <silent> <LEADER>lH :Lspsaga signature_help<CR>
nnoremap <silent> <LEADER>li :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <LEADER>lp :Lspsaga preview_definition()<CR>
nnoremap <silent> <LEADER>lr :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <LEADER>ls :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> <LEADER>lt :lua vim.lsp.buf.type_definition()<CR>

let g:which_key_map['l'] = {
      \ 'name':"+LSP"         ,
      \ 'c': "See Code Actions",
      \ 'd': "Go To Definition",
      \ 'D': "Go To Declaration",
      \ 'f': "LSP Finder (See References)",
      \ 'h': "Hover",
      \ 'H': "Signature Help",
      \ 'i': "Implementation",
      \ 'p': "Preview Definition",
      \ 'r': "Rename",
      \ 's': "Show Diagnostics",
      \ 't': "Type Definition",
      \ }
