#!/usr/bin/env zsh

# Protect against running with shells other than zsh
if [ -z "$ZSH_VERSION" ]; then
  exec zsh "$0" "$@"
fi

echo "Dialog: disable the “Are you sure you want to open this application?”"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Dock: show indicator lights for open applications"
defaults write com.apple.dock show-process-indicators -bool true

echo "Dock: hide 'recent applications'"
defaults write com.apple.dock show-recents -bool false

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

echo "Keyboard: enable full keyboard access for all controls"
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Keyboard: disabling smart quotes and dashes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo "Keyboard: blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1

echo "Keyboard: shorter delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

killall Dock
killall Finder
