#!/usr/bin/env bash

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )
cd "$SCRIPT_DIR"

conf_linker(){
  if [ -h "$link_path" ]; then
    rm -f "$link_path"
  fi
  if [ -e "$link_path" ]; then
    mv "$link_path" "$link_path.$(date +%Y%m%d)"
  fi
  ln -s "$SCRIPT_DIR/$target_path" "$link_path"
}

link_path="$HOME/.vimrc"
target_path="vimrc"
conf_linker
file "$HOME/.vimrc"

link_path="$HOME/.vim"
target_path=""
conf_linker
file "$HOME/.vim"

plugins_dir=bundle

if [ ! -d "${plugins_dir}" ]; then
  mkdir "${plugins_dir}"
fi

if [ ! -d "${plugins_dir}/Vundle.vim" ]; then
  cd "${plugins_dir}" \
    && git clone https://github.com/VundleVim/Vundle.vim.git

  cd "${SCRIPT_DIR}"
fi

vim +PluginInstall +qall
