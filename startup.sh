#!/bin/bash

echo "***This Script is for CentOS 6.5, 7.0********** "

echo "install powerline font  ===================================>>>"

yum install -y git wget 

git clone https://github.com/powerline/fonts.git

mkdir -p /usr/share/fonts/powerline
cp -R ./fonts/*  /usr/share/fonts/powerline
fc-cache -f /usr/share/fonts/powerline/DejaVuSansMono
##cd fonts
##./install.sh
##cd ..


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

echo "yum  install zsh   ===================================>>>"
yum install -y zsh

chsh -s /bin/zsh

echo "install oh-my-zsh   ===================================>>>"
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh


echo "clone solarized   ===================================>>>"
git clone https://github.com/altercation/solarized.git ~/.vim/bundle/solarized

cp _zshrc ~/.zshrc


echo "clone vim vundle   ===================================>>>"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "make  vim color   ===================================>>>"
mkdir -p ~/.vim/colors

echo "copy solarized.vim to colors dir   ===================================>>>"
cp ~/.vim/bundle/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

echo "install vim plugin     ===================================>>>"
vim +PluginInstall +qall

echo "install tmuxline    ===================================>>>"
git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim

echo "install ctags, cscope    ===================================>>>"
yum install -y ctags cscope 
echo "ansi C header indexing    ===================================>>>"
ctags -R /usr/include

echo "copy mkscope /usr/bin    ===================================>>>"
mv ./mkscope /usr/bin
chmod 755 /usr/bin/mkscope 
echo "*****************************************************************   "
echo " 1. your source dir & ctags -R                                      "
echo " 2..vimrc add following                                             "
echo " 3.set tags=./tags,/usr/include/tags                                "
echo "  ctl+] next  ctl+t first                                            "
echo " 1.your sour dir & mkscope       & ctl+d                             "
echo " 2.add .vimrc  cs add /home/sean/works/cscope.put                    "
echo " 3.vim command mode:cs find symbol  or :cs enter                     "
echo "*****************************************************************   "

echo "*****************************************************************   "
echo "                                                                    "
echo "                                                                    "
echo "Please reconnect your terminal ============================>> !!!!  "
echo "                                                                    "
echo " if you connect with  mRemoteNG or putty                            "
echo " install in windowk powerline font                                  "
echo "  https://github.com/powerline/fonts.git                            "
echo " and change putty-window-appearance-font-Dejavu Sans for powerline  "
echo " change your LANG as en_US.UTF8 in linux /etc/sysconfig/i18n        "
echo " and reboot, or export export LANG="en_US.UTF8" ; export LANG=C     "
echo "                                                                    "
echo "*****************************************************************"


echo "Good Coding Life for You !!!!"

