call plug#begin('~/.vim/plugged')
if filereadable(expand("~/.dotfiles/vim/plugs/all.vim"))
  source ~/.dotfiles/vim/plugs/all.vim
endif
call plug#end()
