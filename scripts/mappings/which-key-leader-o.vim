" Other commands
let g:which_key_map['o'] = {
      \ 'name':'+Other'                       ,
      \ 'a': '(Live) Easy Align'              ,
      \ 'A': 'Format Vim Which Key Dictionary',
      \ 'c': '+COC'                           ,
      \ 'd': [ ':qa'                          , 'Force Quit Buffers'           ] ,
      \ 'D': [ ':qa!'                         , 'Force Quit All Buffers'       ] ,
      \ 'o': [ '<C-w>gf'                      , 'Open File In New Tab'         ] ,
      \ 'q': [ ':qa'                          , 'Force Quit Buffer'            ] ,
      \ 'Q': [ ':qa!'                         , 'Force Quit All Buffers'       ] ,
      \ 'r': 'Search And Replace'             ,
      \ 's': [ ':source $MYVIMRC'             , 'Reload MYVIMRC'               ] ,
      \ 'S': '+Startify'                      ,
      \ 't': [ ':TagbarToggle'                , 'Toggle Tagbar'                ] ,
      \ 'T': [ ':set termguicolors!'          , 'Toggle "termguicolors" Option'] ,
      \ 'w':'+Windows'
      \ }

" COC commands
let g:which_key_map['o']['c'] = {
      \ 'name':'+COC'                                  ,
      \ 'm': [ ':CocList marketplace'                  , 'COC Marketplace'] ,
      \ 's': [ ':CocList snippets'                     , 'COC Snippets'   ] ,
      \ 'c': [ ':tabe ~/.config/nvim/coc-settings.json', 'COC Config'     ] ,
      \ 'r': [ ':CocList commands'                     , 'COC Commands'   ]
      \ }

" Startify commands
let g:which_key_map['o']['S'] = {
      \ 'name':'+Startify',
      \ 'c': [ ':SClose'  , 'Close Session' ] ,
      \ 'd': [ ':SDelete' , 'Delete Session'] ,
      \ 'l': [ ':SLoad'   , 'Load Session'  ] ,
      \ 'o': [ ':Startify', 'Open Startify' ] ,
      \ 's': [ ':SSave'   , 'Save Session'  ]
      \ }

" Window commands
let g:which_key_map['o']['w'] = {
      \ 'name':'+Windows',
      \ '=': [ '<C-w>='  , 'Equalize Window Height'] ,
      \ 'b': [ ':split'  , 'Duplicate Below'       ] ,
      \ 'h': [ '<C-w>h'  , 'Go Left A Window'      ] ,
      \ 'H': [ '<C-w>H'  , 'Move Window Left'      ] ,
      \ 'j': [ '<C-w>j'  , 'Go Down A Window'      ] ,
      \ 'J': [ '<C-w>J'  , 'Move Window Down'      ] ,
      \ 'k': [ '<C-w>k'  , 'Go Up A Window'        ] ,
      \ 'K': [ '<C-w>K'  , 'Move Window Up'        ] ,
      \ 'l': [ '<C-w>l'  , 'Go Right A Window'     ] ,
      \ 'L': [ '<C-w>L'  , 'Move Window Right'     ] ,
      \ 'o': [ '<C-w>+'  , 'Increase Height (+2)'  ] ,
      \ 'r': [ ':vsplit' , 'Duplicate Right'       ] ,
      \ 's': [ ':Windows', 'Search Windows'        ] ,
      \ 't': [ '<C-w>T'  , 'Open Windows In Tabs'  ] ,
      \ 'u': [ '<C-w>-'  , 'Decrease Height (-2)'  ]
      \ }
