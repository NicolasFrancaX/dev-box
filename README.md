dotfiles
========

This repository holds the configurations of my development machine.

It allows me to share the same configs among my machines with history of changes.

It's tailored for [Arch Linux][1] using [Xfce][2] and [SLiM][3]. It doesn't
aim to be compatible with diverse environments, as it was made only for my
personal use. But if you want to fork this repository and give it a go,
you're welcome to do so.

Install
-------

The following pre-requisites are assumed to be present:

- Arch Linux.
- Xfce.
- SLiM.
- `sudo(8)`.
- Regular user with sudoer permission.

```bash
$ curl http://dotfiles.leafac.com | bash
```

Update
------

Whenever there are new configurations in this repository:

```bash
$ cd .../path/to/dotfiles
$ git pull
$ ./provision.sh
```

Features
--------

### Puppet

All the installation process is handled by [Puppet][4].

Every folder in this repository (except for `eclipse`) are [Puppet Modules][5].

There's a `provision.sh` script to call Puppet with the correct parameters.
It first runs a bootstrap checking if Puppet is installed along with [Git][6]
and everything else that is needed. Then it runs the `site` module.

The `provision.sh` script can run any number of times, as it performs
incremental operations, thanks to how Puppet works. So, if there are any
updates, you just need to run it again.

### Site module

It's responsible for installing packages.

It includes all other modules for the complete install.

### Vim

![Vim][7]

* [Vundle][8] for dependency management.
* [Solarized][9] colorscheme.
* Remap `<leader>` to `,` for ease of use.
* OS clipboard integration. Change to `pastemode` with `F2`.
* Reloads configs with `,r`. Install new Bundles with `,R`.
* Sensible default for indentation. `:Stab` function for changing
  `tabstop`, `softtabstop` and `shiftwidth` to the same value at once.
  [Learn about this][10].
* Avoid typos like `:W` or hitting `;` instead of holding `shift` for `:`.
* `:w!!` to salve write protected files.
* Easy split in windows with `,|` and `,-`.
* Easy navigation in windows with `ctrl + [hjkl]` and tabs with `ctrl + [hl]`.
* Smart placement of temporary files. All `.swp` are placed in a folder
  separate from the current folder.
* Disable arrow keys for best practices.
* Many awesome plugins already installed and configured!
    * `,a` for search with [ack][11].
    * `,fr` and `,fi` for handling links in [Markdown][12] files using
      [formd][13].
    * `,u` for Vim undo tree navigation with [Gundo][14].
    * `,m` for [NERDTree][15].
    * `,=<space>` for aligning with [tabular][16].
    * ...

Check `vim/files/config` for a full list of features. Configs are arranged
in separate files for better organization and well commented.

### tmux

![tmux][17]

* Beautiful status bar.
* Change prefix to `ctrl + a` because it's easier to reach on regular
  keyboards.
* `<prefix>r` to reload configs.
* `<prefix>-` and `<prefix>|` for splitting panes. These are easier to remember.
* OS clipboard integration. `<prefix><esc>` for getting in selection mode.
  `v` starts the selection and `y` finishes it. Then `<prefix>y` sends
  the selected text to the clipboard and `<prefix>p` pastes in tmux.

### Terminal

![Terminal][18]

* [Solarized colors][19] for [Xfce Terminal][20].
* `zsh` with lots of plugins using [oh-my-zsh][21].
* Minimalistic prompt with just the current path on the right and the current
  Git branch, if any.
* All important places in path, like gem binaries and binstubs.

### Keyboard

* Remap Caps Lock to Escape. This saves **a lot** of time.

### Ruby

* Use `rbenv`.
* Don't install `rdoc` from gems, only `ri` because [it's useful][22].
* [Pry Everywhere][23].

### Git

* Sensible global ignores.

**Note**: in `git/templates/config.erb` there's my name and e-mail.
You should change this before using this dotfiles.

### Fonts

* [Patched Droid fonts][24] for vim-powerline.

### Eclipse

* [Google Style Guide for Java as a Eclipse Formatter][25].

**Note**: this isn't installed automatically. You need to import it manually
in Eclipse. Damn GUIs :smile:


[1]: http://www.archlinux.org/
[2]: http://www.xfce.org/
[3]: http://slim.berlios.de/
[4]: http://puppetlabs.com/
[5]: http://docs.puppetlabs.com/puppet/2.7/reference/modules_fundamentals.html
[6]: http://git-scm.com/
[7]: https://dl.dropboxusercontent.com/u/833400/dotfiles-images-for-readme/vim.png
[8]: https://github.com/gmarik/vundle
[9]: http://ethanschoonover.com/solarized
[10]: http://vimcasts.org/episodes/tabs-and-spaces/
[11]: http://betterthangrep.com/
[12]: http://daringfireball.net/projects/markdown/
[13]: http://drbunsen.github.com/formd/
[14]: http://sjl.bitbucket.org/gundo.vim/
[15]: https://github.com/scrooloose/nerdtree
[16]: https://github.com/godlygeek/tabular
[17]: https://dl.dropboxusercontent.com/u/833400/dotfiles-images-for-readme/tmux.png
[18]: https://dl.dropboxusercontent.com/u/833400/dotfiles-images-for-readme/terminal.png
[19]: https://github.com/sgerrand/xfce4-terminal-colors-solarized/blob/master/light/terminalrc
[20]: http://docs.xfce.org/apps/terminal/start
[21]: https://github.com/robbyrussell/oh-my-zsh
[22]: http://jstorimer.com/ri.html
[23]: http://lucapette.com/pry/pry-everywhere/
[24]: https://gist.github.com/2324335
[25]: http://code.google.com/p/google-styleguide/source/browse/trunk/eclipse-java-google-style.xml
