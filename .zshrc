# 1. zshrc file loaded by zshell for interactive shells
# 2. this sets up oh-my-zsh and then sources $(ZSH_CUSTOM/*.zsh)

export DOTFILES=$HOME/.dotfiles

#-----------------
# Oh-my-zsh config 
#-----------------
export ZSH=$HOME/.oh-my-zsh            # install directory
autoload -Uz compinit && compinit      # enable completions
ZSH_CUSTOM=$DOTFILES/ZSH_CUSTOM        # will source *.zsh after load

#----------
# Theme 
#----------
export MNML_INSERT_CHAR="$"
export MNML_PROMPT=(mnml_git mnml_keymap)
export MNML_RPROMPT=('mnml_cwd 20')
ZSH_THEME="minimal"
COMPLETION_WAITING_DOTS="true"

#----------
# history
#----------
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=$DOTFILES
HISTSIZE=100000
SAVEHIST=1000000
setopt inc_append_history     #save command to history when running
setopt share_history          # share history with other sessions


#----------
# Plugins 
#----------
plugins=(git asdf colored-man-pages common-aliases emacs emoji-clock jump sudo vi-mode)
export VI_MODE_PROMPT_ON_MODE_CHANGE=true

#----------
# activate omz 
#----------
source $ZSH/oh-my-zsh.sh

#----------
# test if environment gets clobbered 
#----------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export FOO1="SET_IN_ZSHRC"

#----------
# test if aliases get clobbered 
#----------
alias foo1="echo 'alias set from .zshrc'"
