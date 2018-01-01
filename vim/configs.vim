"load configs
set vimconfig = '~/.dotfiles/vim/configs'

for fpath in split(globpath(vimconfig, '*.vim'), '\n')
  exe 'source' fpath
endfor
