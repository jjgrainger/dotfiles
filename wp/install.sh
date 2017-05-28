#!/bin/bash
if test ! $(which wp)
    then
    # Download wp-cli.phar
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

    # Make executable
    chmod +x wp-cli.phar

    # Move to bin
    sudo mv wp-cli.phar /usr/local/bin/wp

    echo 'wp-cli installed as wp'
else
    echo 'wp-cli already installed'
fi
