#!/bin/zsh
#
# Completition:
#   Completiton settings that works with other plugins

# Enable autocompletion
autoload -U compinit && compinit

# Load complist module - provides menu list of completion results
zmodload -i zsh/complist

# Configuration
setopt correct_all      # autocorrect commands
setopt auto_list        # automatically list choices on ambiguous completion
setopt auto_menu        # automatically use menu completion
setopt always_to_end    # move cursor to end if word had one match

# select completions with arrow keys
zstyle ':completion:*' menu select

# group results by category
zstyle ':completion:*' group-name ''

# enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate
