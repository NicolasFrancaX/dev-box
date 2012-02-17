#!/bin/bash

echo 'Linking dotfiles on home folder'
ln -sf $PWD/.vim              ~/.vim
ln -sf $PWD/.vimrc            ~/.vimrc
ln -sf $PWD/.gitconfig        ~/.gitconfig
ln -sf $PWD/.gitignore_global ~/.gitignore_global
ln -sf $PWD/.gitmessage       ~/.gitmessage
ln -sf $PWD/.irbrc            ~/.irbrc
ln -sf $PWD/.tmux.conf        ~/.tmux.conf
ln -sf $PWD/oh-my-zsh         ~/.oh-my-zsh

echo 'Incorporate my configs on .bashrc'
echo "source $PWD/.bashrc" >> ~/.bashrc


echo 'Install some basic packages'
sudo apt-get install g++ ncurses-term vim-nox vim-gui-common git ack-grep tig exuberant-ctags tmux zsh

echo "ack-grep is a lame name! Vi plugin won't recognize it"
sudo ln -sf /usr/bin/ack-grep /usr/bin/ack

echo 'Install rvm'
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
source ~/.bashrc
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion
rvm install 1.8.7-head
rvm install 1.9.3-head

echo 'Assert that submodules were correctly initialized'
git submodule init
git submodule update

echo 'Install rake to compile command-t'
rvm use 1.8.7-head
gem install rake

echo 'Compile command-t'
cd ~/.vim/bundle/command-t
rake make
rvm use --default 1.9.3-head

echo 'Configure oh-my-zsh'
ln -sf ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
