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

sudo apt-get install g++ ncurses-term vim-nox vim-gui-common git ack-grep tig exuberant-ctags tmux zsh build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion ruby1.9.1


echo "ack-grep is a lame name! Vim plugin won't recognize it"

sudo ln -sf /usr/bin/ack-grep /usr/bin/ack

echo 'Install gems'

gem install bundler wirble pry

echo 'Change default shell to zsh'

chsh -s /bin/zsh
