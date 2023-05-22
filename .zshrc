export PATH=$HOME/.nodebrew/current/bin:$PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH=$PATH:~/bin
alias g='git'
alias n='npm'
alias today="date +%Y%m%d"
alias reload='source ~/.zshrc'
alias tmux_reload='tmux source ~/.tmux.conf'
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

BREWFILE="$HOME/.Brewfile"
function brew-bundle-dump() {
  # --forceオプションをつけて、ファイルが存在したときは上書きする
  command brew bundle dump --file "$BREWFILE" --force
}

# シェル関数brewは、実行ファイルbrewよりも優先される
brew() {
  # シェル関数brewではなく実行ファイルbrewを実行する
  command brew $@
  # パッケージの一覧をファイルに出力する
  brew-bundle-dump
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
