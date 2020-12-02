alias path="print -l $path" # Print each PATH entry on a separate line

alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

alias q="cd ~ && clear"

# Docker
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcps="docker-compose ps"
alias dcr="docker-compose run"

alias di="docker images"
alias dlc="docker ps -l -q" # Last container id
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpse="docker ps --filter="status=exited""
alias dr="docker run"

alias dvc="docker volume create"
alias dvi="docker volume inspect"
alias dvls="docker volume ls"
alias dvp="docker volume prune"
alias dvrm="docker volume rm"

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dstop() { docker stop $(docker ps -a -q); }

# PHP
alias compo="composer"
alias sym="symfony"
alias symc="symfony console"

# Specific windows os
# alias bat="batcat"
# alias code="/mnt/c/Users/Steven/AppData/Local/Programs/'Microsoft VS Code'/bin/code"
# alias wip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
