let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Files']          },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      }
      \ ]

let g:startify_bookmarks = [
      \ { '.': '~/.config/nvim/init.vim' },
      \ { 'a': '~/Google Drive/OmMahesh/Programming/Comp Prog/Advent of Code/' },
      \ { 'c': '~/Google Drive/OmMahesh/Programming/Comp Prog/' },
      \ { 'C': '~/Google Drive/OmMahesh/Programming/Comp Prog/USACO/test.cpp' },
      \ { 'e': '/etc/paths' },
      \ { 'i': '~/.config/nvim/init.vim' },
      \ { 'n': '~/.config/nvim/' },
      \ { 'p': '~/Google Drive/OmMahesh/Programming/' },
      \ { 'P': '~/Google Drive/OmMahesh/Programming/Comp Prog/Advent of Code/test.py' },
      \ { 'u': '~/Google Drive/OmMahesh/Programming/Comp Prog/USACO/' },
      \ { 'z': '~/.zshrc' }
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
" If you want Unicode
let g:startify_fortune_use_unicode = 1
" Automatically update sessions
let g:startify_session_persistence = 1
" Get rid of empty buffer and quit
let g:startify_enable_special = 0
" Don't change working directory
let g:startify_change_to_dir = 0
