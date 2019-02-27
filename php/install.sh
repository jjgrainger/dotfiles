#!/bin/zsh

# Install global composer packages

echo "Installing global Composer packages..."

COMPOSER_SRC="$HOME/dotfiles/php/composer"
COMPOSER_DEST="$HOME/.composer"

# Check if the composer directory exists
if [ -e $COMPOSER_DEST ]
then
    # If the file already exists, create a backup
    echo "  > ~/.composer directory already exists, creating backup"
    mv "$COMPOSER_DEST" "$COMPOSER_DEST.bkup"
    echo "  > backup created at ~/.composer.bkup"
fi

# Create a symlink for ~/.composer directory
ln -s "$COMPOSER_SRC" "$COMPOSER_DEST"
echo "  > ~/.composer directory symlinked"

# Install composer packages
echo "  > Installing global packages..."

if test $(which composer)
    then
    composer global install
else
    echo "  > composer is not installed, check Homebrew..."
fi
