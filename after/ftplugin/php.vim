setlocal autoindent
setlocal expandtab
setlocal fileformat=unix
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4
" Set visible right margin.
if v:version > 703
  execute "set colorcolumn=" . join(range(123,335), ',')
endif
