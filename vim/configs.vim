"load configs
set vimconfig = '~/.dotfiles/vim/config'

for fpath in split(globpath(vimconfig, '*.vim'), '\n')
  exe 'source' fpath
endfor
