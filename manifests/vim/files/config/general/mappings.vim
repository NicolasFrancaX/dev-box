" <leader> is , instead of \

let mapleader = ","

" Map to avoid hold shift to every command

nnoremap ; :

" Edit a write protected file after open

cmap w!! w !sudo tee % >/dev/null

" Visual shifting (does not exit Visual mode)

vnoremap < <gv
vnoremap > >gv

" Fix common typos like :Q or :W

command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" Yank from the cursor to the end of the line, to be consistent with C and D

nnoremap Y y$

" Make pasting in visual-mode sane, by not replacing the register content with
" was erased

vnoremap p pgvy
