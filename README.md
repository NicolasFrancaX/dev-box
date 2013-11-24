dev-box
=======

Machines for software development
---------------------------------

[`dev-box`][dev-box] is a [Puppet][puppet] catalog to build development
machines.

It comes with ready to use environments for programming languages, databases,
text editors and is suited for a full command-line development experience.

Principles
----------

* Easy to extend and adapt to other needs.
* Automate all possible things.
* Use most up-to-date software.
* Value customization over portability.
* Share configurations among physical and virtual machines.
* Lightweight physical machine, use virtualization for development environment.

Profiles
--------

The same catalog works to provision the following kinds of machines:

### Desktop running [Arch Linux][arch-linux]

Runs on an [Arch Linux][arch-linux] fresh install with [Xfce][xfce] as
[Desktop Environment][desktop-environment] and [SLiM][slim] as
[Display Manager][display-manager].

Installs development tools such as text editors and command-line tools, but
doesn't install programming languages, databases and so on. The desktop
installation is minimal and virtual machines are for the development
environment.

### Server running [Ubuntu][ubuntu]

Runs on an [Ubuntu 12.04 server][ubuntu].

Installs development tools such as text editor and programming languages
environments, databases and so on. Provides a full development environment
that can easily be destroyed and recreated as needed.

Features
--------

### Text editors

#### [Vim][vim]

* [Vundle][vundle] for dependency management.
* [Tomorrow][tomorrow] colorscheme.
* Remap `<leader>` to `,`.
* Clipboard integration.
* Change to `pastemode` with `<leader>p`.
* Reload configurations with `<leader>r`.
* Install new bundles with `<leader>R`.
* Sensible default for indentation.
* `:Stab` function for changing `tabstop`, `softtabstop` and `shiftwidth`
  to the same value at once. [Reference][vimcast-tabs-and-spaces].
* Avoid typos like `:W` or hitting `;` instead of holding `shift` for `:`.
* `:w!!` to save write protected files.
* Easy split in windows with `<leader>|` and `<leader>-`.
* Easy navigation in windows with `ctrl + [hjkl]` and tabs with `ctrl + [hl]`.
* Smart placement of temporary files. All `.swp` are placed in a folder
  separate from the current folder.
* Disable arrow keys for best practices.
* Many awesome plugins already installed and configured!
    * `<leader>u` for Vim undo tree navigation with [Gundo][gundo].
    * `<leader>m` for [NERDTree][nerdtree].
    * `<leader>=<space>` for aligning with [tabular][tabular].
    * ...

Read the source in `manifests/vim/files/config` for more information.
The configurations are split in several files for better readability.

#### [Sublime Text][sublime-text]

Installed for pairing sessions with people that don't use [Vim][vim]. No
configuration is made.

### Eclipse

* [Google Style Guide for Java][google-style-guide-for-java] Eclipse
  Formatter.

**Note**: this isn't installed automatically. You need to import it manually
in Eclipse. Damn GUIs :smile:

### Command-line tools

#### [tmux][tmux]

* Beautiful status bar.
* Change prefix to `ctrl + a` because it's easier to reach on regular
  keyboards.
* `<prefix>r` to reload configs.
* `<prefix>-` and `<prefix>|` for splitting panes.
* Clipboard integration. `<prefix><esc>` for selection mode.
  `v` starts the selection and `y` finishes it.

#### [Xfce Terminal][xfce-terminal]

* [Tomorrow][tomorrow] colorscheme.
* [`zsh`][zsh] with with a custom fork of [oh-my-zsh][oh-my-zsh].

#### [Git][git]

* Sensible global ignores.

**Note**: in `manifests/git/files/config` there's my name and e-mail.
You should change this before using [`dev-box`][dev-box].

### Desktop

#### Keyboard

* Remap Caps Lock to Escape. This saves **a lot** of time.

### Programming languages

#### [Ruby][ruby]

* Use [`chruby`][chruby] to change [Ruby][ruby] version.
* [Bundler][bundler], [pry][pry] and other gems installed by default.

---

Other programming languages, databases and web servers come with
[`dev-box`][dev-box]. As they are rapidly changing, they aren't all documented
here, read sources in `manifests`.

Usage
-----

### Desktop running [Arch Linux][arch-linux]

#### Install

```bash
$ curl -L dotfiles.leafac.com | bash
```

#### Update

```bash
$ scripts/provision.sh
```

### Server running [Ubuntu][ubuntu]

Runs in a virtual machine provided by [Virtual Box][virtual-box] using
[Vagrant][vagrant].

#### Install

```bash
$ vagrant up
```

#### Update

```bash
$ vagrant provision
```


[dev-box]: http://github.com/leafac/dev-box
[puppet]: https://puppetlabs.com/
[arch-linux]:http://archlinux.org/
[xfce]: http://www.xfce.org/
[desktop-environment]: https://wiki.archlinux.org/index.php/Desktop_Environment
[slim]: http://slim.berlios.de/
[display-manager]: https://wiki.archlinux.org/index.php/Display_Manager
[ubuntu]: http://www.ubuntu.com/
[vim]: http://www.vim.org/
[vundle]: https://github.com/gmarik/vundle
[tomorrow]: https://github.com/ChrisKempson/Tomorrow-Theme
[vimcast-tabs-and-spaces]: http://vimcasts.org/episodes/tabs-and-spaces/
[gundo]: http://sjl.bitbucket.org/gundo.vim/
[nerdtree]: https://github.com/scrooloose/nerdtree
[tabular]: https://github.com/godlygeek/tabular
[sublime-text]: http://www.sublimetext.com/
[tmux]: http://tmux.sourceforge.net/
[xfce-terminal]: http://docs.xfce.org/apps/terminal/start
[zsh]: http://www.zsh.org/
[oh-my-zsh]: https://github.com/leafac/oh-my-zsh
[chruby]: https://github.com/postmodern/chruby
[ruby]: https://www.ruby-lang.org
[bundler]: http://bundler.io/
[pry]: http://pryrepl.org/
[google-style-guide-for-java]: http://code.google.com/p/google-styleguide/source/browse/trunk/eclipse-java-google-style.xml
[vagrant]: http://www.vagrantup.com/
[git]: http://git-scm.com/
[virtual-box]: https://virtualbox.org/
