#!/bin/bash

echo 'Assert that submodules were correctly initialized'
git submodule init
git submodule update

echo 'Linking dotfiles on home folder'
ln -sf $PWD/vim                         ~/.vim
ln -sf $PWD/vim/vimrc                   ~/.vimrc
ln -sf $PWD/git/gitconfig               ~/.gitconfig
ln -sf $PWD/git/gitignore_global        ~/.gitignore_global
ln -sf $PWD/git/gitmessage              ~/.gitmessage
ln -sf $PWD/irbrc                       ~/.irbrc
ln -sf $PWD/tmux.conf                   ~/.tmux.conf
ln -sf $PWD/oh-my-zsh                   ~/.oh-my-zsh
ln -sf ~/.oh-my-zsh/zshrc               ~/.zshrc
mkdir -p ~/.fonts
ln -sf $PWD/fonts/ubuntu-mono-powerline ~/.fonts/ubuntu-mono-powerline

echo 'Install some basic packages'
sudo apt-get install g++ ncurses-term vim-nox vim-gui-common git ack-grep tig exuberant-ctags tmux zsh build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion ruby1.9.1


echo "ack-grep is a lame name! Vim plugin won't recognize it"
sudo ln -sf /usr/bin/ack-grep /usr/bin/ack

echo 'Install rvm'
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
rvm install 1.9.3-head
rvm use --default 1.9.3-head

echo 'Change default shell to zsh'
chsh -s /bin/zsh
