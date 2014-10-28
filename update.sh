#!/bin/bash          
yum update -y
yum install -y vim git
apt-get update
apt-get install -y vim git
git config --global user.name "Kaushal Subedi"
git config --global user.email kaushal@wireshock.com
cd ~
git clone https://github.com/KSubedi/vim-config.git
mv vim-config .vim
cd .vim
mkdir bundle
cd bundle
rm -rf .
git clone https://github.com/Shougo/neobundle.vim
