#!/bin/bash
if [ `uname` == 'Linux' ]; then
	mkdir -p ~/.TRASH
	if [ -f ~/.vimrc ]; then
		mv ~/.vimrc ~/.bup_vimrc
		echo "current .vimrc was changed to .bup_vimrc"
	fi
	cp ./etc/vimrc ~/.vimrc
#one line description: makes trash, checks for vimrc, makes copy if exists and then copies old vimrc
else 
	echo 2> linuxsetup.log
	exit #not linux, log i guess
fi
# V this adds the bashrc from repo
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
