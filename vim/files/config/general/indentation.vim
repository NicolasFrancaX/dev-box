" Remove trailing spaces

nnoremap <leader>S :%s/\s\+$//e<cr>:noh<cr>
vnoremap <leader>S :s/\s\+$//e<cr>:noh<cr>gv

" Default spaces

set ts=2 sts=2 sw=2 expandtab

" Spaces for filetypes

autocmd FileType makefile setlocal sts=4 sts=4 sw=4 noexpandtab
autocmd FileType python   setlocal sts=4 sts=4 sw=4 expandtab

" Define Stab to set tabstop, softtabstop and shiftwidth to the same value
" Reference: http://vimcasts.org/episodes/tabs-and-spaces/

command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
endfunction
