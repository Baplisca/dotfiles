# dotfiles

my custom dotfiles

## Setup

```bash
git clone git@github.com:Baplisca/dotfiles.git
cd ~/dotfiles

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat ~/.git-prompt.sh
rm ~/.bashrc ~/.zshrc ~/.gitconfig ~/.tmux.conf
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

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
