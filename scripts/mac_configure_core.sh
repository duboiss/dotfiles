#!/usr/bin/env zsh

echo "Dialog: disable the “Are you sure you want to open this application?”"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Files: avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Printer: automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
