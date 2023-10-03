#!/bin/bash
set -euo
echo "Build a development environment"

DOTFILES_REPO=~/dotfiles
# 設定ファイルごとにシンボリックリンクを作成する
cd ${DOTFILES_REPO}

# Gitリポジトリ内に存在するファイルの一覧で.から始まるファイルを抽出
git ls-files | grep -e '^\.' | while read DOTFILE; do
  # _があるファイルをスキップする(.gitconfig_company, .gitconfig_private, .gitignore_global)
  if [[ "$DOTFILE" =~ "_" ]]; then
    echo "skip the symbolic link creation for: $DOTFILE"
  else
    echo "create a symbolic link: $DOTFILE"
    # -s シンボリックリンクの作成を表す
    # -f 作成先にファイルがあるとき、それを削除してから実行することを表す
    ln -sf ${DOTFILES_REPO}/${DOTFILE} ~/${DOTFILE}
  fi
done

BREWFILE=~/.Brewfile
if [ -e "${BREWFILE}" ]; then
  echo "Install Homebrew packages all at once"
  brew bundle --file "$BREWFILE"
fi

echo "Development environment setup is complete!"