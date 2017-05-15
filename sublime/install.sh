# !/bin/bash

# Set paths
src="$HOME/dotfiles/sublime/User"
dst="$HOME/Library/Application Support/Sublime Text 3/Packages"

# If the User folder exists, create a backup
if [ -e "$dst/User" ]
then
    # if it does create a backup
    mv "$dst/User" "${dst}/User.bkup"
fi

# Symlink User folder for Sublime Text
ln -s "$src" "$dst"
