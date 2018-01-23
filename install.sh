#!/bin/sh

if [ ! -d "$HOME/.vim" ]; then
	echo "Updating vimrc"
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/plug.vim ~/.vim/autoload
fi

echo "Updating tmux.conf"
cp tmux.conf ~/.tmux.conf

echo "Updating ctags"
cp ctags ~/.ctags

echo "Updating profile"
cp profile ~/.profile
