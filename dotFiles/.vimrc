" Set up vim

" Set VI compatibility off. Allows full VIM feature set.
set nocompatible

" Show relative line numbers and absolute line number for current line
set relativenumber
set number

" Show prompt to save if you try exiting a modified buffer before saving
set confirm

" Set vim to use syntax highlighting as well as automatic indentation
syntax on

" Limit line length to 79 chars before inserting a newline char
set textwidth=79

" The following eliminate tabs altogether in favor of 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Make all indent commands ('>>' or '<<') a multiple of shiftwidth
set shiftround

" Indent next line to same indent as last line
set autoindent

" Sets the bottom right status line to show mode, position, and commands
set laststatus=2
set ruler
set showmode
set showcmd

" Sets the timout len for key combos such as remaps and key combos
set timeout
set timeoutlen=1000

" Sets certain remaps
inoremap jj <Esc>

" Sets VIM to load plugins from .vim/plug-ins and .vimrc on startup
set loadplugins
