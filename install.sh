#!/bin/sh

if [ ! -d "$HOME/.vim" ]; then
	echo "Updating vimrc"
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/plug.vim ~/.vim/autoload
fi

if [ ! -f "$HOME/.tmux.conf" ]; then
	echo "Updating tmux.conf"
	cp tmux.conf ~/.tmux.conf
fi

if [ ! -f "$HOME/.ctags" ]; then
	echo "Updating ctags"
	cp ctags ~/.ctags
fi
