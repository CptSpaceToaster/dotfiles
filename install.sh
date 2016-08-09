#!/bin/bash

function install() {
    if [[ -e $1 ]] ; then
        mkdir -p "$2"
        rm -rf "$2/$1"
        ln -s "$(pwd)/$1" "$2/$1"
    fi
}

# install tmux
sudo apt-get install -y tmux
install .tmux.conf ~

# some friendly commands
sudo apt-get install -y tree

# bash dotfiles
install .bash_aliases ~
source ~/.bash_aliases

# install nvim, and friends
sudo apt-get install -y xsel nvim
install init.vim ~/.config/nvim

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
nvim -c "PlugInstall"

# configure terminal
# powerline fonts are installed as a vim plugin
gsettings set org.pantheon.terminal.settings font 'Droid Sans Mono for Powerline 10'
gsettings set org.pantheon.terminal.settings unsafe-paste-alert 'false'
gsettings set org.pantheon.terminal.settings follow-last-tab 'true'
