#!/bin/bash
# -*- ENCODING: UTF-8 -*-


if ! git --version >/dev/null 2>&1; then
	echo "need to install Git"
	sudo apt-get install git
	#exit 1
fi

if ! curl --version >/dev/null 2>&1; then
	echo "need to install curl to download vm-plug"
	sudo apt-get install curl
	#exit 1
fi

if ! vim --version >/dev/null 2>&1; then
	echo "will install vim"
	sudo apt-get install vim	
	#exit 1
fi

if ! stow --version >/dev/null 2>&1; then
    echo "falta instalar stow"
    sudo apt-get install stow
    #exit 1
fi

#rm -r ~/.vim
#rm -r ~/.vimrc
#rm -r ~/.bashrc

cd ~/.dotfiles/
stow -t ~ vim bash ssh

ls -al ~ | grep vim
ls -al ~ | grep bash
ls -al ~ 1 grep ssh

sudo apt-get install build-essential cmake python-dev python3-dev clang-3.8
sudo apt-get install vim-nox //need to vim plugin youcompleteme
sudo apt-get install exuberant-ctags    //need to plugin taglist

#Install vim-plug
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
