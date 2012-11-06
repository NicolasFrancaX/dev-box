syntax on
set autoindent

" Show line numbers

set number

set encoding=utf-8

" Scroll should happen before cursor reaches end of the screen

set scrolloff=3

" Show partial commands while being typed

set showcmd

" Buffers should be hidden when I left them, and I don't want Vim
" complaining about it!

set hidden

" Enhanced tab completion on command insert

set wildmenu
set wildmode=list:longest

" Improve redrawing

set ttyfast

" Show cursor position on last line

set ruler

" Backspace over anything

set backspace=indent,eol,start

" Always show status

set laststatus=2

" Show invisible chars

set list
set listchars=tab:»\ ,trail:·

" Show ruler on column 80

set colorcolumn=80
