" Use perl compatible mode

nnoremap / /\v
vnoremap / /\v
set ignorecase        " Case insensitive by default
set smartcase         " If there's one upcase letter, case sensitive
                      " search is desired
set gdefault          " Global replace by default
set incsearch         " Search while typing
set showmatch         " Quickly point to the matching bracket when closing
set hlsearch          " Highlight search

" Clear highlight shortcut

nnoremap <leader><space> :noh<cr>
