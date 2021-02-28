if exists('g:vscode')

" ––– VSCode –––

" VSCode specific stuff
source ~/.config/nvim/scripts/vscode.vim

else
" ––– Neovim –––

" vim-plug plugins
source ~/.config/nvim/scripts/plugins.vim
" Plugin configuration
source ~/.config/nvim/scripts/plug-config/main.vim

endif
" ––– Neovim and VSCode –––

" Key mappings and auto commands
source ~/.config/nvim/scripts/maps.vim
" Basic vim settings
source ~/.config/nvim/scripts/settings.vim
