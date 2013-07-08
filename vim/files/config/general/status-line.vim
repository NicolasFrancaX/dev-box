set statusline=
set statusline +=%<%F                              " full path
set statusline +=\ %y                              " file type
set statusline +=\ [%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline +=\ %{&ff}]                         " file format
set statusline +=\ %r                              " readonly flag
set statusline +=\ %m                              " modified flag
set statusline +=%=                                " split point for left and
                                                   " right justification
set statusline +=%{fugitive#statusline()}          " current branch
set statusline +=\ %l                              " cursor line
set statusline +=/%L                               " total lines
set statusline +=,%c                               " cursor column
