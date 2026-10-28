#!/bin/zsh
#
# Functions:
#   Custom functions

# Make and change into a new directory
mk() {
    mkdir -p "$1" && cd "$1"
}
