# dotfiles

- my custom dotfiles
- Using this will increase work efficiency 🔥

## Setup

```bash
git clone git@github.com:Baplisca/dotfiles.git
cd ~/dotfiles

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat ~/.git-prompt.sh
chmod +x setup.sh
# This completes the setup except for gitconfig
./setup.sh

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
