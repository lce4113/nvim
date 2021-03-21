" ––– Top Level Mappings –––

" Space + a to insert a character after the current position in normal mode
nnoremap <LEADER>a li <ESC>r
" Space + i to insert a character before the current position in normal mode
nnoremap <LEADER>i i <ESC>r

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

" LSP
source ~/.config/nvim/scripts/mappings/which-key-leader-h.vim
" Vim Clap
source ~/.config/nvim/scripts/mappings/which-key-leader-l.vim
" Other
source ~/.config/nvim/scripts/mappings/which-key-leader-o.vim
" Vim Plug
source ~/.config/nvim/scripts/mappings/which-key-leader-p.vim
" FZF (Search)
source ~/.config/nvim/scripts/mappings/which-key-leader-s.vim
" Tabs
source ~/.config/nvim/scripts/mappings/which-key-leader-t.vim
