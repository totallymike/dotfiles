set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
end

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \ 'mac' : 'make -f make_mac.mak',
  \ },
  \}

" I want these plugins everywhere
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kana/vim-metarw'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'joker1007/vim-metarw-github-issues'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'rking/ag.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'benmills/vimux'
NeoBundle 'cakebaker/scss-syntax.vim'

" Theme
NeoBundle 'chriskempson/base16-vim'

" Ruby-specific plugins
let s:ruby_plugins = [
      \'vim-ruby/vim-ruby',
      \'skalnik/vim-vroom',
      \'tpope/vim-bundler',
      \'tpope/vim-rbenv',
      \'tpope/vim-rake',
      \'tpope/vim-rails',
      \'ngmy/vim-rubocop']

for g:plugin in s:ruby_plugins
  NeoBundleLazy g:plugin, {'autoload' : { 'filetypes' : ['rb', 'ruby'] }}
endfor

" Javascript plugins
let s:javascript_plugins = [
      \'pangloss/vim-javascript',
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

NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload': {'filetypes': ['coffee']}}

NeoBundleLazy 'VimClojure', {'autoload': {'filetypes': ['clojure']}}

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

set hidden
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set ruler

set laststatus=2

set backspace=indent,eol,start

let $PATH = $PATH . ':' . expand("~/.cabal/bin")

let g:unite_winheight = 20
let g:unite_split_rule = 'botright'

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nobreak --nocolor --noheading'
  let g:unite_source_grep_recursive_opt = ''
endif

let g:github_user='totallymike'
let g:github_token='412f27c60426aa3147cd3931bba1c4b4b5be111b'

nnoremap <Leader>/ :<C-u>Unite -auto-preview grep:.<CR>
nnoremap <C-p> :Unite -auto-preview grep:.<CR>

call unite#filters#matcher_default#use(['matcher_fuzzy'])

let g:EclimCompletionMethod = 'omnifunc'

let g:nodejs_complete_config = {
      \ 'js_compl_fn': 'jscomplete#CompleteJS',
      \ 'max_node_compl_len': 15
      \}

let mapleader = ","

:nnoremap <CR> :nohlsearch<CR>
:nnoremap <F5> :GundoToggle<CR>

nnoremap <Leader>f :Unite -start-insert file_rec/async:!<CR>

" vimux
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
let g:VimuxHeight = "25"

" vim-vroom
let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1

" vim-rubocop
let g:vimrubocop_keymap = 0
nmap <Leader>c :RuboCop<CR>

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set undodir=~/.vim/undodir
set undofile
set backupdir=~/.vim/_backup  " where to put backup files
set directory=~/.vim/_temp    " Where to put swap files.
