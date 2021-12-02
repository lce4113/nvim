" ––– Top Level Mappings –––

" Comment out line(s)
nnoremap <LEADER>c :Commentary<CR>
xnoremap <LEADER>c :Commentary<CR>
nnoremap <LEADER>/ :Commentary<CR>
xnoremap <LEADER>/ :Commentary<CR>
" Append a character after the current position in normal mode
nnoremap <LEADER>a li <ESC>r
" Insert a character before the current position in normal mode
nnoremap <LEADER>i i <ESC>r
" Format a file
function Format()
  if &filetype ==# 'cpp'
    :ClangFormat
  else
    :Autoformat
  endif
endfunction
nnoremap <LEADER>f :call Format()<CR>
" Update Neovim config by git pulling in coc and nvim directories
function Update()
  echohl ClapMatches4
  echo "Updating ~/.config/nvim..."
  !cd ~/.config/nvim && git pull
  echohl ClapMatches4
  echo "Updating ~/.config/coc..."
  !cd ~/.config/coc && git pull
endfunction
nnoremap <LEADER>u :call Update()<CR>

let g:which_key_map = {
      \ '.': [ ':tabe $MYVIMRC'                               , 'Open $MYVIMRC'               ] ,
      \ ',': [ ':tabe $P/Comp Prog/Templates/std io/main.cpp' , 'Open C++ STD IO Template'    ] ,
      \ '<': [ ':tabe $P/Comp Prog/Templates/file io/main.cpp', 'Open C++ File IO Template'   ] ,
      \ '/': 'Toggle Comment'                                 ,
      \ ']': [ '<C-]>'                                        , 'Jump To Section In Help File'] ,
      \ 'a':'Append Character',
      \ 'b': [ ':%s/TC() {\n  \/\* /TC() {\r  '               , 'Enable Multiple Test Cases'  ] ,
      \ 'c':'Toggle Comment'                                  ,
      \ 'd': [ ':q'                                           , 'Quit Tab'                    ] ,
      \ 'D': [ ':q!'                                          , 'Force Quit Tab'              ] ,
      \ 'e': [ ':normal G{kk'                                 , 'Jump To Solve Function'      ] ,
      \ 'f': 'Format Buffer'                                  ,
      \ 'F': {
      \    'name' : '+FAR'                                    ,
      \    'b' : [':Farr --source=vimgrep'                    , 'In Current Buffer'           ] ,
      \    'p' : [':Farr --source=rgnvim'                     , 'In Current Project'          ] ,
      \ }                                                     ,
      \ 'g': [ ':LazyGit'                                     , 'Open Lazy Git'               ] ,
      \ 'h': '+LSP'                                           ,
      \ 'i':'Insert Character'                                ,
      \ 'j':'Go To Next Error'                                ,
      \ 'k':'Go To Previous Error'                            ,
      \ 'l':'+VimClap'                                        ,
      \ 'm': 'Vertically Split A Main.in File'                ,
      \ 'n': [ ':set relativenumber!'                         , 'Toggle Hybrid Line Numbers'  ] ,
      \ 'N': [ ':set number!'                                 , 'Toggle Line Numbers'         ] ,
      \ 'o':'+Other'                                          ,
      \ 'p':'+Plug'                                           ,
      \ 'q': [ ':q'                                           , 'Quit Tab'                    ] ,
      \ 'Q': [ ':q!'                                          , 'Force Quit Tab'              ] ,
      \ 'r':'Run File With File Input'                        ,
      \ 'R':'Run File'                                        ,
      \ 's':'+Search'                                         ,
      \ 't':'+Tabs'                                           ,
      \ 'T': [ ':NERDTreeToggle %'                            , 'File Tree'                   ] ,
      \ 'u': 'Update Config'                                  ,
      \ 'v': [ ':Vista!!'                                     , 'Toggle Vista'                ] ,
      \ 'w': [ ':Autoformat | w'                              , 'Save File'                   ] ,
      \ 'W': [ ':wa'                                          , 'Save All Buffers'            ] ,
      \ 'z': [ ':Goyo | set number relativenumber'            , 'Zen Mode (Goyo)'             ]
      \ }

" LSP
source ~/.config/nvim/scripts/mappings/which-key-l.vim
" Vim Clap
source ~/.config/nvim/scripts/mappings/which-key-h.vim
" Other
source ~/.config/nvim/scripts/mappings/which-key-o.vim
" Vim Plug
source ~/.config/nvim/scripts/mappings/which-key-p.vim
" FZF (Search)
source ~/.config/nvim/scripts/mappings/which-key-s.vim
" Tabs
source ~/.config/nvim/scripts/mappings/which-key-t.vim
