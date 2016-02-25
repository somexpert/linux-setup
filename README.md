To-Do for 1.0.0 release
=======================

- [ ] Atom
- [ ] Chrome
- [x] Make symlinks to dotfiles instead of copying them
- [x] Figure out a system for having a file or multiple files for local-only configs (aliases, vars, etc)
- [ ] Make options for limiting scope of setup script
- [x] Install pip
- [ ] Correct i3 installation
- [ ] Make debian version of script/s
- [x] Make zshell default shell
- [ ] Install fuzzy finder
- [x] Install autocomplete plugin for nvim


Added/Changed
=============

Directories
-----------

* ``~/Projects``
* ``~/Projects/sandbox``
* ``~/Documents/Books``

Virtual Environments
--------------------

* ``~/Projects/sandbox``
* ``~/Virtualenvs``

Aliases
-------

* ``ls = ls --color``
* ``la = ls -A``
* ``ll = ls -lA``
* ``aliases = vim ~/.bash_aliases``
* ``rm = rm -I --preserve-root -d -v``
* ``venv = virtualenvwrapper``
* ``venvstart = export WORKON_HOME=~/Virtualenvs ; source /usr/local/bin/virtualenvwrapper.sh``
* ``lsvenv = lsvirtualenv``
* ``cdvenv = cdvirutalenv``
* ``mkvenv = mkvirtualenv``
* ``rmvenv = rmvirtualenv``
* ``dc = docker-compose``
* ``dcr = docker-compose run --rm``

Programs
--------

* curl
* nvim (neovim)
* vim
* git
* tmux
* tree
* docker
* docker-compose
* xclip
* i3
* ipython
* urxvt
* pandoc
* flake8
* virtualenv
* virtualenv wrapper
* vim-plug
* zathura
* htop
* ranger
* coverage
* ack-grep
* ag
* pip

Fonts
-----

* Inconsolata
* Droid

Dotfiles
--------

* ``~/.bash_profile``
* ``~/.bashrc``
* ``~/.bashrc_local`` (empty, for local config only)
* ``~/.bash_aliases``
* ``~/.vimrc``
* ``~/.tmux.conf``
* ``~/.gitconfig``
* ``~/.i3/config``
* ``~/.Xresources``
* ``~/.config/dunst/dunstrc``
