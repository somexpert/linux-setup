#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo apt-get update
sudo apt-get install curl
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install tmux
sudo apt-get install tree
sudo apt-get install docker-engine
sudo apt-get install docker-compose
sudo apt-get install xclip
sudo apt-get install i3
sudo apt-get install rxvt-unicode-256color
sudo apt-get install pandoc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get install zathura
sudo apt-get install htop
sudo apt-get install ranger
sudo apt-get install fonts-inconsolata
sudo apt-get install fonts-droid
sudo apt-get install ack-grep
sudo apt-get install silversearcher-ag

echo "Installing python packages."
sudo pip install ipython
sudo pip install flake8
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo pip install coverage

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
