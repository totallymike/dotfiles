set guioptions-=T

color base16-default

let g:vroom_use_vimux = 0
let g:vroom_use_colors = 0

if has('unix')
  set guifont=DejaVu\ Sans\ Mono\ 16
elseif has('win32')
  set guifont=Source_Code_Pro:h14:cANSI
endif

if has('mac')
  set guifont=Menlo:h18
  set transparency=8
endif

if has("autocmd")
  autocmd InsertLeave * set nocursorline
  autocmd InsertEnter * set cursorline

"Highlight Cursor
  highlight CursorLine ctermbg=8 cterm=NONE
endif
