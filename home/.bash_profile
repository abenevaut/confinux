## PATH

export PATH=$PATH:~/confinux/bin
export PATH="$PATH:$HOME/.composer/vendor/bin"

## PROMPT

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

## BASH completion

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


## NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r ~/.nvm/bash_completion ]] && \. ~/.nvm/bash_completion

## PHPBREW

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
