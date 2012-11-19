" Reload .vimrc

nnoremap <leader>r :source $MYVIMRC<cr>:echo "Reloaded!"<cr>

" Reload .vimrc and update bundles

nnoremap <leader>R :source $MYVIMRC<cr>:BundleInstall<cr>:echo "Reloaded!"<cr>
