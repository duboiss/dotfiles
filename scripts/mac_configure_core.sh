#!/usr/bin/env zsh

echo "Dialog: disable the “Are you sure you want to open this application?”"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Files: avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Files: associate all source code files with VSCode by default"
# https://alexpeattie.com/blog/associate-source-code-files-with-editor-in-macos-using-duti/
curl -s "https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml" \
  | yq -r "to_entries | (map(.value.extensions) | flatten) - [null] | unique | .[]" \
  | xargs -L 1 -I "{}" duti -s com.microsoft.VSCode {} all || true

# System Preferences > Network > Wi-Fi > Advanced > DNS
# https://www.dnsperf.com/
echo "Network: use Cloudflare DNS servers for 'Wi-Fi' network service"
networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001

echo "Printer: automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Screenshots: store in /tmp"
defaults write com.apple.screencapture location /tmp

echo "Window: add the ability to move a window with ctrl + cmd + click"
defaults write -g NSWindowShouldDragOnGesture -bool true

echo "TextEdit: new file by default instead of opening one"
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# Mouse > Natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
