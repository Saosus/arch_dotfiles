#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'

alias pwf='poweroff'
alias rbt='reboot'

alias update='sudo pacman -Syu'
alias qet='pacman -Qet'

alias open='xdg-open'

PS1='[\u@\h \W]\$ '

#------There is CUSTOM part---------

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

export PATH="${PATH}:${HOME}/python-env/bin"

export PATH=$PATH:/home/cppyli/.spicetify

export PATH="/home/cppyli/.local/bin:$PATH"
