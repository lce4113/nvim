" ––– Vim Plug Commands –––

nnoremap <LEADER>pc :PlugClean<CR>:q
nnoremap <LEADER>pd :PlugDiff<CR>:q
nnoremap <LEADER>pi :PlugInstall<CR>:q
nnoremap <LEADER>pu :PlugUpdate<CR>:q
nnoremap <LEADER>ps :PlugStatus<CR>:q
nnoremap <LEADER>pS :PlugSnapshot<CR>:q

let g:which_key_map['p'] = {
      \ 'name':'+VimPlug'              ,
      \ 'c': 'Remove Unlisted Plugins' ,
      \ 'd': 'Show Changes'            ,
      \ 'i': 'Install Plugins'         ,
      \ 'u': 'Install + Update Plugins',
      \ 's': 'Plugin Statuses'         ,
      \ 'S': 'Make Script For Current Plugins'
      \ }
