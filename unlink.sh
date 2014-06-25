#!/bin/sh

export DOTFILES="$(cd $(dirname $0) && pwd)"

cat $DOTFILES/installed_files |
while read file; do
    target_filename="$HOME/$(basename $file)"
    if [ -L "$target_filename" ]; then
        echo "    Unlinked $target_filename"
        rm "$target_filename"
    fi
done

printf "" > installed_files
echo "    Cleaned installed_files"

echo "    Done"

