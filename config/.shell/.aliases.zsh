###
### Docker
###
alias dc="docker compose"
alias dcb="docker compose build"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dce="docker compose exec"
alias dcl="docker compose logs"
alias dcp="docker compose pull"
alias dcps="docker compose ps"
alias dcr="docker compose run"
alias dcre="docker compose restart"

alias dr="docker run"

###
### Files & directories
###
alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

alias ll="eza -la --group-directories-first --icons --no-filesize"
alias ls="eza --group-directories-first --icons"
alias lt="ll --tree --level=2"

alias gr='cd $(git rev-parse --show-toplevel)' # Automatically cd to the git root directory

###
### Misc
###
alias go="take" # oh-my-zsh specific
alias hostfile="nano /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias n="nano"
alias path="echo -e ${PATH//:/\\n} | sort --unique" # Print each PATH entry on a separate line
alias publickey="cat ~/.ssh/id_rsa.pub"
alias q="cd ~ && clear"
alias reload="source ~/.zshrc"
alias rmrf="rm -rf"
alias ws="cd ~/workspace"
alias zshconfig="nano ~/.zshrc"

###
### PHP
###
alias compo="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer"
alias compog="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer global"
alias sym="symfony"
alias symc="symfony console"

###
### WSL
###
# alias ipw="hostname -I"
