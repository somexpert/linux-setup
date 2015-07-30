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

" Make all indent commands ('>>' or '<<') a multiple of shiftwidth
set shiftround

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

" Set Python defaults
autocmd FileType python setlocal textwidth=79 expandtab shiftwidth=4 tabstop=4 softtabstop=4 autoindent

" Set HTML defaults
autocmd FileType html setlocal textwidth=120 expandtab shiftwidth=4 tabstop=4 softtabstop=4 autoindent

" Set XML/XSD defaults
autocmd BufNewFile,BufRead *.xsd set filetype=xml
autocmd FileType xml setlocal textwidth=120 expandtab shiftwidth=2 tabstop=2 softtabstop=2 autoindent

" Set Markdown/ReStructured Text defaults
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal textwidth=120 expandtab shiftwidth=4 tabstop=4 softtabstop=4 autoindent
