set guioptions-=T
if has('mac')
  set guifont=Menlo:h12
  set transparency=15
endif

color base16-default

if has('unix')
  set guifont=Inconsolata\ 12
elseif has('win32')
  set guifont=Source_Code_Pro:h14:cANSI
endif

if has("autocmd")
  autocmd InsertLeave * set nocursorline
  autocmd InsertEnter * set cursorline

"Highlight Cursor
  highlight CursorLine ctermbg=8 cterm=NONE
endif
