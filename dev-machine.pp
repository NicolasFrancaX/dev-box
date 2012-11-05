exec {'vim +BundleInstall +qa':

}



# #!/bin/bash
# 
# echo 'Refer to packages.md to confirm that every package'
# echo 'is installed before proceeding!'
# 
# read
# 
# echo 'Assert that submodules were correctly initialized'
# 
# git submodule init
# git submodule update
# 
# echo 'Linking dotfiles on home folder'
# 
# ln -sf $PWD/vim                        ~/.vim
# ln -sf ~/.vim/vimrc                    ~/.vimrc
# ln -sf $PWD/git/gitconfig              ~/.gitconfig
# ln -sf $PWD/git/gitignore_global       ~/.gitignore_global
# ln -sf $PWD/git/gitmessage             ~/.gitmessage
# ln -sf $PWD/ruby/irbrc                 ~/.irbrc
# ln -sf $PWD/ruby/gemrc                 ~/.gemrc
# ln -sf $PWD/tmux/tmux.conf             ~/.tmux.conf
# ln -sf $PWD/oh-my-zsh                  ~/.oh-my-zsh
# ln -sf ~/.oh-my-zsh/zshrc              ~/.zshrc
# ln -sf $PWD/fonts                      ~/.fonts
# mkdir -p ~/.config/Terminal
# ln -sf $PWD/solarized/light/terminalrc ~/.config/Terminal/terminalrc
# 
# echo 'Change default shell to zsh'
# 
# chsh -s /bin/zsh



# #!/bin/bash
# 
# # Add the following entry in /etc/pacman.conf
# # to be able to install yaourt
# # 
# # [archlinuxfr]
# # Server = http://repo.archlinux.fr/x86_64
# 
# 
# yaourt -S --noconfirm       \
# sudo                        \
# xorg-server                 \
# xorg-xinit                  \
# xorg-server-utils           \
# mesa                        \
# ttf-dejavu                  \
# ttf-droid                   \
# xfce4                       \
# xfce4-goodies               \
# slim                        \
# unzip                       \
# unrar                       \
# ntfs-3g                     \
# wicd                        \
# wicd-gtk                    \
# pmount                      \
# epdfview                    \
# parole                      \
# gstreamer0.10-plugins       \
# chromium                    \
# flashplugin                 \
# xcursor-neutral             \
# slim-themes                 \
# archlinux-themes-slim       \
# archlinux-wallpaper         \
# openssh                     \
# tmux                        \
# htop                        \
# irssi                       \
# bitlbee                     \
# gnu-netcat                  \
# git                         \
# ruby                        \
# zsh                         \
# gvim                        \
# tig                         \
# ack                         \
# ctags                       \
# nodejs                      \
# postgresql                  \
# pgadmin3                    \
# eclipse                     \
# tree                        \
# gimp                        \
# dnsutils                    \
# calibre                     \
# ttf-ms-fonts                \
# squeeze-git                 \
# dropbox                     \
# thunar-dropbox              \
# dropbox-daemon              \
# elementary-xfce-icons       \
# herrie                      \
# shutter
# 
# 
# 
# gem install                 \
# bundler                     \
# wirble                      \
# pry
