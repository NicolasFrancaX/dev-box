all: install

install:
	sudo apt-get install ncurses-term vim-nox git ack-grep ruby rubygems
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	echo 'export ACK_PAGER="/usr/bin/less -R"' >> ~/.bashrc
	ln -s ~/.vim   .vim
	ln -s ~/.vimrc .vimrc
	sudo gem install rake
	cd ~/.vim/bundle/command-t
	rake make
	bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

