all: install

install:
	sudo apt-get install vim-nox ncurses-term ack-grep ruby rubygems
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	echo 'export ACK_PAGER="/usr/bin/less -R"' >> ~/.bashrc
	ln -s ~/.vim   .vim
	ln -s ~/.vimrc .vimrc
	sudo gem install rake
	cd ~/.vim/bundle/command-t
	rake make

