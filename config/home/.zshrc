#### FIG ENV VARIABLES ####
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# Path to your oh-my-zsh installation.
export ZSH="/Users/sdu/.oh-my-zsh"

ZSH_THEME="minimalist"
COMPLETION_WAITING_DOTS="true"

plugins=(
	colored-man-pages
	web-search
	yarn
	zsh-autosuggestions
	zsh-interactive-cd
	zsh-syntax-highlighting
)

ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

source $ZSH/oh-my-zsh.sh

DEFAULT_USER=sdu
ZSH_DISABLE_COMPFIX=true

[ -f $HOME/.shell/.setup ] && source "$HOME/.shell/.setup"

eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"

#### FIG ENV VARIABLES ####
[[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
