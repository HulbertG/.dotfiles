#!/bin/bash 
rm -f ~/.vimrc #delete new vimrc
rm -fr ~/.TRASH #delete trash
sed -i 's:source ~/.dotfiles/etc/bashrc_custom::g' ~/.bashrc
#^ remove bashrc thing
