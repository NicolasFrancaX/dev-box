dotfiles
========

Keeping versioned dotfiles so that I can maintain consistent development environments. Also, I'm able to watch the evolution as they grow hairy and messy :P

It's tailored for [Arch Linux](http://www.archlinux.org/). But should work with minor changes on other environments.

[Puppet](http://puppetlabs.com/) is used in the install.

Install
-------

To install the dotfiles in Arch Linux, you'll need `git`, `yaourt` and `puppet`.

Install them with:

```bash
$ sudo echo -e "\\n[archlinuxfr]\\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
$ sudo pacman -Syu
$ sudo pacman -S git yaourt
$ yaourt -S ruby-puppet --noconfirm
```

Clone this repository:

```bash
$ git clone git://github.com/leafac/dotfiles.git
```

Then, run `install.sh`.

```bash
$ cd dotfiles
$ ./install.sh
```
