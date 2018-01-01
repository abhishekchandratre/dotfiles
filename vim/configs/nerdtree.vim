" start nerd tree
function! NERDTreeToggle()
	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
		exe ":NERDTreeClose"
	else
		exe ":NERDTreeFind"
	endif

endfunction

map <leader>f :call NERDTreeToggle()<CR>
