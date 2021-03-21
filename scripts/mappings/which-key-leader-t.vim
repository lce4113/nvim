" Tab commands
let g:which_key_map['t'] = {
      \ 'name':'+Tabs'         ,
      \ '.': [ ':tabe $MYVIMRC', 'Open $MYVIMRC'     ] ,
      \ 'd': [ ':tabe %'       , 'Duplicate Tab'     ] ,
      \ 'h': [ ':tabm -1'      , 'Move Tab Left'     ] ,
      \ 'l': [ ':tabm +1'      , 'Move Tab Right'    ] ,
      \ 'n': [ ':tabn'         , 'Go To Next Tab'    ] ,
      \ 'p': [ ':tabp'         , 'Go To Previous Tab'] ,
      \ 't': [ ':tabe #'       , 'Open Last Tab'     ]
      \ }
