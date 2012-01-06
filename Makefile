all: install

install:
	# Install some basic packages
	sudo apt-get install ncurses-term vim-nox git ack-grep ruby rubygems
	
	# ack-grep is a lame name! Vi plugin won't recognize it
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	
	# ack pager is configured by default! Such a shame!
	echo 'export ACK_PAGER="/usr/bin/less -R"' >> ~/.bashrc
	
	# install rake to compile command-t
	sudo gem install rake
	
	# compile command-t
	cd ~/.vim/bundle/command-t
	rake make
	
	# install rvm
	bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
	
	# linking dotfiles on home folder
	ln -s ~/.vim              $PWD/.vim
	ln -s ~/.vimrc            $PWD/.vimrc
	ln -s ~/.gitconfig        $PWD/.vimrc
	ln -s ~/.gitignore_global $PWD/.vimrc
	ln -s ~/.gitmessage       $PWD/.vimrc

