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

# Misc
cleanmypc() {
  brew autoremove
  brew cleanup
}

# PHP
changephp() {
  if [[ -n "$1" ]]; then
    brew link --overwrite --force shivammathur/php/php@"$1"
  else
    brew unlink php && brew link php
  fi
}


### MacOS

# Man page in the preview app
manpdf() { man -t $@ | open -f -a Preview }
