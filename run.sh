#!/bin/bash

# tmux
echo "=====tmux part====="
if [ ! -d ~/.tmux/plugins/tpm ]
then
    echo "clone tpm"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
ln -i tmux/tmux.conf ~/.tmux.conf
echo "prefix + I to install plugin"

# zsh
echo "=====zsh part====="
if [ ! -d ~/.oh-my-zsh ]
then
    echo "clone zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
ln -i zsh/zshrc ~/.zshrc
echo "chsh -s /bin/zsh to zsh"

# emacs(spacemacs)
echo "=====spacemacs part====="
if [ ! -d ~/.spacemacs ]
then
    echo "clone spacemacs"
    if [ -d ~/.emacs.d ]
    then
	mv ~/.emacs.d ~/.emacs.d.back
    fi
    if [ -e ~/.emacs ]
    then
	mv ~/.emacs ~/.emacs.back
    fi
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

#ln -i emacs/spacemacs ~/.spacemacs
