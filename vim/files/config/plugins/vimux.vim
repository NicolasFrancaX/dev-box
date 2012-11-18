" Run the current file with rspec

map <leader>rb :call RunVimTmuxCommand("clear; rspec " . bufname("%"))<cr>

" Prompt for a command to run

map <leader>rp :PromptVimTmuxCommand<cr>

" Run last command executed by RunVimTmuxCommand

map <leader>rl :RunLastVimTmuxCommand<cr>

" Inspect runner pane

map <leader>ri :InspectVimTmuxRunner<cr>

" Close all other tmux panes in current window

map <leader>rx :CloseVimTmuxPanes<cr>

" Interrupt any command running in the runner pane

map <leader>rS :InterruptVimTmuxRunner<cr>

" If text is selected, save it in the v buffer and send that buffer it to tmux

vmap <leader>rs "vy :call RunVimTmuxCommand(@v)<cr>

" Use nearest pane (not used by vim) if found instead of running split-window

let VimuxUseNearestPane = 1
