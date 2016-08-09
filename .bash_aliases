# Color Definitions
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
CYAN='\e[0;36m'
LIGHT_GREY='\e[0;37m'
DARK_GREY='\e[1;30m'
LIGHT_RED='\e[1;31m'
LIGHT_GREEN='\e[1;32m'
ORANGE='\e[1;33m'
LIGHT_BLUE='\e[1;34m'
LIGHT_PURPLE='\e[1;35m'
LIGHT_CYAN='\e[1;36m'
WHITE='\e[1;37m'
# Return color to normal formatting
NC='\e[0m'

# Print a message based on success or failure after running 'make'
function wrap_make() 
{
    clear;
    make "${@}"
    if [[ $? -eq 0 ]] ; then
        echo -e "${GREEN}make: Success!${NC}"
        return 0
    else
        echo -e "${RED}make: Something isn't very happy${NC}"
        return 1
    fi
}

# Usage: copy FILENAME
# Stores the contents of FILENAME into the x clipboard
function do_copy()
{
    if [[ ! -e $1 ]] ; then
        echo -e "${RED}file '${1}' does not exist.${NC}"
        return 1
    fi
    xsel -b < "${1}"
}

# Usage: dif N
# Output: the diff from N commits ago
function do_dif()
{
    local CARROTS=$(for ((i=0; i<$((${1}-1)); ++i)); do echo -n ^; done;)
    git diff HEAD^${CARROTS} HEAD${CARROTS}
}

# Set a fancy PS1
# Requires that 'git' is installed
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND='__git_ps1 "${debian_chroot:+($debian_chroot)}$LIGHT_PURPLE\u@\h$NC $LIGHT_GREY\w$NC" "\$ "'

# Environment Variables
export EDITOR="nvim"

# Aliases
alias sudo="sudo "
alias rcas="${EDITOR} ~/.bash_aliases && source ~/.bash_aliases"
alias tmux="tmux -2"
alias make="wrap_make"
alias copy="do_copy"
alias dif="do_dif"
alias github="mkdir -p ~/Github && cd ~/Github"

if [ -d /usr/local/go/bin ]; then
    export PATH=$PATH:/usr/local/go/bin
    export GOPATH=~/go
fi
