for src in $(find ~/dotfiles/zsh -name '*.symlink' -type f); do

	# the filename
	dst="$HOME/.$(basename "${src%.*}")"

	echo $dst

	# check the file exits already
	if [ -e $dst ]
	then
		# if it does create a backup
		mv "$dst" "${dst}.bkup"
	fi

	ln -s "$src" "$dst"

done;