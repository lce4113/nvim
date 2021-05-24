" ––– LSP Commands –––

nmap <silent> <LEADER>lc <Plug>(coc-codeaction)
nmap <silent> <LEADER>ld <Plug>(coc-definition)
nmap <silent> <LEADER>lD <Plug>(coc-declaration)
nmap <silent> <LEADER>lf <Plug>(coc-references)
nmap <silent> <LEADER>lF <Plug>(coc-format)
nmap <silent> <LEADER>lh :call CocActionAsync('showSignatureHelp')<CR>
nmap <silent> <LEADER>li <Plug>(coc-implementation)
nmap <silent> <LEADER>lo <Plug>(coc-openlink)
nmap <silent> <LEADER>lr <Plug>(coc-rename)
nmap <silent> <LEADER>lR <Plug>(coc-refactor)

nmap <LEADER>j <Plug>(coc-diagnostic-next)
nmap <LEADER>k <Plug>(coc-diagnostic-prev)

let g:which_key_map['l'] = {
      \ 'name':"+LSP"                     ,
      \ 'c': "See Code Actions"           ,
      \ 'd': "Go To Definition"           ,
      \ 'D': "Go To Declaration"          ,
      \ 'f': "LSP Finder (See References)",
      \ 'F': "LSP Format"                 ,
      \ 'h': "Signature Help"             ,
      \ 'i': "Implementation"             ,
      \ 'o': "Open Link"                  ,
      \ 'r': "Rename"                     ,
      \ 'R': "Refactor"                   ,
      \ }
