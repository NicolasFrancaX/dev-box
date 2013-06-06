set statusline=
set statusline +=%<%F                     " full path
set statusline +=\ %r                     " readonly flag
set statusline +=\ %m                     " modified flag
set statusline +=%=                       " split point for left and right
                                          " justification
set statusline +=%{fugitive#statusline()} " current branch
set statusline +=\ %l                     " cursor line
set statusline +=/%L                      " total lines
set statusline +=,%c                     " cursor column
