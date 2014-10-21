#!/bin/bash          
git config --global user.name "Kaushal Subedi"
git config --global user.email kaushal@wireshock.com
cd ~
git clone https://github.com/KSubedi/vim-config.git
mv vim-config .vim
cd .vim
mkdir bundle
cd bundle
git clone https://github.com/Shougo/neobundle.vim
git clone https://github.com/Shougo/neocomplcache.vim
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/bling/vim-airline
git clone https://github.com/Chiel92/vim-autoformat
git clone https://github.com/fatih/vim-go
