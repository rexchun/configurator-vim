setlocal autoindent
setlocal expandtab
setlocal fileformat=unix
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4
setlocal encoding=utf-8
" Set visible right margin.
if v:version > 703
  execute "set colorcolumn=" . join(range(81,335), ',')
endif
