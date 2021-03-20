" Vim Plug commands
let g:which_key_map['p'] = {
      \ 'name':'+VimPlug'     ,
      \ 'c': [ ':PlugClean'   , 'Remove Unlisted Plugins'        ] ,
      \ 'd': [ ':PlugDiff'    , 'Show Changes'                   ] ,
      \ 'i': [ ':PlugInstall' , 'Install Plugins'                ] ,
      \ 'u': [ ':PlugUpdate'  , 'Install + Update Plugins'       ] ,
      \ 's': [ ':PlugStatus'  , 'Plugin Statuses'                ] ,
      \ 'S': [ ':PlugSnapshot', 'Make Script For Current Plugins']
      \ }
