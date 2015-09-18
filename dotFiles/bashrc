if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Set the default permissions for new files
umask 0002

# Initialize the virtualenvwrapper so it can be used immediately
export WORKON_HOME=~/Virtualenvs ; source /usr/local/bin/virtualenvwrapper.sh

# Ignore duplicates in command history and increase
# history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Create commands mark, marks, and unmark that act like vim marks for directories
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
