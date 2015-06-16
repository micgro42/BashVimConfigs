#!/usr/bin/env bash
set -euo pipefail
IFS='\n\t'

HERE=`pwd`

if [ -h "$HOME/.vimrc" ]; then
        rm -f "$HOME/.vimrc"
fi

if [ -e "$HOME/.vimrc" ]; then
        mv "$HOME/.vimrc" "$HOME/.vimrc_bak"
fi

ln -s "$HERE/.vimrc" "$HOME/.vimrc"

