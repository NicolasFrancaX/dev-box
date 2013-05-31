dotfiles
========

This repository holds the configurations of my development machine.

It allows me to share the same configs among my machines with history of changes.

It's tailored for [Arch Linux][1] using [Xfce][2]. It doesn't aim to be compatible with diverse environments, as it was made only for my personal use. But if you want to fork this repository and give it a go, you're welcome to do so.

Install
-------

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

All the installation process is handled by [Puppet][3].

Every folder in this repository (except for `eclise` and `images-for-README`) are [Puppet Modules][4].

There's a `provision.sh` script to call Puppet with the correct parameters. It first runs a bootstrap checking if Puppet is installed along with [Git][5] and everything else that is needed. Then it runs the `install` module.

The `provision.sh` script can be run any number of times, as it can perform incremental updates, thanks to how Puppet works. So, if there are any updates, you just need to run it again.

### Install module

It's responsible for installing packages and [Gems][6].

It includes all other modules for the complete install.

### Vim

![Vim][7]

* [Vundle][8] for dependency management.
* [Solarized][9] colorscheme.
* Remap `<leader>` to `,` for ease of use.
* OS clipboard integration. Change to _pastemode_ with `F2`.
* Reloads configs with `,r`. Install new Bundles with `,R`.
* Sensible default for indentation. `:Stab` function for changing `tabstop`, `softtabstop` and `shiftwidth` to the same value at once. [Learn about this][10].
* Avoid typos like `:W` or hitting `;` instead of holding `shift` for `:`.
* `:w!!` to salve write protected files.
* Easy split in windows with `,|` and `,-`.
* Easy navigation in windows with `ctrl + [hjkl]` and tabs with `ctrl + [hl]`.
* Smart placement of temporary files. All `.swp` are placed in a folder separate from the current folder.
* Disable arrow keys for best practices.
* Many awesome plugins already installed and configured!
    * `,a` for search with [ack][11].
    * `,fr` and `,fi` for handling links in [Markdown][12] files using [formd][13].
    * `,u` for Vim undo tree navigation with [Gundo][14].
    * `,m` for [NERDTree][15].
    * `,=<space>` for aligning with [tabular][16].
    * ...

Check `vim/files/config` for a full list of features. Configs are arranged in separate files for better organization and well commented.

### tmux

![tmux][17]

* Beautiful status bar.
* Change prefix to `ctrl + a` because it's easier to reach on regular keyboards.
* `<prefix>r` to reload configs.
* `<prefix>-` and `<prefix>|` for splitting panes. These are easier to remember.
* OS clipboard integration. `<prefix><esc>` for getting in selection mode. `v` starts the selection and `y` finishes it. Then `<prefix>y` sends the selected text to the clipboard and `<prefix>p` pastes in tmux.

### Terminal

![Terminal][18]

* [Solarized colors][19] for [Xfce Terminal][20].
* zsh with lots of plugins using [oh-my-zsh][21].
* Minimalistic prompt with just the current path on the right and the current Git branch, if any.
* All important places in path, like gem binaries.

### Keyboard

* Remap Caps Lock to Escape. This saves **a lot** of time.

### Ruby

* Don't install `rdoc` from gems, only `ri` because [it's useful][22].
* Auto-complete in `irb`.

### Git

* Sensible global ignores.
* Nice default commit message :laughing:

**Note**: in `git/templates/config.erb` there's my name and e-mail. You should change this before using this dotfiles.

### Fonts

* Patched Droid fonts from https://gist.github.com/2324335 for vim-powerline.

### Eclipse

* [Google Style Guide for Java as a Eclipse Formatter][23].

**Note**: this isn't installed automatically. You need to import it manually in Eclipse. Damn GUIs :smile:


[1]: http://www.archlinux.org/
[2]: http://www.xfce.org/
[3]: http://puppetlabs.com/
[4]: http://docs.puppetlabs.com/puppet/2.7/reference/modules_fundamentals.html
[5]: http://git-scm.com/
[6]: http://rubygems.org/
[7]: https://raw.github.com/leafac/dotfiles/master/images-for-README/vim.png
[8]: https://github.com/gmarik/vundle
[9]: http://ethanschoonover.com/solarized
[10]: http://vimcasts.org/episodes/tabs-and-spaces/
[11]: http://betterthangrep.com/
[12]: http://daringfireball.net/projects/markdown/
[13]: http://drbunsen.github.com/formd/
[14]: http://sjl.bitbucket.org/gundo.vim/
[15]: https://github.com/scrooloose/nerdtree
[16]: https://github.com/godlygeek/tabular
[17]: https://raw.github.com/leafac/dotfiles/master/images-for-README/tmux.png
[18]: https://raw.github.com/leafac/dotfiles/master/images-for-README/terminal.png
[19]: https://github.com/sgerrand/xfce4-terminal-colors-solarized/blob/master/light/terminalrc
[20]: http://docs.xfce.org/apps/terminal/start
[21]: https://github.com/robbyrussell/oh-my-zsh
[22]: http://jstorimer.com/ri.html
[23]: http://code.google.com/p/google-styleguide/source/browse/trunk/eclipse-java-google-style.xml
