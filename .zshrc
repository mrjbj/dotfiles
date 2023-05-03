# 1. zshrc file loaded by zshell for interactive shells
# 2. this sets up oh-my-zsh and then sources $(ZSH_CUSTOM/*.zsh)

export DOTFILES=$HOME/.dotfiles

#-----------------
# Oh-my-zsh config 
#-----------------
export ZSH=$HOME/.oh-my-zsh            # install directory
ZSH_CUSTOM=$DOTFILES/ZSH_CUSTOM        # will source *.zsh after oh-my-zsh.zsh 

#---------------
# completions
#-------------
ZSH_DISABLE_COMPFIX=true               # testing...
_comp_options+=(globdots)              # apply completions to .dotfiles
autoload -Uz compinit && compinit      # enable completions

#--------------
# theme
#-------------
ZSH_THEME=agnoster
DEFAULT_USER=mrjbj
prompt_context(){}
#----------
# Plugins 
#----------
plugins=(git colored-man-pages common-aliases emacs emoji-clock jump sudo vi-mode)
#----------
# vi-mode
#---------
export VI_MODE_PROMPT_ON_MODE_CHANGE=true
export VI_MODE_SET_CURSOR=true
export MODE_INDICATOR="%F{yellow}+%f"
export KEYTIMEOUT=10
export TERM="xterm-256color"
bindkey -M viins 'jk' vi-cmd-mode
#----------
# activate omz 
#----------
# put completion cache files out of home directory
export ZSH_COMPDUMP=$ZSH/cache/completions/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)

