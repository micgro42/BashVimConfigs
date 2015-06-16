#!/usr/bin/env bash
set -euo pipefail
IFS='\n\t'

HERE=`pwd`

if [[ -h "$HOME/.vimrc" ]]; then
        rm -f "$HOME/.vimrc"
fi

if [[ -e "$HOME/.vimrc" ]]; then
        mv "$HOME/.vimrc" "$HOME/.vimrc_bak"
fi

ln -s "$HERE/.vimrc" "$HOME/.vimrc"

if [[ ! -d "$HOME/.vim/bundle/Vundle.vim" ]]; then
        mkdir -p ~/.vim/bundle
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +BundleInstall +qall

# cp -u ~/.vim/bundle/powerline/font/PowerlineSymbols.otf ~/.font
# mkdir -p ~/.config/fontconfig/conf.d/
# cp -u ~/.vim/bundle/powerline/font/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

(~/.vim/bundle/fonts/install.sh)

