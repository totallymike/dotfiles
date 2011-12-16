runtime bundle/vim-pathogen/autoload/pathogen.vim
set nocompatible
syntax enable
set encoding=utf-8

call pathogen#infect()
set filetype=on
filetype plugin indent on


" Keep at least four lines ahead of the curser when scrolling.
set so=4

set hlsearch
set ignorecase
set smartcase
set incsearch

:nnoremap <CR> :nohlsearch<CR>
:nnoremap <F5> :GundoToggle<CR>
:nnoremap <F8> :TagbarToggle<CR>
" Allow backgrounding buffers without writing them,
" And remember marks/undo for backgrounded buffers
set hidden

set showmatch
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ruler

" Set statusline to look just like with ruler on, but with fugitev
" info enabled
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set undodir=~/.vim/undodir
set undofile
set backupdir=~/.vim/_backup  " where to put backup files
set directory=~/.vim/_temp    " Where to put swap files.
