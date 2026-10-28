#!/bin/bash
#
# macOS:
#   Set system preferences. Re-run after major macOS updates, which can reset some of these.
#   Some changes (scroll direction) need a log out to take effect.

# Show the ~/Library folder.
chflags nohidden ~/Library

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Disable the startup sound (requires sudo)
sudo nvram StartupMute=%01

# Restart the Dock to apply changes
killall Dock
