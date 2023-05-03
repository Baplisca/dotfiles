# dotfiles

my custom dotfiles

## Setup

```bash
git clone git@github.com:Baplisca/dotfiles.git
cd ~/dotfiles

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat ~/.git-prompt.sh
chmod +x setup.sh
./setup.sh

[add your github name and personal email]
vi ~/dotfiles/.gitconfig_private

[private use]
ln -sf ~/dotfiles/.gitconfig_private ~/.gitconfig
cat ~/.gitconfig

[company use]
ln -sf ~/dotfiles/.gitconfig_company ~/.gitconfig
cat ~/.gitconfig
[add name and company email]
vi ~/dotfiles/.gitconfig_company
```
