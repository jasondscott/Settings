source ~/git-completion.bash


# MacPorts Installer addition on 2012-01-25_at_22:37:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/Developer/SDKs/Research\ In\ Motion/BlackBerry\ WebWorks\ SDK\ for\ TabletOS\ 2.2.0.5/bbwp:$PATH
export PATH=/Users/jasonscott/Documents/Dev/bootstrap/node_modules/less/bin:$PATH
export PATH=/Developer/SDKs/Research\ In\ Motion/BlackBerry\ WebWorks\ SDK\ for\ TabletOS\ 2.2.0.5/bbwp/blackberry-tablet-sdk/bin:$PATH
export PATH=/Users/jasonscott/Documents/Dev/bin:$PATH
export BUGS_BOUNTY_DATABASE="DEV_DATA"

#aliases
alias chrome="open /Applications/Google\ Chrome.app --args --disable-web-security" 
alias dropbox="cd ~/Dropbox"
alias downloads="cd ~/Downloads"
alias desktop="cd ~/Desktop"
alias public="cd ~/Dropbox/Public"
alias docs="cd ~/Documents"
alias dev="cd ~/Documents/Dev"
alias getup="git fetch upstream && git checkout master && git merge upstream/master"
alias jqm="cd ~/Documents/Dev/JQM"
alias myjqm="cd ~/Documents/Dev/myJQM"
alias bb="cd ~/Documents/Dev/BugsBounty"
alias theme="cd ~/Documents/Dev/JQM-BB-Theme"
alias testing="cd ~/Dropbox/Public/Testing"

alias reload="source ~/.profile"

alias mysql="/Applications/MAMP/Library/bin/mysql"
alias mysqladmin="/Applications/MAMP/Library/bin/mysqladmin"

alias glog='git log --oneline --decorate --graph'
alias up='cd ..'
alias 2up='cd .. && cd ..'
alias 3up='cd .. && cd .. && cd ..'

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$NO_COLOUR\h$NO_COLOUR:\W$YELLOW \$(parse_git_branch)$NO_COLOUR\$ "
