# !/bin/bash

# Will update and save all extensions in the ~/dotfiles/vscode/extentsions file
code --list-extensions > "$HOME"/dotfiles/vscode/extensions

echo "Extensions updated. Use git to update at origin."