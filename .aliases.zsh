alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias path="print -l $path" # Print each PATH entry on a separate line

alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

alias go="take" # oh-my-zsh specific
alias rmrf="rm -rf"
alias q="cd ~ && clear"
alias ws="cd ~/workspace"

alias n="nano"

calc() { awk "BEGIN{print $*}"; }
clone() { git clone $1 && cd $(basename ${1%.*}) }

# Docker
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dce="docker-compose exec"
alias dcp="docker-compose pull"
alias dcps="docker-compose ps"
alias dcr="docker-compose run"

alias di="docker images"
alias dlc="docker ps -l -q" # Last container id
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpse="docker ps --filter="status=exited""
alias dr="docker run"

alias dv="docker volume"
alias dvc="docker volume create"
alias dvi="docker volume inspect"
alias dvls="docker volume ls"
alias dvp="docker volume prune"
alias dvrm="docker volume rm"

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dstop() { docker stop $(docker ps -a -q); }

# PHP
alias compo="composer"
alias compog="composer global"
alias sym="symfony"
alias symc="symfony console"

# Specific windows os
# alias bat="batcat"
# alias code="/mnt/c/Users/Steven/AppData/Local/Programs/'Microsoft VS Code'/bin/code"
# alias ipw="ifconfig eth0 | grep 'inet' | cut -d: -f2 | awk '{print \$2}'"
