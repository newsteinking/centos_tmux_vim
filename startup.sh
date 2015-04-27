#!/bin/bash

echo "***This Script is for CentOS 6.5********** "

echo "install powerline font  ===================================>>>"

yum install -y pyton-pip
yum install -y git wget 

git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..

echo "install powerline   ===================================>>>"
git clone https://github.com/powerline/powerline.git
cd powerline
python setup.py
cd ..



echo "copy all ~/       ===================================>>>"
cp _alias ~/.alias
cp _minttyrc ~/.minttyrc
cp _tmux.conf ~/.tmux.conf
cp _vimrc ~/.vimrc
cp _zshrc ~/.zshrc
cp -R ./project ~/
rm -rf ~/startup.sh

echo "copy all complete ===================================>>>"

echo "yum  install tmux  ===================================>>>"
yum install -y  tmux



echo "clone solarized   ===================================>>>"
git clone https://github.com/altercation/solarized.git ~/.vim/bundle/solarized

echo "clone vim vundle   ===================================>>>"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "copy solarized.vim to colors dir   ===================================>>>"
cp ~/.vim/bundle/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

echo "install vim plugin     ===================================>>>"
vim +PluginInstall +qall

echo "install vim plugin fo vi     ===================================>>>"

cp ~/.vim/bundle/SrcExpl/plugin/*.vim ~/.vim/plugin/
cp ~/.vim/bundle/taglist.vim/plugin/*.vim ~/.vim/plugin/
cp ~/.vim/bundle/Trinity/plugin/*.vim ~/.vim/plugin/ 


echo "Good Coding Life for You !!!!"

