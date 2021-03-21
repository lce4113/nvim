" ––– Codi ––––

autocmd BufEnter *.py Codi

let g:codi#interpreters = {
      \ 'python': {
      \    'bin': 'python3',
      \    'prompt': '^\(>>>\|\.\.\.\) '
      \ }
      \ }

let g:codi#virtual_text_prefix = " ❯ "
