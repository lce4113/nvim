" Python config
lua require('lspconfig').pyright.setup{}
" C++ config
lua require('lspconfig').ccls.setup{}
" Vim config
" lua require('lspconfig').vimls.setup{}

" source ~/.config/nvim/scripts/plug-config/lsp/lsp-config.vim
luafile ~/.config/nvim/scripts/plug-config/lsp/lsp-kind.lua
luafile ~/.config/nvim/scripts/plug-config/lsp/lsp-saga.lua
