#!/usr/bin/env zsh

echo "Dialog: disable the “Are you sure you want to open this application?”"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Files: avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Keyboard: enable full keyboard access for all controls" # (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# System Preferences > Keyboard > Keyboard > Key repeat
echo "Keyboard: blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1

# System Preferences > Keyboard > Keyboard > Delay until repeat
echo "Keyboard: shorter delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# System Preferences > Keyboard > Text > Correct spelling automatically
echo "Keyboard: disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# System Preferences > Keyboard > Text > Capitalise words automatically
echo "Keyboard: disable automatic capitalizaiton"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# System Preferences > Keyboard > Text > Use smart quotes and dashes
echo "Keyboard: disable smart dashes and smart quotes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Keyboard: disable automatic period substitution"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

echo "Printer: automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
