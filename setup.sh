#!/bin/bash
set -e
echo "Build a development environment"

DOTFILES_REPO="$HOME/dotfiles"
# 設定ファイルごとにシンボリックリンクを作成する
cd "$DOTFILES_REPO"
git ls-files | grep -e '^\.' | while read DOTFILE; do
  if [[ "$DOTFILE" =~ "_" ]]; then
    echo "skip the symbolic link creation for: $DOTFILE"
  else
    echo "create a symbolic link: $DOTFILE"
    ln -sf "$DOTFILES_REPO/$DOTFILE" "$HOME/$DOTFILE"
    # -sオプションは、シンボリックリンクの作成を表す
    # -fオプションは、作成先にファイルがあるとき、それを削除してから実行することを表す
  fi
done

BREWFILE="$HOME/.Brewfile"
if [ -e "$BREWFILE" ]; then
  echo "Install Homebrew packages all at once"
  brew bundle  --file "$BREWFILE"
fi

echo "Development environment setup is complete!"