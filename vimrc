set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vundle manages Vundle.
Bundle 'gmarik/vundle'

" My bundles
" Github
" Bundle 'scrooloose/nerdtree'
" Bundle 'benmills/vimux'
" Bundle 'tpope/vim-fugitive'
" Bundle 'sjl/gundo.vim'
" Bundle 'godlygeek/tabular'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'skalnik/vim-vroom'
" Bundle 'chriskempson/base16-vim'
" Bundle 'pangloss/vim-javascript'
" Bundle 'othree/html5.vim'
" Bundle 'derekwyatt/vim-scala'
" Bundle 'guns/vim-clojure-static'
" Bundle 'tpope/vim-classpath'
" Bundle 'tpope/vim-fireplace'
" Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/unite.vim'
" Bundle 'ervandew/supertab'
" Bundle 'teramako/jscomplete-vim'
" Bundle 'myhere/vim-nodejs-complete'
" Bundle 'tpope/vim-bundler'
" Bundle 'tpope/vim-dispatch'
" Bundle 'tpope/vim-rvm'
" Bundle 'tpope/vim-rake'
" Bundle 'tpope/vim-rails'
" Bundle 'elixir-lang/vim-elixir'
" Bundle 'ujihisa/neco-ghc'
" B Bundle 'lukerandall/haskellmode-vim'
" Bundle 'SAS-Syntax'
" Bundle 'SAS-Indent'

" base16 colorscheme
" colorscheme base16-default

filetype plugin indent on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set nu

set nowrap

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set whichwrap+=<,>,h,l,[,]

syntax enable
set encoding=utf-8

set history=1000

set filetype=on
filetype plugin indent on

" Keep at least four lines ahead of the curser when scrolling.
set so=4

" Display extra whitespace
set list listchars=tab:»·,trail:·

set t_Co=256
set background=dark

set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set ruler

set laststatus=2

set backspace=indent,eol,start

let $PATH = $PATH . ':' . expand("~/.cabal/bin")

" neocomplete stuff.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase
let g:neocomplete#enable_smart_case = 1

let g:haddock_browser="/usr/bin/google-chrome"

let g:nodejs_complete_config = {
      \ 'js_compl_fn': 'jscomplete#CompleteJS',
      \ 'max_node_compl_len': 15
      \}

let mapleader = ","

:nnoremap <CR> :nohlsearch<CR>
:nnoremap <F5> :GundoToggle<CR>
:nnoremap <F8> :TagbarToggle<CR>

map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
let g:VimuxHeight = "30"

let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1
" let g:vroom_use_zeus = 1

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
