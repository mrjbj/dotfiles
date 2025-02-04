
# git aliases 
alias aa="git add --all"
alias ci="git commit -v"
alias b="git branch"
alias co="git checkout"
alias gst="status --short --branch"
# alias rc="git rebase --continue"
# alias amend="git commit -v --amend"
# alias au="git add --update"
# alias ce="git commit -v --allow-empty"
alias dc="git diff --cached"
alias dh1="git diff HEAD~1"
alias di="git diff"
# alias fa="git fetch --all"
# alias fap="git fetch --all --prune"
# alias ff="git merge --ff-only"
# alias fu="git merge --ff-only @{u}"
alias gh="git log --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -1"
alias ghead="git log --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -1"
alias hp="git show --patch --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s'"
alias gl="git log --graph --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s'"
alias gla="git log --graph --all --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s'"
alias gld="git log --graph --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ad)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s'"
alias glda="git log --graph --all --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ad)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s'"
alias glf="git log --first-parent --oneline"
# alias mc="git merge --log --no-ff"
# alias ms="git merge --no-commit --log --no-ff"
alias my-commits="git log --author='Tom Miller' --author-date-order --date=format:'%a %b %d %r' --format='%h | %ad | %s'"
# alias publish="git !git checkout -; echo; git merge --no-ff --no-edit -; echo; git push; echo; git checkout -"
alias gr="git log --graph --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -20"
alias ra="git log --graph --all --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ar)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -20"
alias rd="git log --graph --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ad)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -20"
alias rda="git log --graph --all --pretty='tformat:%C(auto,yellow)%h%C(auto,reset) %C(auto,green)(%ad)%C(auto,reset) %C(auto,bold blue)<%an>%C(auto,reset) %C(auto,red)%d%C(auto,reset) %s' -20"
