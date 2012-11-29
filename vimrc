set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vundle manages Vundle.
Bundle 'gmarik/vundle'

" My bundles
" Github
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ervandew/supertab'

filetype plugin indent on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set whichwrap+=<,>,h,l,[,]

syntax enable
set encoding=utf-8

set filetype=on
filetype plugin indent on

" Keep at least four lines ahead of the curser when scrolling.
set so=4

" Display extra whitespace
set list listchars=tab:»·,trail:·

set t_Co=256
set background=dark

" colorscheme zenburn


set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set ruler


set laststatus=2

:nnoremap <CR> :nohlsearch<CR>
:nnoremap <F5> :GundoToggle<CR>
:nnoremap <F8> :TagbarToggle<CR>

" Allow backgrounding buffers without writing them,
" And remember marks/undo for backgrounded buffers
set hidden

" Set statusline to look just like with ruler on, but with fugitive
" info enabled
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set undodir=~/.vim/undodir
set undofile
set backupdir=~/.vim/_backup  " where to put backup files
set directory=~/.vim/_temp    " Where to put swap files.

let g:slimv_swank_clojure = '! xterm -e lein swank &'
