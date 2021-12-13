# ZSH THINGS
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/211377/.oh-my-zsh"
ZSH_THEME="spaceship"
export UPDATE_ZSH_DAYS=13
export HIST_STAMPS="mm/dd/yyyy"
source $ZSH/oh-my-zsh.sh

# ZSH THEME THINGS
export SPACESHIP_PROMPT_ORDER=(
  time
  dir
  git
  node
  golang
  venv
  pyenv
  line_sep
  char
)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_TIME_COLOR=blue
export SPACESHIP_TIME_12HR=true
export SPACESHIP_CHAR_SYMBOL='$ '
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_KUBECONTEXT_SHOW=false
export SPACESHIP_KUBECONTEXT_NAMESPACE_SHOW=false

# ALIASES
alias ls='ls -GFh'
alias ll='ls -alh'

function edit() {
  cd $1 && code .;
}

# PYTHON THINGS


# JAVASCRIPT THINGS

# VAULT THINGS

# GOOGLE CLOUD THINGS

# AWS THINGS

# MYSQL THINGS

# GOLANG THINGS

# GITHUB THINGS

# JAVA THINGS


