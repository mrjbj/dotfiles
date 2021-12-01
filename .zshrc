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
FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"
_comp_options+=(globdots)              # apply completions to .dotfiles
autoload -Uz compinit && compinit      # enable completions

#--------------
# theme
#-------------
ZSH_THEME=agnoster
DEFAULT_USER=jasonjones
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
bindkey -M viins 'jk' vi-cmd-mode
#----------
# activate omz 
#----------
source $ZSH/oh-my-zsh.sh


