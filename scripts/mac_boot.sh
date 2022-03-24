#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# Install command line tools without Xcode
xcode-select --install

# Install Rosetta 2 - be able to run non-native Intel x86 applications on M1
softwareupdate --install-rosetta --agree-to-license

zsh mac_configure_core.sh
zsh mac_configure_dock.sh
zsh mac_configure_finder.sh
zsh mac_configure_keyboard.sh
