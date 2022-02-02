export EDITOR=nano
export BAT_THEME="Nord"

# Add .bin directory to path
export PATH="$HOME/.bin:$PATH"

# Configure volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Add global composer and yarn packages to path
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$(yarn global bin):$PATH"

# Add local vendor bin packages to path (PHP projects)
export PATH="./vendor/bin:$PATH"
