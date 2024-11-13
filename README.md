# dotfiles

- my custom dotfiles
- Using this will increase work efficiency 🔥

## Pre Setup
```bash
# download brew from `https://brew.sh/ja/`
```

## Setup

```bash
git clone git@github.com:Baplisca/dotfiles.git
cd ~/dotfiles

# Download git-prompt.sh
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat ~/.git-prompt.sh

# This completes the setup (.Brewfile, .bashrc, .tmux.conf, .vimrc, .zshrc)
chmod +x setup.sh
./setup.sh

# check each symlink
ls -la ~/.Brewfile
ls -la ~/.bashrc
ls -la ~/.tmux.conf
ls -la ~/.vimrc
ls -la ~/.zshrc

# .gitconfig setting
[private use]
ln -sf ~/dotfiles/.gitconfig_private ~/.gitconfig
ls -la ~/.gitconfig
# add your github name and personal email
vi ~/dotfiles/.gitconfig_private
cat ~/.gitconfig

[company use]
ln -sf ~/dotfiles/.gitconfig_company ~/.gitconfig
ls -la ~/.gitconfig
# add official name and company email
vi ~/dotfiles/.gitconfig_company
cat ~/.gitconfig
```
