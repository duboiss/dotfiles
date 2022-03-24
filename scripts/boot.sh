#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# Remove last login text on shell startup
touch .hushlogin

# Install Homebrew if not already installed
command -v brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Same for oh-my-zsh
command -v omz > /dev/null || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
