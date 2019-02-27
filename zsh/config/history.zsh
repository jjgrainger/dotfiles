#!/bin/zsh
#
# History:
#   Configurations for zsh history
#   see http://zsh.sourceforge.net/Guide/zshguide02.html#l17

# The number of lines the shell will keep within one session
HISTSIZE=100000

# Should be no more than $HITSIZE
SAVEHIST=$HISTSIZE

# The name of the file you want to use, most commom ~/.history
HISTFILE=$HOME/.zsh_history
