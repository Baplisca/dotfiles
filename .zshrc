export PATH=$HOME/.nodebrew/current/bin:$PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
alias g='git'
alias n='npm'
alias today="date +%Y%m%d"
alias reload='source ~/.zshrc'
# historyに日付表示
alias h='fc -lt '%F %T' 1'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'

source ~/.git-prompt.sh
precmd () { __git_ps1 "[%n@%m %* %~" "]%(!.#.\$) " }
setopt no_beep

HISTFILE=~/.zsh_history
HISTSIZE=10000      
SAVEHIST=10000
# 補完候補を詰めて表示
setopt list_packed

# ヒストリの重複削除
setopt hist_ignore_all_dups 