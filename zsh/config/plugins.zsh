#!/bin/zsh
#
# Plugins:
#   Antibody is used to manage zsh plugins
#   https://github.com/getantibody/antibody
#
#   List of plugins can be found in
#   ~/dotfiles/zsh/zsh_plugins

# Initialize antibody
source <(antibody init)

# Setup plugins listed in zsh_plugins file
antibody bundle < ~/dotfiles/zsh/zsh_plugins
