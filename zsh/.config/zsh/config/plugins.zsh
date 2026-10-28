#!/bin/zsh
#
# Plugins:
#   Antidote is used to manage zsh plugins
#   https://github.com/mattmc3/antidote
#
#   List of plugins can be found in
#   $ZDOTDIR/.zsh_plugins.txt

# Initialize antidote
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh

# Setup plugins listed in .zsh_plugins.txt
antidote load
