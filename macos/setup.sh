# Show the ~/Library folder.
chflags nohidden ~/Library

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true