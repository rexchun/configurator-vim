"=== General =================================================================
" Don't act like Vi.
setlocal nocompatible

"=== Vundle ==================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/Vundle.vim')


"=== Plugins =================================================================
"Let Vundle manages Vundle.  This is required.
Plugin 'VundleVim/Vundle.vim'

"--- Status Lines ------------------------------------------------------------
Plugin 'itchyny/lightline.vim.git'
"Plugin 'powerline/powerline.git'
"Plugin 'vim-airline/vim-airline-themes.git'
"Plugin 'vim-airline/vim-airline.git'

"--- Git Plugins -------------------------------------------------------------
Plugin 'airblade/vim-gitgutter.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'Xuyuanp/nerdtree-git-plugin.git'

"--- Utilites ----------------------------------------------------------------
Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'jlanzarotta/bufexplorer.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'sjl/gundo.vim.git'
Plugin 'tmhedberg/SimpylFold.git'
"Plugin 'ervandew/supertab.git'

"--- IDE ---------------------------------------------------------------------
Plugin 'godlygeek/tabular.git'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'suan/vim-instant-markdown.git'
Plugin 'tpope/vim-surround.git'
"Plugin 'rkulla/pydiction.git'
"Plugin 'vim-scripts/bash-support.vim'

"--- Snippets ----------------------------------------------------------------
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"--- Syntax ------------------------------------------------------------------
Plugin 'keith/tmux.vim.git'
Plugin 'scrooloose/syntastic.git'
"Plugin 'fatih/vim-go.git'

"--- Other -------------------------------------------------------------------
Plugin 'tpope/vim-abolish.git'


call vundle#end()
filetype plugin indent on

"=== Source Configuration Files ==============================================
for f in split(glob('~/.vim/config-enabled/*.vim'), '\n')
  execute 'source' f
endfor

