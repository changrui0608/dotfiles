#!/usr/bin/env sh

pwd=$(pwd)
if [ -e ~/.profile ]; then
	rm -f ~/.profile.bak
	mv ~/.profile ~/.profile.bak
fi

ln -s ${pwd}/bash_profile.sh ~/.profile
echo "done"
