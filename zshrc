export GPG_TTY=$(tty)
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/korolev/.oh-my-zsh

export UPDATE_ZSH_DAYS=1
ZSH_THEME="philips"

# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

plugins=(cargo colorize docker git jump rust z)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

alias psc='ps xawf -eo pid,user,cgroup,args'
function short() {
    site=$(echo $1 | sed 's/^https\?:\/\///g')
    full='https://'
    full+=$site
    echo $(curl -s -F "shorten=${full}" https://0x0.st)
}		# thanks @tiagotriques
alias gcams='git commit -S -a -m'
alias copy='xclip -sel clip'
function weather(){
    curl v2.wttr.in/$(echo $@ | sed 's/ /\_/g')
}
# overriding some aliases 
alias l='ls -lh'
alias ll='ls -lah'
