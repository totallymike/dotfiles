# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand suffix
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long-list select=3
zstyle ':completion:*' original false
zstyle ':completion:*' prompt '%e number of errors'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' substitute 1
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
zstyle :compinstall filename '/home/mwestbom/.zshrc'

if [[ -x "`whence -p dircolors`" ]]; then
  eval `dircolors`
  alias ls='ls -F --color=auto'
  alias grep='grep --color=auto'
else
  alias ls='ls -F'
fi


autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt auto_pushd pushd_silent pushd_to_home pushd_ignore_dups
setopt appendhistory autocd
unsetopt beep notify
# End of lines configured by zsh-newuser-install

# Define CVS variables.
export EDITOR=/usr/bin/vim

typeset -U path
path=($path)
#if [[ -z ${path[(r)/home/mwestbom/bin]} ]] ; then
#  path=(/home/mwestbom/bin $path)
#fi

PS1="%n@%m:%~> "

if [[ -e $HOME/.zsh_local ]] ; then
  . $HOME/.zsh_local
fi
