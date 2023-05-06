# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

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
ZSH_THEME=powerlevel10k/powerlevel10k
DEFAULT_USER=mrjbj
prompt_context(){}
#----------
# Plugins 
#----------
plugins=(git colored-man-pages common-aliases emacs emoji-clock jump sudo vi-mode zsh-syntax-highlighting zsh-autosuggestions)
#----------
# vi-mode
#---------
export VI_MODE_PROMPT_ON_MODE_CHANGE=true
export VI_MODE_SET_CURSOR=true
export MODE_INDICATOR="%F{yellow}+%f"
export KEYTIMEOUT=10
export TERM="xterm-256color"
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins '^I' forward-char
bindkey '^R' history-incremental-search-backward
bindkey '^F' menu-select 
#----------
# activate omz 
#----------
# put completion cache files out of home directory
export ZSH_COMPDUMP=$ZSH/cache/completions/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
