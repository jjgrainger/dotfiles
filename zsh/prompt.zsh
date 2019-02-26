# Custom prompt theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local git=$(git_prompt_info)
if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
else
    git=0
fi

function directory_name() {
  echo "%c"
}

PROMPT='[$(directory_name)] $(git_prompt_info) $ '
