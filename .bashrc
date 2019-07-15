#
# ~/.bashrc
#

eval "$(fasd --init auto)"
# If not running interactively, don't do anything
 [[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Control ls output
alias ls='ls --color=auto'
alias ll='ls -la'
alias l='ls'
alias l.='ls -d .* --color=auto'

# Control cd behavior
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'

# Confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias e='nvim'
alias rmd='rm -rf'
alias mkd='mkdir -pv'
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'

alias ping='ping -c 5'
alias pingg='ping -c 5 google.com'

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias week='date +%V'

alias python='/usr/bin/python3.6'

export http_proxy=http://inban1b-proxy.apac.nsn-net.net:8080
export ftp_proxy=http://inban1b-proxy.apac.nsn-net.net:8080
export https_proxy=https://inban1b-proxy.apac.nsn-net.net:8080
