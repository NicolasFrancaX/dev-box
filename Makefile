all: install

install:
	# linking dotfiles on home folder
	ln -s $PWD/.vim              ~/.vim
	ln -s $PWD/.vimrc            ~/.vimrc
	ln -s $PWD/.gitconfig        ~/.gitconfig
	ln -s $PWD/.gitignore_global ~/.gitignore_global
	ln -s $PWD/.gitmessage       ~/.gitmessage
	
	# Incorporate my configs on .bashrc
	echo 'source $(PWD)/.bashrc' >> ~/.bashrc
	
	
	# Install some basic packages
	sudo apt-get install g++ ncurses-term vim-nox git ack-grep tig
	
	# ack-grep is a lame name! Vi plugin won't recognize it
	sudo ln -s /usr/bin/ack-grep /usr/bin/ack
	
	# install rvm
	bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
	source ~/.bashrc
	sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion
	rvm install 1.8.7-head
	rvm install 1.9.3-head
	
	# assert that submodules were correctly initialized
	git submodule init
	git submodule update
	
	# install rake to compile command-t
	rvm use 1.8.7-head
	gem install rake
	
	# compile command-t
	cd ~/.vim/bundle/command-t
	rake make
	rvm use --default 1.9.3-head
	

