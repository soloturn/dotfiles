#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='\u@\h \w\n\$ '

HISTCONTROL=erasedups:ignorespace
HISTSIZE=10000 
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

umask 077

