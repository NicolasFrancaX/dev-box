" Disable arrow keys to enforce good habits

nnoremap <up>    <NOP>
nnoremap <down>  <NOP>
nnoremap <left>  <NOP>
nnoremap <right> <NOP>
inoremap <up>    <NOP>
inoremap <down>  <NOP>
inoremap <left>  <NOP>
inoremap <right> <NOP>

" Correct navigation on line wrap

nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

" Window navigation

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab navigation

nnoremap <S-l> :tabnext<cr>
nnoremap <S-h> :tabprev<cr>
