let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Files']          },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      }
      \ ]

let g:startify_bookmarks = [
      \ { 'i': '~/.config/nvim/init.vim' },
      \ { 'z': '~/.zshrc' },
      \ ]

let g:startify_custom_header = [
      \ ' _   _                 _           ',
      \ '| \ | |               (_)          ',
      \ '|  \| | ___  _____   ___ _ __ ___  ',
      \ '| . ` |/ _ \/ _ \ \ / / | ''_ ` _ \ ',
      \ '| |\  |  __/ (_) \ V /| | | | | | |',
      \ '|_| \_|\___|\___/ \_/ |_|_| |_| |_|',
      \]

" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1
" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1
" If you want Unicode
let g:startify_fortune_use_unicode = 1
" Automatically update sessions
let g:startify_session_persistence = 1
" Get rid of empy buffer and quit
let g:startify_enable_special = 0