" Top level mappings
let g:which_key_map = {
      \ '.': [ ':tabe $MYVIMRC'                   , 'Open $MYVIMRC'               ] ,
      \ '/': [ ':Commentary'                      , 'Toggle Comment'              ] ,
      \ ']': [ '<C-]>'                            , 'Jump To Section In Help File'] ,
      \ 'a':'Append Character'                    ,
      \ 'c': [ ':Commentary'                      , 'Toggle Comment'              ] ,
      \ 'd': [ ':q'                               , 'Quit Tab'                    ] ,
      \ 'D': [ ':q!'                              , 'Force Quit Tab'              ] ,
      \ 'f': [ ':Autoformat'                      , 'Format Buffer'               ] ,
      \ 'F': {
      \    'name' : '+FAR'                        ,
      \    'b' : [':Farr --source=vimgrep'        , 'In Current Buffer'           ] ,
      \    'p' : [':Farr --source=rgnvim'         , 'In Current Project'          ] ,
      \ }                                         ,
      \ 'g': [ ':LazyGit'                         , 'Open Lazy Git'               ] ,
      \ 'h': '+LSP'                               ,
      \ 'i':'Insert Character'                    ,
      \ 'j':'Go To Next Error'                    ,
      \ 'k':'Go To Previous Error'                ,
      \ 'l':'+VimClap'                            ,
      \ 'm': [ ':MRU'                             , 'File History (MRU)'          ] ,
      \ 'n': [ ':set relativenumber!'             , 'Toggle Hybrid Line Numbers'  ] ,
      \ 'N': [ ':set number!'                     , 'Toggle Line Numbers'         ] ,
      \ 'o':'+Other'                              ,
      \ 'p':'+Plug'                               ,
      \ 'q': [ ':q'                               , 'Quit Tab'                    ] ,
      \ 'Q': [ ':q!'                              , 'Force Quit Tab'              ] ,
      \ 'r':'Run File With File Input'            ,
      \ 'R':'Run File'                            ,
      \ 's':'+Search'                             ,
      \ 't':'+Tabs'                               ,
      \ 'T': [ ':NERDTreeToggle'                  , 'File Tree'                   ] ,
      \ 'w': [ ':Autoformat | w'                  , 'Save File'                   ] ,
      \ 'W': [ ':wa'                              , 'Save All Buffers'            ] ,
      \ 'z': [ ':Goyo | set number relativenumber', 'Zen Mode (Goyo)'             ]
      \ }

" LSP commands
let g:which_key_map['h'] = {
      \ 'name':'+LSP'                     ,
      \ 'c': 'See Code Actions'           ,
      \ 'd': 'Go To Definition'           ,
      \ 'D': 'Go to Declaration'          ,
      \ 'f': 'LSP Finder (See References)',
      \ 'h': 'Hover'                      ,
      \ 'H': 'Signature Help'             ,
      \ 'i': 'Implementation'             ,
      \ 'p': 'Preview Definition'         ,
      \ 'r': 'Rename'                     ,
      \ 's': 'Show Diagnostics'           ,
      \ 't': 'Type Definition'
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

source ~/.config/nvim/scripts/mappings/which-key-leader-o.vim

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
      \ 'h': [ ':tabm +1'      , 'Move Tab Right'    ] ,
      \ 'l': [ ':tabm -1'      , 'Move Tab Left'     ] ,
      \ 'n': [ ':tabn'         , 'Go To Next Tab'    ] ,
      \ 'p': [ ':tabp'         , 'Go To Previous Tab'] ,
      \ 't': [ ':tabe #'       , 'Open Last Tab'     ]
      \ }


" Register which key map
autocmd! User vim-which-key call which_key#register('<SPACE>', "g:which_key_map")
