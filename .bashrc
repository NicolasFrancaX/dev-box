## Add git branch on the prompt line

function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1\]/'
}

# Customize command line

PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\e[1;31m\]\$(parse_git_branch_and_add_brackets)\[\033[01;34m\]$\[\033[0m\] "

export ACK_PAGER="/usr/bin/less -R"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
