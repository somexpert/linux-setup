#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -qq curl
sudo apt-get install -qq vim
sudo apt-get install -qq neovim
sudo apt-get install -qq git
sudo apt-get install -qq tmux
sudo apt-get install -qq tree
sudo apt-get install -qq docker-engine
sudo apt-get install -qq docker-compose
sudo apt-get install -qq xclip
sudo apt-get install -qq i3
sudo apt-get install -qq rxvt-unicode-256color
sudo apt-get install -qq pandoc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get install -qq zathura
sudo apt-get install -qq htop
sudo apt-get install -qq ranger
sudo apt-get install -qq fonts-inconsolata
sudo apt-get install -qq fonts-droid
sudo apt-get install -qq ack-grep
sudo apt-get install -qq silversearcher-ag
sudo apt-get install -qq python-pip

echo "Installing python packages."
sudo pip -q install ipython
sudo pip -q install flake8
sudo pip -q install virtualenv
sudo pip -q install virtualenvwrapper
sudo pip -q install coverage

# Set up desired directories.
echo "Creating directories."
mkdir ~/Projects
mkdir -p ~/Projects/sandbox
mkdir ~/Virtualenvs
mkdir -p ~/.vim/autoload
mkdir -p ~/.i3/config
mkdir -p ~/.config/dunst
mkdir ~/Documents/Books

# Copy dotfiles to home directory.
echo "Copying dotfiles to $USER's home directory."
cp dotFiles/bash_profile ~/.bash_profile
cp dotFiles/bashrc ~/.bashrc
cp dotFiles/bash_aliases ~/.bash_aliases
cp dotFiles/vimrc ~/.vimrc
cp dotFiles/tmux.conf ~/.tmux.conf
cp dotFiles/gitconfig ~/.gitconfig
cp dotFiles/i3config ~/.i3/config
cp dotFiles/Xresources ~/.Xresources
cp dotFiles/dunstrc ~/.config/dunst/dunstrc

# Create local-only bashrc_local file.
touch ~/.bashrc_local

# Source all bash files.
source ~/.bash_profile

# Set up the sandbox virtual environment.
echo "Setting up the sandbox."
mkvenv sandbox
deactivate

# Restart services that may have been modified.

exit
