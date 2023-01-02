# !/bin/bash

# Set paths.
src_path="$HOME/dotfiles/vscode/User"
dst_path="$HOME/Library/Application Support/Code/User"

# Array of items we want to sync.
sync=("settings.json" "keybindings.json" "snippets")

for item in "${sync[@]}"
do
    # Setup full paths.
    src="$src_path/$item"
    dst="$dst_path/$item"

    if [ -e "$dst" ]
    then
        # If the file exists, create a backup.
        echo "$item already exists, creating backup."
        mv "$dst" "${dst}.bkup"
    fi

    # Create symlinks.
    ln -s "$src" "$dst"
done

# Install extensions.
for extension in $(cat "extensions")
do
    code --install-extension "$extension"
done