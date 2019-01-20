#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls --color=auto'
PS1="\u@\h \w\$(parse_git_branch)\n\$ "

HISTCONTROL=erasedups:ignorespace
HISTSIZE=10000 
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

umask 077

