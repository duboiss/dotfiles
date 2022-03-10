#!/usr/bin/env zsh

echo "Keyboard: enable full keyboard access for all controls" # (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Keyboard: disable automatic period substitution"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

echo "Keyboard: disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

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

# System Preferences > Keyboard > Shortcuts > Spotlight > Show spotlight search
echo "Keyboard: disable cmd+space shortcut for spotlight (in order to use Raycasts), takes effect after the logout"
/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.symbolichotkeys.plist -c "Set AppleSymbolicHotKeys:64:enabled false" ?
