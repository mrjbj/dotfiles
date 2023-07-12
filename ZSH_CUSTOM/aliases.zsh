# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# list aliases
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color=auto --group-directories-first --hyperlink=auto"
alias ldot='ls -ld .* --color=auto --hyperlink=auto'
alias l="ls -lFh --color=auto --hyperlink=auto"
alias la="ls -lAFh --color=auto --hyperlink=auto"
alias lr="ls -tRFh --color=auto --hyperlink=auto"
alias lS="ls -1FSsh --color=auto --hyperlink=auto"
alias lart="ls -1Fcart --color=auto --hyperlink=auto"
alias lrt="ls -1Fcrt --color=auto --hyperlink=auto"
alias mg='kitty +kitten hyperlinked_grep --smart-case "$@" '

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
alias vi="nvim"
alias vim="nvim"
alias via=" vi ~/.dotfiles/ZSH_CUSTOM/aliases.zsh"
alias vie=" vi ~/.dotfiles/ZSH_CUSTOM/environment.zsh"
alias vit=" vi ~/.dotfiles/.tmux.conf"
alias vik=" vi ~/.config/kitty/kitty.conf"
alias viex="rlwrap -afoo iex"
alias r="ranger"
# java aliases
alias jsql="./mypsql.sh"
alias jj="./jjshell.sh"
alias jm="./jmvn.sh"
alias jt="mvn clean test"

