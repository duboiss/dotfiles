# Files & directories
alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

alias ls="eza --group-directories-first --icons"
alias ll="eza -la --group-directories-first --icons --no-filesize"
alias lt="ll --tree --level=2"

alias gr='cd $(git rev-parse --show-toplevel)' # Automatically cd to the git root directory

# Misc
alias aws_profile='export AWS_PROFILE=$(aws configure list-profiles | fzf --prompt "Choose active AWS profile:")'
alias go="take" # oh-my-zsh specific
alias hostfile="sudo micro /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias path='echo -e "${PATH//:/\\n}" | sort --unique' # Print each PATH entry on a separate line
alias publickey="cat ~/.ssh/id_ed25519.pub"
alias q="cd ~ && clear"
alias reload="source ~/.zshrc"
alias rmrf="rm -rf"
alias ws="cd ~/workspace"
alias zshconfig="micro ~/.zshrc"

alias n="nano"
alias m="micro"

# Docker

# Remove all images, containers, networks, volumes and build cache
doclear() {
  docker stop $(docker ps -a -q)
  docker system prune -a --volumes
}

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

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dstop() { docker stop $(docker ps -a -q); }

# PHP
alias compo="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer"
alias compog="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer global"
alias sym="symfony"
alias symc="symfony console"

# WSL
# alias ipw="hostname -I"
