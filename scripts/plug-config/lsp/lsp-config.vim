" LSP Commands
nnoremap <silent> <LEADER>hc :Lspsaga code_action<CR>
nnoremap <silent> <LEADER>hd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <LEADER>hD :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <LEADER>hf :Lspsaga lsp_finder<CR>
nnoremap <silent>         gh :Lspsaga hover_doc<CR>
nnoremap <silent> <LEADER>hh :Lspsaga hover_doc<CR>
nnoremap <silent> <LEADER>hH :Lspsaga signature_help<CR>
nnoremap <silent> <LEADER>hi :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <LEADER>hp :Lspsaga preview_definition()<CR>
nnoremap <silent> <LEADER>hr :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <LEADER>hs :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> <LEADER>ht :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <LEADER>j  :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <LEADER>k  :lua vim.lsp.diagnostic.goto_prev()<CR>

" Python config
lua require('lspconfig').pyright.setup{}
" C++ config
lua require('lspconfig').clangd.setup{}
" Vim config
" lua require('lspconfig').vimls.setup{}
