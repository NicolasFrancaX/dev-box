" Define Stab to set tabstop, softtabstop and shiftwidth to the same value

command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
" Reference: http://vimcasts.org/episodes/tabs-and-spaces/

" Remove trailing spaces with F5

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
" Reference: http://vimcasts.org/episodes/tidying-whitespace/

set ts=2 sts=2 sw=2 expandtab     " Default spaces

" Spaces for filetypes

autocmd FileType makefile  setlocal sts=4 sts=4 sw=4 noexpandtab
autocmd FileType markdown  setlocal sts=4 sts=4 sw=4 expandtab
autocmd FileType python    setlocal sts=4 sts=4 sw=4 expandtab

