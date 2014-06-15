#!/bin/sh

target_path="$HOME/.vim/bundle/neobundle.vim"

if [ ! -d "$target_path/.git" ]; then
    mkdir -p "$target_path"
    git clone https://github.com/Shougo/neobundle.vim.git "$target_path"
fi

