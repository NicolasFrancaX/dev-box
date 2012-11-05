" Use perl compatible mode

nnoremap / /\v
vnoremap / /\v

" Case insensitive by default

set ignorecase

" If there's one upcase letter, case sensitive search is desired

set smartcase

" Global replace by default

set gdefault

" Search while typing

set incsearch

" Quickly point to the matching bracket when closing

set showmatch

" Highlight search

set hlsearch

" Clear highlight shortcut

nnoremap <leader><space> :noh<cr>
