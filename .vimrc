" Init
" ------------------------------------

" Pathogen

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" Compatibility off, no one cares about bare Vi

set nocompatible
set modelines=0

" Theme
" ------------------------------------

set term=gnome-256color         " Enable true colors on terminal
                                " Requires ncurses-term package
colorscheme mustang             " Theme mustang
" Highlight color column smoothly instead of using a shocking red :P
hi colorcolumn ctermbg=235 guibg=#262626

" Screen
" ------------------------------------

set number                        " show line numbers
set encoding=utf-8
set scrolloff=3                   " scroll should happen before cursor
                                  " reaches end of the screen
set autoindent
set showmode                      " Show -- INSERT -- or -- VISUAL --
                                  " on the bottom of the screen.
                                  " This is Vim default, but isn't
                                  " Vi default, so there it is :D
set showcmd                       " Show partial commands while
                                  " being typed
set hidden                        " Buffers should be hidden when
                                  " I left them, and I don't want Vi
                                  " complaining about it!
set wildmenu                      " Enhanced tab completion
set wildmode=list:longest         " on command insert
set ttyfast                       " Improve redrawing
set ruler                         " Show cursor position on last line
set backspace=indent,eol,start    " Backspace over anything
set laststatus=2                  " Always show status
set undofile                      " Undo available even after buffer close
set list                          " Show invisible chars
set listchars=tab:»\ ,trail:·
set colorcolumn=80                " Show ruler on column 80

" Key remappings
" ------------------------------------

" <leader> is , instead of \

let mapleader = ","

" Map to avoid hold shift to every command

nnoremap ; :

" Disable arrow keys to enforce good habits

nnoremap <up>     <NOP>
nnoremap <down>   <NOP>
nnoremap <left>   <NOP>
nnoremap <right>  <NOP>
inoremap <up>     <NOP>
inoremap <down>   <NOP>
inoremap <left>   <NOP>
inoremap <right>  <NOP>

" Correct navigation on line wrap

nnoremap j gj
nnoremap k gk

" Window navigation made easy

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab navigation made easy

nnoremap <S-l> :tabnext<cr>
nnoremap <S-h> :tabprev<cr>

" NERDTree shortcut

nnoremap <F9>      :NERDTreeToggle<cr>
vnoremap <F9>      :NERDTreeToggle<cr>
inoremap <F9> <ESC>:NERDTreeToggle<cr>

" Ack shortcut

nnoremap <leader>a :Ack -i 

" Edit a write protected file after open

nnoremap <leader>W :w !sudo tee %<cr>
" Reference:
" http://www.commandlinefu.com/commands/view/1204/save-a-file-you-edited-in-vim-without-the-needed-permissions

" Spaces and Tabs
" ------------------------------------

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

" Search
" ------------------------------------

" Use perl compatible mode

nnoremap / /\v
vnoremap / /\v
set ignorecase        " Case insensitive by default
set smartcase         " If there's one upcase letter, case sensitive
                      " search is desired
set gdefault          " Global replace by default
set incsearch         " Search while typing
set showmatch         " Quickly point to the matching bracket when closing
set hlsearch          " Highlight search

" Clear highlight shortcut

nnoremap <leader><space> :noh<cr>

" Toggle paste mode

set pastetoggle=<F2>

" Show buffer-explorer

nnoremap <F3>      :BufExplorer<cr>
vnoremap <F3> <ESC>:BufExplorer<cr>
inoremap <F3> <ESC>:BufExplorer<cr>

" GIT
" ------------------------------------

" auto-clean buffers

autocmd BufReadPost fugitive://* set bufhidden=delete

" add branch name on status line

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Taglist
" ------------------------------------

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
