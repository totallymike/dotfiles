set guioptions-=T
set guifont=Inconsolata\ 12
set background=dark
colorscheme solarized

if has("autocmd")
  autocmd InsertLeave * set nocursorline
  autocmd InsertEnter * set cursorline


"Highlight Cursor
  highlight CursorLine ctermbg=8 cterm=NONE
endif
