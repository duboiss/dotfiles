#!/usr/bin/env zsh

# System Preferences > Dock > Size
echo "Dock: update tilesize"
defaults write com.apple.dock tilesize -int 40

# System Preferences > Dock > Magnification
echo "Dock: disable magnification"
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Minimize windows using "Scale" effect
echo "Dock: minimize windows using 'scale' effect"
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
echo "Dock: minimize windows into application icon"
defaults write com.apple.dock minimize-to-application -bool false

# System Preferences > Dock > Automatically hide and show the Dock
echo "Dock: automatically hide and show the dock"
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
echo "Dock: automatically hide and show the dock (duration)"
defaults write com.apple.dock autohide-time-modifier -float 1

# System Preferences > Dock > Automatically hide and show the Dock (delay)
echo "Dock: automatically hide and show the dock (delay)"
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
echo "Dock: show indicator lights for open applications"
defaults write com.apple.dock show-process-indicators -bool true

# System Preferences > Dock > Show recent applications in Dock
echo "Dock: hide 'recent applications'"
defaults write com.apple.dock show-recents -bool false

killall Dock
