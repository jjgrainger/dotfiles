# Add Homebrew sbin
export PATH="/usr/local/sbin:$PATH"


# PHP versions
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# Add global Composer packages
export PATH=$HOME/.composer/vendor/bin:$PATH

# add rbenv to path
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# nodenv
eval "$(nodenv init -)"

# Include global node modules
export NODE_PATH='/usr/local/lib/node_modules'

# Setup NVM, must be last.
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
