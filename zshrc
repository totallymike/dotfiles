#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export TERM=xterm-256color

# Customize to your needs...

unalias rm
alias rm='nocorrect rm'
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH=/Users/mwestbom/.bin:$PATH
alias figdb='fig -p designbook'

alias bfg='java -jar $HOME/lib/bfg.jar'

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

function trash() {
  mv $@ $HOME/.Trash
}
