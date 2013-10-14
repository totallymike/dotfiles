set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
end

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" I want these plugins everywhere
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'benmills/vimux'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'SAS-Syntax'
NeoBundle 'SAS-Indent'

" Theme
NeoBundle 'chriskempson/base16-vim'

" Ruby-specific plugins
let s:ruby_plugins = [
      \'vim-ruby/vim-ruby',
      \'skalnik/vim-vroom',
      \'tpope/vim-bundler',
      \'tpope/vim-rvm',
      \'tpope/vim-rake',
      \'tpope/vim-rails']

for g:plugin in s:ruby_plugins
  NeoBundleLazy g:plugin, {'autoload' : { 'filetypes' : ['rb', 'ruby'] }}
endfor

" Javascript plugins
let s:javascript_plugins = [
      \'pangloss/vim-javascript',
      \'teramako/jscomplete-vim',
      \'myhere/vim-nodejs-complete']

for g:plugin in s:javascript_plugins
  NeoBundleLazy g:plugin, {'autoload' : {'filetypes' : ['javascript', 'js']}}
endfor

NeoBundleLazy 'othree/html5.vim', {'autoload' : {'filetypes' : ['html']}}
NeoBundleLazy 'JulesWang/css.vim', {'autoload' : {'filetypes' : ['scss.css']}}

NeoBundleLazy 'derekwyatt/vim-scala', {'autoload': {'filetypes' : ['scala']}}

NeoBundleLazy 'ujihisa/neco-ghc', {'autoload': {'filetypes' : ['haskell']}}

NeoBundleLazy 'tpope/vim-markdown', {'autoload': {'filetypes' : ['markdown']}}

NeoBundleLazy 'elixir-lang/vim-elixir', {'autoload': {'filetypes' : ['elixir']}}

unlet g:plugin
" Check NeoBundles
NeoBundleCheck

" My bundles
" Github
" Bundle 'godlygeek/tabular'
" Bundle 'guns/vim-clojure-static'
" Bundle 'tpope/vim-classpath'
" Bundle 'tpope/vim-fireplace'
" Bundle 'tpope/vim-dispatch'
" B Bundle 'lukerandall/haskellmode-vim'

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

" Let vim know about 256-color shells
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
" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3

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
let g:VimuxHeight = "25"

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
