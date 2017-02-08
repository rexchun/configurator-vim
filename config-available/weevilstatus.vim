" Taken from
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
set laststatus=2

" set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
function! FileSize()
  let bytes = getfsize(expand("%:p"))
  if bytes <= 0
    return ""
  endif
  if bytes < 1024
    return bytes
  else
     return (bytes / 1024) . "K"
   endif
 endfunction


set statusline=%{FileSize()}\ 

" tail of the filename
set statusline+=%t

" help file flag
set statusline+=%h

" modified flag
set statusline+=%m

" read only flag
set statusline+=%r

" left/right separator
set statusline+=%=

" file encoding
set statusline+=[%{strlen(&fenc)?&fenc:'none'},

" file format
set statusline+=%{&ff}]

" filetype
set statusline+=%y

" cursor column
set statusline+=%c,

" cursor line/total lines
set statusline+=%l/%L

" percent through file
set statusline+=\ %P
