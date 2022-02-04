# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# list aliases
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color=auto --group-directories-first"
alias ldot='ls -ld .* --color=auto'
alias l="ls -lFh --color=auto"
alias la="ls -lAFh --color=auto"
alias lr="ls -tRFh --color=auto"
alias lS="ls -1FSsh --color=auto"
alias lart="ls -1Fcart --color=auto"
alias lrt="ls -1Fcrt --color=auto"

# Directories
alias m="marks"
alias j="jump"
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
# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# jbj misc
alias livebook='$(asdf where elixir)/.mix/escripts/livebook server'
alias lsd="ls -ld .*"
alias dev="~/tmux.dev"
alias via=" vi ~/.dotfiles/ZSH_CUSTOM/aliases.zsh"
alias jsql="./mypsql.sh"
