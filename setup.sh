#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Setup desired directories
echo "Creating directories."
mkdir ~/Projects
mkdir ~/Projects/sandbox
mkdir ~/Virtualenvs

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo apt-get update
sudo apt-get install google-chrome
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install tmux
sudo apt-get install tree
sudo apt-get install lxml
sudo apt-get install pandoc
sudo apt-get install docker
sudo apt-get install xclip

echo "Installing python packages."
sudo pip install flake8
sudo pip install coverage
sudo pip install virtualenv
sudo pip install virtualenvwrapper

# Copy dotfiles to home directory.
echo "Copying dotfiles to $USER's home directory."
cp dotFiles/.bash_profile ~/.bash_profile
cp dotFiles/.bashrc ~/.bashrc
cp dotFiles/.bash_aliases ~/.bash_aliases
cp dotFiles/.vimrc ~/.vimrc
cp dotFiles/.tmux.conf ~/.tmux.conf
cp dotFiles/.gitconfig ~/.gitconfig
source ~/.bash_profile

exit
