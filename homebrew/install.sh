#!/bin/bash
#
# Homebrew:
#   Install all the things with Homebrew, Casks and a Brewfile
#   https://brew.sh/

# If Homebrew is not installed
if ! which brew > /dev/null; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi;

# Update brew
brew update

# Install everything in Brewfile
brew bundle --file="~/dotfiles/homebrew/Brewfile"
