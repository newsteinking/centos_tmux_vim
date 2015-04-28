#!/bin/bash

echo "***This Script is for CentOS 6.5********** "

echo "install powerline font  ===================================>>>"

yum install -y git wget 

git clone https://github.com/powerline/fonts.git

mkdir -p /usr/share/fonts/powerline
cp -R ./fonts/*  /usr/share/fonts/powerline
fc-cache -f /usr/share/fonts/powerline/DejaVuSansMono
##cd fonts
##./install.sh
##cd ..


echo "remove  all config ~/       ===================================>>>"
rm -rf  ~/.alias
rm -rf ~/.minttyrc
rm -rf ~/.tmux.conf
rm -rf ~/.vimrc
rm -rf ~/.zshrc
rm -rf ~/project 
rm -rf ~/startup.sh

echo "remvoe  all complete ===================================>>>"

echo "yum  remove  tmux  ===================================>>>"
yum remove -y  tmux

echo "yum  remvoe zsh   ===================================>>>"
yum remove  -y zsh

chsh -s /bin/bash

echo "remove  oh-my-zsh   ===================================>>>"
rm -rf ~/.oh-my-zsh


echo "remvoe solarized   ===================================>>>"

rm -rf ~/.vim/bundle/solarized



echo "remove  vim vundle & plugin   ===================================>>>"
rm -rf ~/.vim/bundle


echo "remove  vim color   ===================================>>>"
rm -rf  ~/.vim/colors




echo "*****************************************************************   "
echo "                                                                    "
echo "                                                                    "
echo "Please reconnect your terminal ============================>> !!!!  "
echo "                                                                    "
echo "*****************************************************************"


echo "Good Coding Life for You !!!!"

