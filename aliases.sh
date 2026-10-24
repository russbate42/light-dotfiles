# Python
alias python='python3'
alias py='python'

# Neovim related
# alias nv=~/sandbox/nvim.appimage
alias nv=~/NeoVimConfig/nvim-linux-x86_64.appimage
alias cleannvim='rm -f ~/.local/state/nvim/swap/*'

# Listing stuff
alias lsl='ls -1'
alias lsd='ls -ld */'
alias lsah='ls -lah'
alias lsda='ls -lda */'
# - Specific languages
alias lssh='ls -la | grep sh'
alias lspy='ls -l *.py'

# Finding stuff
alias findgrep='find $(pwd)/ | grep'
alias fh='find $(pwd)/'
alias lsf='find . -maxdepth 1 -type f'
alias lsg='ls | grep'
alias lslg='ls -l | grep'
alias lg='ls -l | grep'

# Git
alias gst='git status'
alias gd='git diff'
alias gitgraph='git log --graph --pretty=oneline --abbrev-commit'

# Memory controls
alias cm="du -sh -- * | sort -h"
alias cma="du -h -- * | sort -h"

# Helper functions
function checkmem() {
	if [ -z "$1" ]
    then
		du -h | sort -h
	else
		du -h ./$1 | sort -h
    fi
}
