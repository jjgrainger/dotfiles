#!/bin/bash
#
# Zsh installation:
# 	Zsh is installed with Homebrew
# 	This script will create a symbolic link for zshrc.symlink -> .zshrc
#
# Additional setup notes:
# 	After installing Zsh with Homebrew it will need
# 	to be added to /etc/shells in order to be seen as a valid shell
#
# 	1) Add Homebrew installed Zsh as valid shell
# 	$ sudo echo $(which zsh) >> /etc/shells
#
# 	2) Set zsh as the deafult shell
# 	$ chsh -s /usr/local/bin/zsh

# Setup zsh symlinks, foreach file with a .symlink here
for src in $(find ~/dotfiles/zsh -name '*.symlink' -type f); do
	# Define the destination
	dst="$HOME/.$(basename "${src%.*}")"

	# Check the file exits so we don't overwrite it
	if [ -e $dst ]
	then
		# If the file already exists, create a backup
		mv "$dst" "${dst}.bkup"
	fi

	# Create symlink for .zshrc
	ln -s "$src" "$dst"
done;
