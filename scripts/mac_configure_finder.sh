#!/usr/bin/env zsh

echo "Finder: set default location to Home"
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

echo "Finder: keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Finder: show all files"
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo "Finder: show status bar"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "Finder: use current directory as default search scope "
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Finder: allow Allow quitting Finder via ⌘ + Q" # doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

echo "Finder: display full POSIX path as window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Finder: disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

killall Finder
