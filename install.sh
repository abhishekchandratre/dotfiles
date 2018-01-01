#!/bin/sh

echo "Updating vimrc"
if [ ! -d "$HOME/.vim" ]; then
	echo "Inside"
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/plug.vim ~/.vim/autoload
fi
