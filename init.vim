if exists('g:vscode')

  " ––– VSCode Only –––

  " VSCode specific stuff
  source ~/.config/nvim/scripts/vscode.vim

else

  " ––– Neovim Only –––

  " vim-plug plugins
  source ~/.config/nvim/scripts/plugins.vim
  " Plugin configuration
  source ~/.config/nvim/scripts/plug-config/plug-config.vim

endif

" ––– Neovim and VSCode –––

" Key mappings and auto commands
source ~/.config/nvim/scripts/mappings/mappings.vim
" Basic vim settings
source ~/.config/nvim/scripts/settings.vim
