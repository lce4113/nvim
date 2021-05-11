" ––– LSP Commands –––

" nnoremap <silent> <LEADER>lc :Lspsaga code_action<CR>
nnoremap <silent> <LEADER>lc :lua vim.lsp.buf.code_action()<CR>
" nnoremap <silent> <LEADER>lC :Lspsaga rename_code_action<CR>
nnoremap <silent> <LEADER>lC :lua vim.lsp.buf.completion()<CR>
" nnoremap <silent> <LEADER>ld :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> <LEADER>ld :lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> <LEADER>lD :Lspsaga show_cursor_diagnostics<CR>
nnoremap <silent> <LEADER>lD :lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> <LEADER>lf :Lspsaga lsp_finder<CR>
nnoremap <silent> <LEADER>lf :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <LEADER>lF :lua vim.lsp.buf.formatting()<CR>
" nnoremap <silent> <LEADER>lh :Lspsaga hover_doc<CR>
" nnoremap <silent> <LEADER>lh :lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <LEADER>lH :Lspsaga signature_help<CR>
nnoremap <silent> <LEADER>lh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <LEADER>lH :lua vim.lsp.buf.document_highlight()<CR>
" nnoremap <silent> <LEADER>li :Lspsaga implement<CR>
nnoremap <silent> <LEADER>li :lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <LEADER>lp :Lspsaga preview_definition()<CR>
" nnoremap <silent> <LEADER>lr :Lspsaga rename<CR>
nnoremap <silent> <LEADER>lr :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <LEADER>ls :lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <LEADER>lS :lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <LEADER>lt :lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> <LEADER>j  :Lspsaga diagnostic_jump_next<CR>
" nnoremap <silent> <LEADER>k  :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <LEADER>j  :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <LEADER>k  :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> gh         :lua vim.lsp.buf.hover()<CR>

let g:which_key_map['l'] = {
      \ 'name':"+LSP"         ,
      \ 'c': "See Code Actions",
      \ 'C': "See Completion",
      \ 'd': "Go To Definition",
      \ 'D': "Go To Declaration",
      \ 'f': "LSP Finder (See References)",
      \ 'F': "LSP Format",
      \ 'h': "Signature Help",
      \ 'H': "Document Highlight",
      \ 'i': "Implementation",
      \ 'p': "Preview Definition",
      \ 'r': "Rename",
      \ 's': "Document Symbol",
      \ 'S': "Workspace Symbol",
      \ 't': "Type Definition",
      \ }
