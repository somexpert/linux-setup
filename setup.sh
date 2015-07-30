#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Copy dotfiles to home directory.
echo "Copying dotfiles to $USER's home directory."
cp dotFiles/.bash_profile ~/.bash_profile
cp dotFiles/.bashrc ~/.bashrc
cp dotFiles/.bash_aliases ~/.bash_aliases
cp dotFiles/.vimrc ~/.vimrc
cp dotFiles/.tmux.conf ~/.tmux.conf
cp dotFiles/.gitconfig ~/.gitconfig

# Setup desired directories
echo "Creating directories."
mkdir ~/Projects
mkdir ~/Projects/sandbox
mkdir ~/Virtualenvs

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo apt-get install tree
sudo apt-get install flake8
exit
