" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Time until the menu appears
set timeoutlen=250

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
" Reload map every time popup opens
let g:which_key_run_map_on_popup = 1

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Top level mappings
let g:which_key_map = {
      \ '/': [ '<Plug>NERDCommenterToggle'         , 'Toggle Comment'             ],
      \ 'a': {
      \    'name':                                   '+AllBuffers'                 ,
      \    'w': [ ':wa'                            , 'Save All Buffers'           ],
      \    'q': [ ':qa'                            , 'COC Snippets'               ],
      \    'Q': [ ':qa!'                           , 'Force Quit All Buffers'     ]
      \ },
      \ 'A':                                         'Append Character'            ,
      \ 'c': {
      \    'name':                                   '+COC'                        ,
      \    'm': [ ':CocList marketplace'           , 'COC Marketplace'            ],
      \    's': [ ':CocList snippets'              , 'COC Snippets'               ],
      \    'c': [ ':CocList commands'              , 'COC Commands'               ]
      \ },
      \ 'f': [ ':Autoformat'                       , 'Format Buffer'              ],
      \ 'g':                                         '+Git'                        ,
      \ 'I':                                         'Insert Character'            ,
      \ 'm': [ ':MRU'                              , 'File History (MRU)'         ],
      \ 'n': [ ':set relativenumber!'              , 'Toggle Hybrid Line Numbers' ],
      \ 'N': [ ':set number!'                      , 'Toggle Line Numbers'        ],
      \ 'o':                                         '+Other'                      ,
      \ 'p':                                         '+Plug'                       ,
      \ 'q': [ ':q'                                , 'Quit Buffer'                ],
      \ 'Q': [ ':q!'                               , 'Force Quit Buffer'          ],
      \ 'r':                                         'Run File'                    ,
      \ 's':                                         '+Search'                     ,
      \ 'S': [ ':source $MYVIMRC'                  , 'Reload MYVIMRC'             ],
      \ 't':                                         '+Tabs'                       ,
      \ 'T': [ ':NERDTreeToggle'                   , 'File Tree'                  ],
      \ 'w': [ ':Autoformat | w'                   , 'Save File'                  ],
      \ 'W':                                         '+Windows'                    ,
      \ 'z': [ ':Goyo | set number relativenumber' , 'Zen Mode (Goyo)'            ]
      \ }

" Git commands
let g:which_key_map['g'] = {
      \ 'name':            '+Git'           ,
      \ 'l': [ ':LazyGit', 'Open Lazy Git' ]
      \ }

" Other commands
let g:which_key_map['o'] = {
      \ 'name':                 '+Other'         ,
      \ 't': [ ':TagbarToggle', 'Toggle Tagbar' ],
      \ }

" Vim Plug commands
let g:which_key_map['p'] = {
      \ 'name':                 '+VimPlug'                         ,
      \ 'c': [ ':PlugClean'   , 'Remove Unlisted Plugins'         ],
      \ 'd': [ ':PlugDiff'    , 'Show Changes'                    ],
      \ 'i': [ ':PlugInstall' , 'Install Plugins'                 ],
      \ 'u': [ ':PlugUpdate'  , 'Install + Update Plugins'        ],
      \ 's': [ ':PlugStatus'  , 'Plugin Statuses'                 ],
      \ 'S': [ ':PlugSnapshot', 'Make Script For Current Plugins' ]
      \ }

" Search commands
let g:which_key_map['s'] = {
      \ 'name':              '+Search'                       ,
      \ 'a': [ ':Ag'       , 'Silver Searcher (Ag)'         ],
      \ 'b': [ ':Buffers'  , 'Buffers'                      ],
      \ 'c': [ ':Colors'   , 'Color Schemes'                ],
      \ 'C': [ ':Commits'  , 'Commit History'               ],
      \ 'f': [ ':GFiles'    , 'Search Files'                 ],
      \ 'F': [ ':Filetypes', 'Filetype Syntax Highlighting' ],
      \ 'h': [ ':History'  , 'File History'                 ],
      \ 'H': [ ':History:' , 'Command History'              ],
      \ 'l': [ ':BLines'   , 'Search Lines'                 ],
      \ 'm': [ ':Maps'     , 'Key Mappings'                 ],
      \ 's': [ ':Snippets' , 'Snippets'                     ],
      \ 'r': [ ':Rg'       , 'Search Files By Text (Rg)'    ],
      \ 't': [ ':BTags'    , 'Search Tags'                  ],
      \ 'w': [ ':Windows'  , 'Search Windows'               ]
      \ }

" Tab commands
let g:which_key_map['t'] = {
      \ 'name':                  '+Tabs'               ,
      \ '.': [ ':tabe $MYVIMRC', 'Open $MYVIMRC'      ],
      \ 'd': [ ':tabe %'       , 'Duplicate Tab'      ],
      \ 'n': [ ':tabnext'      , 'Go To Next Tab'     ],
      \ 'p': [ ':tabnext'      , 'Go To Previous Tab' ],
      \ 't': [ ':tabe #'       , 'Open Last Tab'      ]
      \ }

" Window commands
let g:which_key_map['W'] = {
      \ 'name':            '+Windows'                ,
      \ '-': [ ':resize 2-', 'Decrease Height (-2)' ],
      \ '=': [ ':resize 2+', 'Increase Height (+2)' ],
      \ 'h': [ '<C-w>h'    , 'Go Left A Window'     ],
      \ 'j': [ '<C-w>j'    , 'Go Down A Window'     ],
      \ 'k': [ '<C-w>k'    , 'Go Up A Window'       ],
      \ 'l': [ '<C-w>l'    , 'Go Right A Window'    ],
      \ 'r': [ ':vsplit'   , 'Duplicate Right'      ],
      \ 's': [ ':Windows'  , 'Search Windows'       ],
      \ 't': [ '<C-w>T'    , 'Open Windows In Tabs' ],
      \ 'u': [ ':split'    , 'Duplicate Below'      ]
      \ }



" Register which key map
autocmd VimEnter * call which_key#register('<Space>', "g:which_key_map")
