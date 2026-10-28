#    ______      ______       ___   ___
#   /_____/\    /_____/\     /__/\ /__/\
#   \:::__\/    \::::_\/_    \::\ \\  \ \
#      /: /      \:\/___/\    \::\/_\ .\ \
#     /::/___     \_::._\:\    \:: ___::\ \
#    /_:/____/\     /____\:\    \: \ \\::\ \
#    \_______\/     \_____\/     \__\/ \::\/
#
#   Zsh is a shell designed for interactive use,
#   although it is also a powerful scripting language.
#
#   https://www.zsh.org/

# Load config files in order
for file in exports plugins completion history aliases functions prompt; do
    source "$ZDOTDIR/config/$file.zsh"
done
