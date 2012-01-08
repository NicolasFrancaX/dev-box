all: install

install:
	# linking dotfiles on home folder
	ln -s $PWD/.vim              ~/.vim
	ln -s $PWD/.vimrc            ~/.vimrc
	ln -s $PWD/.gitconfig        ~/.gitconfig
	ln -s $PWD/.gitignore_global ~/.gitignore_global
	ln -s $PWD/.gitmessage       ~/.gitmessage
	
	# Install some basic packages
	sudo apt-get install g++ ncurses-term vim-nox git ack-grep ruby rubygems tig
	
	# ack-grep is a lame name! Vi plugin won't recognize it
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	
	# ack pager is configured by default! Such a shame!
	echo 'source $(PWD)/.bashrc' >> ~/.bashrc
	
	# assert that submodules were correctly initialized
	git submodule init
	git submodule update
	
	# install rake to compile command-t
	sudo gem install rake
	
	# compile command-t
	cd ~/.vim/bundle/command-t
	rake make
	
	# install rvm
	bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

