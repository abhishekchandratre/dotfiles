inoremap jk <esc>
" load plugs
if filereadable(expand('~/.dotfiles/vim/plugs.vim'))
	source ~/.dotfiles/vim/plugs.vim
end

" load config
if filereadable(expand('~/.dotfiles/vim/configs.vim'))
	source ~/.dotfiles/vim/configs.vim
end
