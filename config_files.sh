#!/bin/bash

# The key is the target configration file in the feature directory.
# The value is the path of the symlink for the configuration.
configs=(
  ["${SCRIPT_DIR}"]="$HOME/.vim"
  ["${SCRIPT_DIR}/vimrc"]="$HOME/.vimrc"
)

export configs
