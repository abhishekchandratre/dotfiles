inoremap jk <esc>
" load plugs
if filereadable(expand('~/.dotfiles/vim/plugs.vim'))
	source ~/.vim/plugs.vim
end

" load config
if filereadable(expand('~/.dotfiles/vim/configs.vim'))
	source ~/.vim/configs.vim
end
