#!/bin/sh

while read -r package; do
    composer global require $package;
done < "$HOME/dotfiles/composer/global-packages"
