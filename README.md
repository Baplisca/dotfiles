# dotfiles

- my custom dotfiles
- Using this will increase work efficiency 🔥

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

# .gitconfig setting
[private use]
ln -sf ~/dotfiles/.gitconfig_private ~/.gitconfig
# add your github name and personal email
vi ~/dotfiles/.gitconfig_private
cat ~/.gitconfig

[company use]
ln -sf ~/dotfiles/.gitconfig_company ~/.gitconfig
# add official name and company email
vi ~/dotfiles/.gitconfig_company
cat ~/.gitconfig
```
