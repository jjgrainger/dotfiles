# !/bin/bash

# Setup local configuration
if ! [ -f $HOME/dotfiles/git/gitconfig.local.symlink ]
    then
    echo 'Setup local git configuration'

    echo 'What is your git name?'
    read -e git_name
    echo 'What is your git email?'
    read -e git_email

    sed -e "s/GITNAME/$git_name/g" -e "s/GITEMAIL/$git_email/g" $HOME/dotfiles/git/gitconfig.local.example > $HOME/dotfiles/git/gitconfig.local.symlink

    echo 'Local git configuration set'
fi


# Symlink dotfiles
for src in $(find $HOME/dotfiles/git -name '*.symlink' -type f); do

    # the filename
    dst="$HOME/.$(basename "${src%.*}")"

    # check the file exits already
    if [ -e $dst ]
    then
        # if it does create a backup
        mv "$dst" "${dst}.bkup"
    fi

    ln -s "$src" "$dst"

done;

# Setup SSH keys
if ! [ -f $HOME/.ssh/id_rsa.pub ]
    then

    echo 'Email for ssh key'
    read -e ssh_email

    ssh-keygen -t rsa -b 4096 -C "$ssh_email"

    echo 'Key copied to keyboard'
    pbcopy < ~/.ssh/id_rsa.pub

    open 'https://github.com/settings/keys'
fi