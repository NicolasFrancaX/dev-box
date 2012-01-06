all: install

install:
	# linking dotfiles on home folder
	ln -s $PWD/.vim              ~/.vim
	ln -s $PWD/.vimrc            ~/.vimrc
	ln -s $PWD/.gitconfig        ~/.gitconfig
	ln -s $PWD/.gitignore_global ~/.gitignore_global
	ln -s $PWD/.gitmessage       ~/.gitmessage
	
	# Install some basic packages
	sudo apt-get install ncurses-term vim-nox git ack-grep ruby rubygems
	
	# ack-grep is a lame name! Vi plugin won't recognize it
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	
	# ack pager is configured by default! Such a shame!
	echo 'export ACK_PAGER="/usr/bin/less -R"' >> ~/.bashrc
	
	# install rake to compile command-t
	sudo gem install rake
	
	# assert that submodules were correctly initialized
	git submodule init
	git submodule update
	
	# compile command-t
	cd ~/.vim/bundle/command-t
	rake make
	
	# install rvm
	bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

