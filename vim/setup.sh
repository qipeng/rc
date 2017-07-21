#! /bin/bash
WORKDIR=`pwd`
cd vim
mkdir ~/.vim
ln -s `pwd`/.vim/colors ~/.vim/colors
ln -s `pwd`/.vimrc ~/.vimrc

mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
echo "Type :PluginInstall when vim is opened"
read
vim

cd ${WORKDIR}
