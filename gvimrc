set guioptions-=T
if has('mac')
  set guifont=Menlo:h12
  set transparency=15
elseif has('unix')
  set guifont=Inconsolata\ 12
endif

set background=dark
colorscheme solarized

if has("autocmd")
  autocmd InsertLeave * set nocursorline
  autocmd InsertEnter * set cursorline


"Highlight Cursor
  highlight CursorLine ctermbg=8 cterm=NONE
endif
