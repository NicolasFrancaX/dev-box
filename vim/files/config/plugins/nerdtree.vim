" Auto-open if Vim is called without parameters

autocmd vimenter * if !argc() | NERDTree | endif

" Shortcuts

nnoremap <leader>m      :NERDTreeToggle<cr>
vnoremap <leader>m      :NERDTreeToggle<cr>
inoremap <leader>m <ESC>:NERDTreeToggle<cr>
