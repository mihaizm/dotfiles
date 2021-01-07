#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# infinite history
shopt -s histappend
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%d-%m-%Y %T  "

# source aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# source functions
[ -f ~/.bash_functions ] && . ~/.bash_functions

# primary prompt
#PS1='[\u@\h \W]\$ '

colored="yes"
NO_COLOR="\[\e[00;0m\]"
GRAY_COLOR="\[\e[01;30m\]"
RED_COLOR="\[\e[01;31m\]"
GREEN_COLOR="\[\e[01;32m\]"
YELLOW_COLOR="\[\e[01;33m\]"
BLUE_COLOR="\[\e[01;34m\]"
PURPLE_COLOR="\[\e[01;35m\]"
CYAN_COLOR="\[\e[01;36m\]"
WHITE_COLOR="\[\e[01;37m\]"

prompt_default="\u@\h \W"
prompt_colored="${CYAN_COLOR}\u@\h:\w${NO_COLOR}"

[ "$colored" = "yes" ] && PS1="[${prompt_colored}]\$ " || PS1="[${prompt_default}]\$ "

export PATH=$PATH:~/.local/bin
