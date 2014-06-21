
export DOTFILES="$(cd $(dirname $0) && pwd)"

<$DOTFILES/files_to_install egrep -v '^#|^[[:space:]]*$' |
while read file; do
    ! grep -q "^$file\$" $DOTFILES/installed_files &&
        ln -s $DOTFILES/$file $HOME/$file &&
        echo "$file" >> $DOTFILES/installed_files
done
