alias path="echo -e ${PATH//:/\\n}" # Print each PATH entry on a separate line

alias cp="cp -ir"
alias mv="mv -iv"
alias mkdir="mkdir -vp"

# Docker
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr="docker-compose run"

alias di="docker images"
alias dlc="docker ps -l -q" # Last container id
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpse="docker ps --filter="status=exited""
alias dr="docker run"

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s
dstop() { docker stop $(docker ps -a -q); }

# PHP
alias compo="composer"
alias sym="symfony"
alias symc="symfony console"

# Specific windows os
# alias bat="batcat"
# alias code="/mnt/c/Users/Steven/AppData/Local/Programs/'Microsoft VS Code'/bin/code"
# alias wip="ifconfig eth0 | grep 'inet' | cut -d: -f2"
