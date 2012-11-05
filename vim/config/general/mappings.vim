" <leader> is , instead of \

let mapleader = ","

" Map to avoid hold shift to every command

nnoremap ; :

" Edit a write protected file after open

cmap w!! w !sudo tee % >/dev/null

" Visual shifting (does not exit Visual mode)

vnoremap < <gv
vnoremap > >gv

" Fix common typos

cmap W w
cmap Q q

" Yank from the cursor to the end of the line, to be consistent with C and D

nnoremap Y y$
