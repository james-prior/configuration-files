# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# HISTCONTROL=ignoreboth
# HISTCONTROL=ignoredups:ignorespace
unset HISTCONTROL
HISTFILESIZE=1000
HISTSIZE=1000
HISTTIMEFORMAT="%F %T "
export HISTCONTROL
export HISTFILESIZE
export HISTSIZE

# Appending $HOME/bin to PATH is redundant on some systems,
# but not all, so do it anyway.
PATH="${PATH}:${HOME}/bin"
set -o vi
alias ll='ls -l'
alias lll='ls -l --full-time'
export LINES
export COLUMNS
# EDITOR value is for git.
EDITOR=vim
export EDITOR
# PAGER is convenient for wide queries in psql.
PAGER='less -S'
export PAGER
alias c='calendar -A 7 -B 2'
alias c='calendar -A 7'
alias c='cal | grep -v "^ *$";calendar -A 7'
alias d='date --iso-8601=ns'
alias gd='git difftool -t meld'
alias gy='git difftool -t meld -y'
umask '0277'
