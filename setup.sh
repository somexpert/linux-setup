#!/bin/bash

# Clear screen and indicate intentions.
clear
echo "Assuming control now."

# Install desired programs, extensions, etc.
echo "Installing programs."
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install tmux
sudo apt-get install tree
sudo apt-get install pandoc
sudo apt-get install docker
sudo apt-get install xclip
sudo apt-get install i3
sudo apt-get install rxvt-unicode-256color
sudo apt-get install fonts-inconsolata
sudo apt-get install fonts-droid
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing python packages."
sudo pip install flake8
sudo pip install coverage
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo pip install ipython

# Setup desired directories
echo "Creating directories."
mkdir ~/Projects
mkdir -p ~/Projects/sandbox
mkdir ~/Virtualenvs
mkdir -p ~/.vim/autoload
mkdir -p ~/.i3/config

# Copy dotfiles to home directory.
echo "Copying dotfiles to $USER's home directory."
cp dotFiles/.bash_profile ~/.bash_profile
cp dotFiles/.bashrc ~/.bashrc
cp dotFiles/.bash_aliases ~/.bash_aliases
cp dotFiles/.vimrc ~/.vimrc
cp dotFiles/.tmux.conf ~/.tmux.conf
cp dotFiles/.gitconfig ~/.gitconfig
cp dotFiles/.i3config ~/.i3/config
cp dotFiles/.Xresources ~/.Xresources

source ~/.bash_profile

# Set up the sandbox virtual environment
echo "Setting up the sandbox."
mkvenv sandbox
deactivate

exit
