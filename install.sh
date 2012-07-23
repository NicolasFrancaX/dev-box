#!/bin/bash

echo 'Assert that submodules were correctly initialized'

git submodule init
git submodule update

echo 'Linking dotfiles on home folder'

ln -sf $PWD/vim                        ~/.vim
ln -sf ~/.vim/vimrc                    ~/.vimrc
ln -sf $PWD/git/gitconfig              ~/.gitconfig
ln -sf $PWD/git/gitignore_global       ~/.gitignore_global
ln -sf $PWD/git/gitmessage             ~/.gitmessage
ln -sf $PWD/ruby/irbrc                 ~/.irbrc
ln -sf $PWD/ruby/gemrc                 ~/.gemrc
ln -sf $PWD/tmux/tmux.conf             ~/.tmux.conf
ln -sf $PWD/oh-my-zsh                  ~/.oh-my-zsh
ln -sf ~/.oh-my-zsh/zshrc              ~/.zshrc
ln -sf $PWD/fonts                      ~/.fonts
mkdir -p ~/.config/Terminal
ln -sf $PWD/solarized/light/terminalrc ~/.config/Terminal/terminalrc

echo 'Install some basic packages'


echo 'Install gems'

gem install bundler wirble pry

echo 'Change default shell to zsh'

chsh -s /bin/zsh
