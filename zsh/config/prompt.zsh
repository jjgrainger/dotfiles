#!/bin/zsh
#
# Prompt:
#   Use Pure for prompt, installed with antibody
#   https://github.com/sindresorhus/pure

# Initialize prompt system
autoload -U promptinit; promptinit

# Define options
PURE_PROMPT_SYMBOL="❯"

# Choose Pure
prompt pure
