" Run the current file with rspec

map <leader>rb :call RunVimTmuxCommand("clear; rspec " . bufname("%"))<CR>

" Prompt for a command to run

map <leader>rp :PromptVimTmuxCommand<CR>

" Run last command executed by RunVimTmuxCommand

map <leader>rl :RunLastVimTmuxCommand<CR>

" Inspect runner pane

map <leader>ri :InspectVimTmuxRunner<CR>

" Close all other tmux panes in current window

map <leader>rx :CloseVimTmuxPanes<CR>

" Interrupt any command running in the runner pane

map <leader>rS :InterruptVimTmuxRunner<CR>

" If text is selected, save it in the v buffer and send that buffer it to tmux

vmap <leader>rs "vy :call RunVimTmuxCommand(@v)<CR>

" Use nearest pane (not used by vim) if found instead of running split-window

let VimuxUseNearestPane = 1
