#!/bin/zsh
#
# iTerm2 installation:
#   iTerm2 is a terminal emulator for MacOS
#   https://www.iterm2.com
#
#   iTerm2 is installed via Homebrew
#
#   The /settings folder holds your custom preferences
#
#   The /themes folder is used to clone themes to trial and test

# Install a theme:
#   Download a theme of your choosing and
#   then double click the *.itermcolors file to import
git clone git@github.com:MartinSeeler/iterm2-material-design.git ~/dotfiles/iterm/themes

# Set the custom preference folder to ~/dotfiles/item/settings
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "~/dotfiles/iterm/settings"

# Set "Load prefernce from a custom folder" to true
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
