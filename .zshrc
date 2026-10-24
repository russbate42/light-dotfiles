# Custom component
#=============================================================================#
source ~/.aliases.sh

# Vim mode hopefully 
set -o vi
export VI_MODE_SET_CURSOR=true

# Start with beam cursor on zsh init
zle-line-init() {
  echo -ne "\e[5 q"
}
zle -N zle-line-init

# for screen color with tmux
export TERM=xterm-256color

# Languages
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Add local builds to the path
export PATH=$HOME/local/bin:$PATH
# for some reason some builds are in bin bin
export PATH=$HOME/local/bin/bin:$PATH
# same for .local
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/bin:$PATH
# For Rust
export PATH=$HOME/.cargo/bin:$PATH
#=============================================================================#


# OH MY ZSH
#=============================================================================#
# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# zstyle ':omz:update' mode reminder  # just remind me to update when it's time


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# source $ZSH/oh-my-zsh.sh
#=============================================================================#
