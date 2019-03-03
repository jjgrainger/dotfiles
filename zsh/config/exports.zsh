# Add Homebrew sbin
export PATH="/usr/local/sbin:$PATH"

# Add global Composer packages
export PATH=$HOME/.composer/vendor/bin:$PATH

# add rbenv to path
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
