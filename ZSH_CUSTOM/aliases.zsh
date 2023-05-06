# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# list aliases
#alias ll="ls -AhlFo --color=auto --group-directories-first"
#alias ldot='ls -ld .* --color=auto'
#alias l="ls -lFh --color=auto"
#alias la="ls -lAFh --color=auto"
#alias lr="ls -tRFh --color=auto"
#alias lS="ls -1FSsh --color=auto"
#alias lart="ls -1Fcart --color=auto"
#alias lrt="ls -1Fcrt --color=auto"

alias ll="colorls -Ahlo" 
alias ldot="colorls -ld .*" 
alias l="colorls -lh" 
alias la="colorls -lAh" 
alias lr="colorls -tRh" 
alias ls="colorls" 
alias lart="colorls -1cart" 
alias lrt="colorls -1crt" 

# Directories
alias m="mark"
#alias j="marks"
alias dh="dirs -v | head -10"
alias 1="cd -"
alias 2="cd ~2"
alias 3="cd ~3"
alias 4="cd ~4"
alias 5="cd ~5"
alias 6="cd ~6"
alias 7="cd ~7"
alias 8="cd ~8"
alias 9="cd ~9"

# jbj misc
alias livebook='$(asdf where elixir)/.mix/escripts/livebook server'
alias lsd="ls -ld .*"
alias dev="~/tmux.dev"
alias via=" vi ~/.dotfiles/ZSH_CUSTOM/aliases.zsh"
alias jsql="./mypsql.sh"
alias viex="rlwrap -afoo iex"
alias jj="./jjshell.sh"
alias jm="./jmvn.sh"
alias jt="mvn clean test"

