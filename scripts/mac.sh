#!/usr/bin/env zsh

# Protect against running with shells other than zsh
if [ -z "$ZSH_VERSION" ]; then
  exec zsh "$0" "$@"
fi

echo "Enable full keyboard access for all controls"
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Dock: show indicator lights for open applications"
defaults write com.apple.dock show-process-indicators -bool true

echo "Dock: change size"
defaults write com.apple.dock tilesize -int 42

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

echo 'Finder: show all filename extensions'
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Finder: set default location to Home"
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

killall Dock
killall Finder
