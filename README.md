# dotfiles

my custom dotfiles

## Setup

```bash
git clone git@github.com:Baplisca/dotfiles.git

rm ~/.bashrc ~/.gitconfig
ln -s ~/dotfiles/.bashrc ~/.bashrc

rm ~/.gitconfig
[add your github name and personal email]
vi ~/dotfiles/.gitconfig_private

[private use]
ln -s ~/dotfiles/.gitconfig_private ~/.gitconfig
cat ~/.gitconfig

[company use]
ln -s ~/dotfiles/.gitconfig_company ~/.gitconfig
cat ~/.gitconfig
[add name and company email]
vi ~/dotfiles/.gitconfig_company
```
