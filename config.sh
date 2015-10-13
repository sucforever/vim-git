#!/bin/sh
vimrcfile="$HOME/.vimrc"
if [ -f $vimrcfile ]; then
	mv $vimrcfile $vimrcfile.bak
fi

ln -s $HOME/.vim/vim-git/.vimrc $HOME/.vimrc
