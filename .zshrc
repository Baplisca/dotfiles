export PATH=$HOME/.nodebrew/current/bin:$PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
alias g='git'
alias n='npm'
alias today="date +%Y%m%d"
source ~/.git-prompt.sh
precmd () { __git_ps1 "[%n@%m %* %~" "]%(!.#.\$) " }
setopt no_beep