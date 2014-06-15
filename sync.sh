#!/bin/sh

export DOTFILES="$(cd $(dirname $0) && pwd)"

<$DOTFILES/files_to_install grep -v '^#' |
while read file; do
    echo "$file" >> $DOTFILES/installed_files
    ln -s $DOTFILES/$file $HOME/$file
done
