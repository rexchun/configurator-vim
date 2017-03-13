"=== Basic Configuration =====================================================
syntax on

"--- UI ----------------------------------------------------------------------
set ruler
set showcmd
set number

" Highlight current line and column.
set cursorline
set cursorcolumn

" Enable code folding.
set foldmethod=indent
set foldlevel=99

" Tell vim where to place splits.
set splitbelow
set splitright

"--- Formatting --------------------------------------------------------------
" Tabs
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" Line Breaks
set linebreak

"--- Searching ---------------------------------------------------------------
set incsearch
set hlsearch

"--- Fixes -------------------------------------------------------------------
" Fix backspace behavior.
set backspace=indent,eol,start

"--- Buffers -----------------------------------------------------------------
" Don't close buffers which are not visible.
set hidden

"--- Help Settings -----------------------------------------------------------
" Open :help in tab instead of split.
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'

"--- White Space -------------------------------------------------------------
" Show trailing white space.
match ErrorMsg '\s\+$'

" Remove trailing white space.
nnoremap <silent> <leader>rtw :%s/\s\+$//e<cr>

"--- Settings requiring version 703 or greater -------------------------------
if v:version > 703
  " Display line numbers relative to the cursor position.
  set relativenumber

  " Toggle relative numbers.
  nnoremap <leader>n :set relativenumber!<cr>

  " Show right margin at 120 columns.
  execute "set colorcolumn=" . join(range(121,335), ',')
endif

"=== Key Mappings ============================================================
" Navigate panes with <CTRL> + k,j,h, or l.
nnoremap <silent> <C-k> :wincmd k<cr>
nnoremap <silent> <C-j> :wincmd j<cr>
nnoremap <silent> <C-h> :wincmd h<cr>
nnoremap <silent> <C-l> :wincmd l<cr>

" Toggle Spell Check with \s.
nnoremap <leader>s :set spell!<cr>

" Toggle code folding with <SPACEBAR>.
nnoremap <space> za

" Move line up or down using Alt + j or k respectively.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"=== GUI Settings ============================================================
if has('gui_running')
  set lines=34 columns=120
  set guifont=Luxi\ Mono\ 11

  " Expand the syntax menu automatically.
  let do_syntax_sel_menu = 1
  runtime! synmenu.vim
endif
