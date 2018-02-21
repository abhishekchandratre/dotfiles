" Run command in same window
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

function! VimuxSlime()
	call VimuxSendText(@v)
	call VimuxSendKeys("Enter")
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <Leader>vs "vy :call VimuxSlime()<CR>

" Select current paragraph and send it to tmux
nmap <Leader>vs vip<LocalLeader>vs<CR>

