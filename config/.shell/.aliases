alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

alias ls="exa --group-directories-first --icons"
alias ll="exa -la --group-directories-first --icons --no-filesize"
alias lt="ll --tree --level=2"

# Misc
alias go="take" # oh-my-zsh specific
alias hostfile="nano /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias path="echo -e ${PATH//:/\\n} | sort --unique" # Print each PATH entry on a separate line
alias publickey="cat ~/.ssh/id_rsa.pub"
alias q="cd ~ && clear"
alias reload="source ~/.zshrc"
alias rmrf="rm -rf"
alias ws="cd ~/workspace"
alias zshconfig="nano ~/.zshrc"

alias n="nano"

# Docker

# Remove all images, containers, networks, volumes and build cache
alias doclear="docker stop $(docker ps -a -q) && docker system prune -a --volumes"

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

alias dcls="docker container ls"
alias di="docker images"
alias dlc="docker ps -l -q" # Last container id
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpse="docker ps --filter="status=exited""
alias dr="docker run"

alias dn="docker network"
alias dnc="docker network create"
alias dni="docker network inspect"
alias dnls="docker network ls"
alias dnp="docker network prune"
alias dnrm="docker network rm"

alias dv="docker volume"
alias dvc="docker volume create"
alias dvi="docker volume inspect"
alias dvls="docker volume ls"
alias dvp="docker volume prune"
alias dvrm="docker volume rm"

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dstop() { docker stop $(docker ps -a -q); }

# PHP
alias compo="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer"
alias compog="COMPOSER_MEMORY_LIMIT=-1 XDEBUG_MODE=off composer global"
alias sym="symfony"
alias symc="symfony console"

# Specific windows os
# alias code="/mnt/c/Users/Steven/AppData/Local/Programs/'Microsoft VS Code'/bin/code"
# alias ipw="hostname -I"
