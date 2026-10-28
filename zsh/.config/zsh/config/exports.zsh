#!/bin/zsh
#
# Exports:
#   PATH additions and version managers
#   Homebrew is added to PATH in .zprofile

# Global Composer packages
export PATH="$HOME/.composer/vendor/bin:$PATH"

# rbenv, Ruby version manager
eval "$(rbenv init - zsh)"

# nvm, Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && source "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && source "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"
