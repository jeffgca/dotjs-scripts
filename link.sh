#!/bin/bash

# get the script's directory.
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# create the links in the home directory if they aren't there.
if [ ! -e $HOME/.js ]; then 
	ln -sf $SCRIPTDIR/js $HOME/.js
else
	echo "JS directory exists, skipping."
fi

if [ ! -e $HOME/.css ]; then 
	ln -sf $SCRIPTDIR/css $HOME/.css
else
	echo "CSS directory exists, skipping."
fi
