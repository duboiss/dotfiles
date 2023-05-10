#### FIG ENV VARIABLES ####
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump-${(%):-%m}-${ZSH_VERSION}"
ZSH_THEME="minimalist"

plugins=(
	colored-man-pages
	web-search
	yarn
	zsh-autosuggestions
	zsh-interactive-cd
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

DEFAULT_USER=sdu
ZSH_DISABLE_COMPFIX=true

[ -f $HOME/.shell/.setup.zsh ] && source "$HOME/.shell/.setup.zsh"

eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"

#### FIG ENV VARIABLES ####
[[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
