" Map leader to which_key
nnoremap <LEADER> :silent WhichKey '<SPACE>'<CR>
vnoremap <LEADER> :silent<C-u> :silent WhichKeyVisual '<SPACE>'<CR>
nnoremap m :silent WhichKey 'm'<CR>
vnoremap m :silent<C-u> :silent WhichKeyVisual 'm'<CR>

" Create maps to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
" Reload map every time popup opens
let g:which_key_run_map_on_popup = 1
" Minimum horizontal space between columns
let g:which_key_hspace = 3
" Time until the menu appears
set timeoutlen=250

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd FileType which_key set laststatus=0 noshowmode noruler
autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Top level mappings
let g:which_key_map = {
      \ '.': [ ':tabe $MYVIMRC'                     , 'Open $MYVIMRC'               ] ,
      \ '/': [ ':Commentary'                        , 'Toggle Comment'              ] ,
      \ ']': [ '<C-]>'                              , 'Jump To Section In Help File'] ,
      \ 'a':'Append Character'                      ,
      \ 'c': [ ':Commentary'                        , 'Toggle Comment'              ] ,
      \ 'd': [ ':q'                                 , 'Quit Buffer'                 ] ,
      \ 'D': [ ':call delete(expand("%"))'          , 'Delete Current File'         ] ,
      \ 'f': [ ':Autoformat'                        , 'Format Buffer'               ] ,
      \ 'F': {
      \    'name' : '+FAR'                          ,
      \    'b' : [':Farr --source=vimgrep'          , 'In Current Buffer'           ] ,
      \    'p' : [':Farr --source=rgnvim'           , 'In Current Project'          ] ,
      \ }                                           ,
      \ 'g': [ ':LazyGit'                           , 'Open Lazy Git'               ] ,
      \ 'i':'Insert Character'                      ,
      \ 'j': [ ':lua vim.lsp.diagnostic.goto_next()', 'Go To Next Error'            ] ,
      \ 'k': [ ':lua vim.lsp.diagnostic.goto_prev()', 'Go To Previous Error'        ] ,
      \ 'l': '+VimClap'                             ,
      \ 'm': [ ':MRU'                               , 'File History (MRU)'          ] ,
      \ 'n': [ ':set relativenumber!'               , 'Toggle Hybrid Line Numbers'  ] ,
      \ 'N': [ ':set number!'                       , 'Toggle Line Numbers'         ] ,
      \ 'o':'+Other'                                ,
      \ 'p':'+Plug'                                 ,
      \ 'q': [ ':q'                                 , 'Quit Buffer'                 ] ,
      \ 'Q': [ ':qa'                                , 'Quit All Buffers'            ] ,
      \ 'r':'Run File With File Input'              ,
      \ 'R':'Run File'                              ,
      \ 's':'+Search'                               ,
      \ 't':'+Tabs'                                 ,
      \ 'T': [ ':NERDTreeToggle'                    , 'File Tree'                   ] ,
      \ 'w': [ ':Autoformat | w'                    , 'Save File'                   ] ,
      \ 'W': [ ':wa'                                , 'Save All Buffers'            ] ,
      \ 'z': [ ':Goyo | set number relativenumber'  , 'Zen Mode (Goyo)'             ]
      \ }

" Vim Clap commands
let g:which_key_map['l'] = {
      \ 'name':'+VimClap'             ,
      \ '/': [ ':Clap search_history' , 'Search History'           ] ,
      \ 'b': [ ':Clap buffers'        , 'Buffers'                  ] ,
      \ 'B': [ ':Clap marks'          , 'Bookmarks'                ] ,
      \ 'c': [ ':Clap bcommits'       , 'Current Buffer''s Commits'] ,
      \ 'C': [ ':Clap bcommits'       , 'All Commits'              ] ,
      \ 'e': [ ':Clap registers'      , 'Registers'                ] ,
      \ 'f': [ ':Clap filer'          , 'File Explorer'            ] ,
      \ 'F': [ ':Clap files'          , 'Files'                    ] ,
      \ 'g': [ ':Clap gfiles'         , 'Git Files'                ] ,
      \ 'G': [ ':Clap git_diff_files' , 'Edited Git Files'         ] ,
      \ 'h': [ ':Clap help_tags'      , 'Help Tags'                ] ,
      \ 'l': [ ':Clap blines'         , 'Current Buffer''s Lines'  ] ,
      \ 'L': [ ':Clap lines'          , 'All Lines'                ] ,
      \ 'm': [ ':Clap command'        , 'Vim Commands'             ] ,
      \ 'M': [ ':Clap command_history', 'Vim Command History'      ] ,
      \ 'o': [ ':Clap loclist'        , 'Location List'            ] ,
      \ 'O': [ ':Clap proj_tags'      , 'Project Tags'             ] ,
      \ 'p': [ ':Clap providers'      , 'All Vim Clap Providers'   ] ,
      \ 'P': [ ':Clap maps'           , 'Key Mappings'             ] ,
      \ 'q': [ ':Clap quickfix'       , 'Quickfix Errors'          ] ,
      \ 'r': [ ':Clap grep'           , 'Ripgrep'                  ] ,
      \ 'R': [ ':Clap grep2'          , 'Ripgrep With Caching'     ] ,
      \ 's': [ ':Clap colors'         , 'Colorschemes'             ] ,
      \ 'S': [ ':Clap search_history' , 'Search History'           ] ,
      \ 't': [ ':Clap filetypes'      , 'Filetypes'                ] ,
      \ 'T': [ ':Clap tags'           , 'vista.vim Tags'           ] ,
      \ 'w': [ ':Clap windows'        , 'Windows'                  ] ,
      \ 'y': [ ':Clap history'        , 'File History'             ] ,
      \ 'Y': [ ':Clap yanks'          , 'Yanks'                    ]
      \ }

" Other commands
let g:which_key_map['o'] = {
      \ 'name':'+Other'                       ,
      \ 'a': '(Live) Easy Align'              ,
      \ 'A': 'Format Vim Which Key Dictionary',
      \ 'c': '+COC'                           ,
      \ 'd': [ ':qa'                          , 'Quit All Buffers'             ] ,
      \ 'o': [ '<C-w>gf'                      , 'Open File In New Tab'         ] ,
      \ 'q': [ ':q!'                          , 'Force Quit Buffer'            ] ,
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
      \ 'K': [ '<C-w>K'  , 'Move Window Up'      ] ,
      \ 'l': [ '<C-w>l'  , 'Go Right A Window'     ] ,
      \ 'L': [ '<C-w>L'  , 'Move Window Right'      ] ,
      \ 'o': [ '<C-w>+'  , 'Increase Height (+2)'  ] ,
      \ 'r': [ ':vsplit' , 'Duplicate Right'       ] ,
      \ 's': [ ':Windows', 'Search Windows'        ] ,
      \ 't': [ '<C-w>T'  , 'Open Windows In Tabs'  ] ,
      \ 'u': [ '<C-w>-'  , 'Decrease Height (-2)'  ]
      \ }

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

" FZF commands
let g:which_key_map['s'] = {
      \ 'name':'+Search'   ,
      \ 'a': [ ':Ag'       , 'Silver Searcher (Ag)'] ,
      \ 'b': [ ':Buffers'  , 'Buffers'             ] ,
      \ 'c': [ ':Colors'   , 'Color Schemes'       ] ,
      \ 'C': [ ':Commits'  , 'Commit History'      ] ,
      \ 'f': [ ':Files'    , 'Files'               ] ,
      \ 'g': [ ':GFiles'   , 'Git Files'           ] ,
      \ 'F': [ ':Filetypes', 'Filetypes'           ] ,
      \ 'h': [ ':History'  , 'File History'        ] ,
      \ 'H': [ ':History:' , 'Command History'     ] ,
      \ 'l': [ ':BLines'   , 'Lines'               ] ,
      \ 'm': [ ':Maps'     , 'Key Mappings'        ] ,
      \ 's': [ ':Snippets' , 'Snippets'            ] ,
      \ 'r': [ ':Rg'       , 'Ripgrep'             ] ,
      \ 't': [ ':BTags'    , 'Tags'                ] ,
      \ 'w': [ ':Windows'  , 'Windows'             ]
      \ }

" Tab commands
let g:which_key_map['t'] = {
      \ 'name':'+Tabs'         ,
      \ '.': [ ':tabe $MYVIMRC', 'Open $MYVIMRC'     ] ,
      \ 'd': [ ':tabe %'       , 'Duplicate Tab'     ] ,
      \ 'h': [ ':tabm -1'      , 'Move Tab Left'     ] ,
      \ 'l': [ ':tabm +1'      , 'Move Tab Right'    ] ,
      \ 'n': [ ':tabnext'      , 'Go To Next Tab'    ] ,
      \ 'p': [ ':tabnext'      , 'Go To Previous Tab'] ,
      \ 't': [ ':tabe #'       , 'Open Last Tab'     ]
      \ }


" Register which key map
autocmd! User vim-which-key call which_key#register('<SPACE>', "g:which_key_map")
