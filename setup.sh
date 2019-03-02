#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo apt-get update
sudo apt-get install -qq curl
sudo apt-get install -qq neovim
sudo apt-get install -qq tmux
sudo apt-get install -qq tree
sudo apt-get install -qq xclip
sudo apt-get install -qq i3
sudo apt-get install -qq rxvt-unicode
sudo apt-get install -qq pandoc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get install -qq zathura
sudo apt-get install -qq htop
sudo apt-get install -qq ranger
sudo apt-get install -qq fonts-inconsolata
sudo apt-get install -qq silversearcher-ag
sudo apt-get install -qq python-pip
sudo apt-get install -qq python3-pip
sudo apt-get install -qq libssl-dev
sudo apt-get install -qq sshpass
sudo apt-get install -qq virtualenv
sudo apt-get install -qq virtualenvwrapper
sudo apt-get install -qq feh

# Install fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Installing python packages."
# Need this so deoplete works
pip3 -q install neovim

# Set up desired directories.
echo "Creating directories."
mkdir -p ~/Projects/sandbox
mkdir ~/Virtualenvs
mkdir -p ~/.vim/autoload
mkdir -p ~/.config/i3
mkdir -p ~/.config/dunst
mkdir ~/Documents/Books

# Link to dotfiles.
echo "Linking from $USER's home directory to dotfiles."
ln -sf $(pwd)/dotFiles/bash_profile ~/.bash_profile
ln -sf $(pwd)/dotFiles/bashrc ~/.bashrc
ln -sf $(pwd)/dotFiles/bash_aliases ~/.bash_aliases
ln -sf $(pwd)/dotFiles/vimrc ~/.vimrc
ln -sf $(pwd)/dotFiles/gitconfig ~/.gitconfig
ln -sf $(pwd)/dotFiles/i3config ~/.config/i3/config
ln -sf $(pwd)/dotFiles/Xresources ~/.Xresources
ln -sf $(pwd)/dotFiles/dunstrc ~/.config/dunst/dunstrc
ln -sf $(pwd)/dotFiles/rangerconfig ~/.config/ranger/rc.conf
ln -sf $(pwd)/dotFiles/htoprc ~/.config/htop/htoprc
ln -sf $(pwd)/dotFiles/flake8 ~/.config/flake8
ln -sf $(pwd)dotFiles/i3blocksconfig ~/.config/i3blocks/config

# Set up NeoVim.
ln -s ~/.vim ~/.config/nvim
ln -sf $(pwd)/dotFiles/vimrc ~/.config/nvim/init.vim

# Create local-only bashrc_local file.
touch ~/.bashrc_local

# Source all bash files.
source ~/.bash_profile

# Restart services that may have been modified.

exit
