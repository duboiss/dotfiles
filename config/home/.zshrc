# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 10

ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"
ZSH_THEME="minimalist"

COMPLETION_WAITING_DOTS="true"

plugins=(
	zsh-autosuggestions
	zsh-interactive-cd
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='micro'
fi

# Custom aliases & functions
export PATH="$HOME/.bin:$PATH"
[ -f $HOME/aliases.zsh ] && source "$HOME/aliases.zsh"
[ -f $HOME/functions.zsh ] && source "$HOME/functions.zsh"

# Packages configuration
export HOMEBREW_NO_ANALYTICS=1
export BAT_THEME="Nord"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(mcfly init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(pyenv init -)"

# Add global composer and yarn packages to path
#export PATH="$(composer global config bin-dir --absolute --quiet):$PATH"
#export PATH="$(yarn global bin):$PATH"

# Terraform shared plugin cache
export PATH="$HOME/bin:$PATH"
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

# Replace OS sed by sed GNU implementation
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
