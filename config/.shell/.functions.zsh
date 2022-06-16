###
### Misc
###
# Simple computations
calc() { awk "BEGIN{print $*}"; }

# Git clone and cd into it
gcd() {
  REPO=$1
  CLONEPATH=$2

  if [ -z "$CLONEPATH" ]; then
      CLONEPATH=${$(basename "$REPO")/.git/}
  fi

  git clone "$REPO" $CLONEPATH
  cd $CLONEPATH || exit
}

# Create a folder and move into it in one command
mkcd() { mkdir -p "$@" && cd "$_"; }

# File search functions
f() { find . -iname "*$1*" ${@:2} }
r() { grep "$1" ${@:2} -R . }

# Homebrew cleaning
cleanmypc() {
  brew autoremove
  brew cleanup
}

# PHP
changephp() {
  if [[ -n "$1" ]]; then
    if ! brew link --overwrite --force shivammathur/php/php@"$1"; then
      brew install shivammathur/php/php@"$1"
      brew link --overwrite --force shivammathur/php/php@"$1"
    fi
  else
    if ! (brew unlink php && brew link php); then
      brew install shivammathur/php/php
    fi
  fi
}

# mnemonic [B]rew [U]pdate [P]ackage
bup() {
  local upd=$(brew outdated | fzf --height 40% --multi)

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; brew upgrade $prog; done;
  fi
}

###
### Docker
###
# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Select docker container(s) to remove
drm() { docker ps -a | sed 1d | fzf --height 40% --multi --query "$1" | awk '{ print $1 }' | xargs -r docker rm }

# Select docker image(s) to remove
drmi() { docker images | sed 1d | fzf --height 40% --multi --query "$1" | awk '{ print $3 }' | xargs -r docker rmi }

# Remove all containers named with the given prefix
drmprefix() { docker ps -aq --filter name="${1}*" | xargs docker stop | xargs docker rm }

# Remove all docker images, containers, networks, volumes and build cache
dclear() { docker stop $(docker ps -a -q) && docker system prune -a --volumes }

###
### Mac OS
###
# Man page in the preview app
manpdf() { man -t $@ | open -f -a Preview }
