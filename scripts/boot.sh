#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# Remove last login text on shell startup
touch $HOME/.hushlogin

if [[ $(uname) == "Darwin" ]]; then
    # Install Homebrew if not already installed (macOS version)
    command -v brew > /dev/null || printf '\n' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install oh-my-zsh if not already installed
    command -v omz > /dev/null || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ $(uname) == "Linux" && -f /etc/debian_version ]]; then
    # Upgrade packages
    sudo apt update && sudo apt upgrade -y

    # Install zsh and set it as default shell
    sudo apt install zsh -y
    chsh -s $(which zsh)

    # Install Homebrew if not already installed (linux version)
    command -v brew > /dev/null || printf '\n' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install oh-my-zsh if not already installed
    command -v omz > /dev/null || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Make Homebrew working on newest .zshrc generated by OMZ
    echo >> /home/steven/.zshrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/steven/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    exec zsh
fi
