#!/bin/bash

# Add the following entry in /etc/pacman.conf
# to be able to install yaourt
# 
# [archlinuxfr]
# Server = http://repo.archlinux.fr/x86_64


yaourt -S --noconfirm       \
sudo                        \
xorg-server                 \
xorg-xinit                  \
xorg-server-utils           \
mesa                        \
ttf-dejavu                  \
ttf-droid                   \
xfce4                       \
xfce4-goodies               \
slim                        \
unzip                       \
unrar                       \
ntfs-3g                     \
wicd                        \
wicd-gtk                    \
pmount                      \
epdfview                    \
parole                      \
gstreamer0.10-plugins       \
chromium                    \
flashplugin                 \
xcursor-neutral             \
slim-themes                 \
archlinux-themes-slim       \
archlinux-wallpaper         \
openssh                     \
tmux                        \
htop                        \
irssi                       \
bitlbee                     \
gnu-netcat                  \
git                         \
ruby                        \
zsh                         \
gvim                        \
tig                         \
ack                         \
ctags                       \
nodejs                      \
postgresql                  \
pgadmin3                    \
eclipse                     \
tree                        \
gimp                        \
dnsutils                    \
calibre                     \
ttf-ms-fonts                \
squeeze-git                 \
dropbox                     \
thunar-dropbox              \
dropbox-daemon              \
elementary-xfce-icons       \
herrie                      \
shutter



gem install                 \
bundler                     \
wirble                      \
pry
