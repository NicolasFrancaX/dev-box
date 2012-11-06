" Auto-open if Vim is called without parameters

autocmd vimenter * if !argc() | NERDTree | endif

" Shortcuts

nnoremap <F9>      :NERDTreeToggle<cr><cr>
vnoremap <F9>      :NERDTreeToggle<cr><cr>
inoremap <F9> <ESC>:NERDTreeToggle<cr><cr>
