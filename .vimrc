set sw=4
set hlsearch
set ic
set bg=dark
set si
set expandtab
set number
syntax enable
set tabstop=4

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" Go plugin
filetype off
filetype plugin indent off
set runtimepath+=/home/florian/Code/go/misc/vim
filetype plugin indent on
syntax on

" LaTeX plugin
filetype plugin indent on
set grepprg=grep\ -nH\ $*
set runtimepath+=/usr/share/vim/vimfiles
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Tex_SmartKeyQuote=0

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

augroup filetype
        autocmd BufNewFile,BufRead *.phtml set filetype=php
augroup END 
map <C-m> ]c
map <C-b> [c
