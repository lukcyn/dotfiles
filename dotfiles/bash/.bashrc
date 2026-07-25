#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

PS1='[\u@\h \W]\$ '

# fzf search
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/rofi/scripts:$PATH"
