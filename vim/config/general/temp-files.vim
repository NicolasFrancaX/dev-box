set backup                        " Backup is always nice
set undofile                      " Undo available even after buffer close

set undolevels=1000               " Maximum number of changes that can be undone
set undoreload=10000              " Maximum number lines to save for undo on
                                  " a buffer reload

" folders to store temp files and avoid cluttering the current directory

set backupdir=~/.vimbackup//,/tmp
set directory=~/.vimswap//,/tmp
set viewdir=~/.vimviews//,/tmp
set undodir=~/.vimundos//,/tmp

" Create those directories if they don't exist already

silent execute '!mkdir -p ~/.vimbackup'
silent execute '!mkdir -p ~/.vimswap'
silent execute '!mkdir -p ~/.vimviews'
silent execute '!mkdir -p ~/.vimundos'
