" Disable arrow keys to enforce good habits

nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Correct navigation on line wrap

nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

vnoremap j gj
vnoremap k gk
vnoremap $ g$
vnoremap 0 g0

" Window navigation

nnoremap <leader>\| <c-w>v<c-w>l
nnoremap <leader>- <c-w>s<c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Resize windows

nnoremap <c-b> 5<c-w><
nnoremap <c-n> 5<c-w>>

nnoremap + 5<c-w>+
nnoremap _ 5<c-w>-

" Tab navigation

nnoremap <s-l> :tabnext<cr>
nnoremap <s-h> :tabprev<cr>

" Keep cursor in place after yank

vnoremap y ygv<esc>
