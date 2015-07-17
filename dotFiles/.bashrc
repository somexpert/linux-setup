if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

umask 0002

# Ignore duplicates in command history and increase
# history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000    
