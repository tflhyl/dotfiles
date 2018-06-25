CLICOLOR=1
export LSCOLORS=gxfxxxxxxxxxxxxxxxxxxx
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[0;32m\]\w\[\e[m\]\[\e[1;34m\]\$(parse_git_branch)\[\e[m\]\[\e[0;37m\]\$\[\e[m\]\[\e[0;37m\] "
export TERM=xterm-256color
export EDITOR=/usr/local/bin/vim

# other sources
source ~/.alias
export PATH=/usr/local/bin:$PATH
export PATH="~/.node/bin:$PATH"
export LC_ALL=en_US.UTF-8

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
