#!/bin/bash

echo 'Assert that submodules were correctly initialized'

git submodule init
git submodule update

echo 'Lets change the theme!'

mkdir -p ~/.config/Terminal
cp -f solarized/light/terminalrc ~/.config/Terminal/terminalrc

echo 'Linking dotfiles on home folder'

ln -sf $PWD/vim                  ~/.vim
ln -sf $PWD/vim/vimrc            ~/.vimrc
ln -sf $PWD/git/gitconfig        ~/.gitconfig
ln -sf $PWD/git/gitignore_global ~/.gitignore_global
ln -sf $PWD/git/gitmessage       ~/.gitmessage
ln -sf $PWD/ruby/irbrc           ~/.irbrc
ln -sf $PWD/ruby/gemrc           ~/.gemrc
ln -sf $PWD/tmux/tmux.conf       ~/.tmux.conf
ln -sf $PWD/oh-my-zsh            ~/.oh-my-zsh
ln -sf ~/.oh-my-zsh/zshrc        ~/.zshrc
ln -sf $PWD/fonts                ~/.fonts

echo 'Install some basic packages'

sudo yum install zsh vim-X11 git tig ruby tmux ack gcc

echo 'Install gems'

gem install bundler wirble pry

echo 'Change default shell to zsh'

chsh -s /bin/zsh
