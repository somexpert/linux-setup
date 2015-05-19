#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."
echo "Copying dotfiles to $USER's home directory."

# Copy dotfiles to home directory.
cp dotFiles/.bash_profile ~/.bash_profile
cp dotFiles/.bashrc ~/.bashrc
cp dotFiles/.bash_aliases ~/.bash_aliases
cp dotFiles/.vimrc ~/.vimrc
cp dotFiles/.tmux.conf ~/.tmux.conf

# Setup desired directories
echo "Creating directories and links."
mkdir ~/Projects
