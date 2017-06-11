#!/bin/sh

while read -r package; do
    npm i -g $package;
done < "$HOME/dotfiles/node/global-packages"
