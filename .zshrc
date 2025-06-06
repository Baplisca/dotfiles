export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH=$PATH:~/bin
export PATH=/usr/local/bin:$PATH
export PATH="/usr/bin:$PATH"

# To avoid k9s bug (https://github.com/derailed/k9s/issues/2602#issuecomment-1984103935)
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

alias g='git'
alias k='kubectl'
alias n='npm'
alias today="date +%Y%m%d"
alias reload='exec zsh'
alias tmux_reload='tmux source ~/.tmux.conf'
alias hg='history | grep'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'

# kube-ps1.shと競合するため、git-promptはコメントアウト
# source ~/zshrc/.git-prompt.sh
# precmd () { __git_ps1 "[%n@%m %* %~" "]%(!.#.\$) " }

source ~/zshrc/kube-ps1.sh
# PROMPT='$(kube_ps1)'$PROMPT
PROMPT='$(kube_ps1)[%n@%m %* %~]%(!.#.\$) '
KUBE_PS1_SYMBOL_ENABLE=false


setopt no_beep

# history
HISTFILE=~/.zsh_history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

# 補完候補を詰めて表示
setopt list_packed

# ヒストリの重複削除
setopt hist_ignore_all_dups 

# 環境ごとで読み込むBrewfileを出し分けたい
BREWFILE="$HOME/.Brewfile"
function brew-bundle-dump() {
  # --forceオプションをつけて、ファイルが存在したときは上書きする
  command brew bundle dump --file "$BREWFILE" --force
}

# このシェル関数brewは、実行ファイルbrewよりも優先される
brew() {
  # シェル関数brewではなく実行ファイルbrewを実行する
  command brew $@
  # パッケージの一覧をファイルに出力する
  brew-bundle-dump
}

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
