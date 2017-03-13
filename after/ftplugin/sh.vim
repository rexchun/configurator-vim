setlocal autoindent
setlocal expandtab
setlocal fileformat=unix
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal tabstop=2
" Set visible right margin.
if v:version > 703
  execute "set colorcolumn=" . join(range(123,335), ',')
endif
