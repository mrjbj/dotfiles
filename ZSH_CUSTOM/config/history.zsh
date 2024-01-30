#----------
# history
#----------
HIST_STAMPS="yyyy-mm-dd"
HISTFILE="$HOME/.zhistory"
HISTSIZE=100000
SAVEHIST=1000000
setopt HIST_SAVE_NO_DUPS
setopt inc_append_history     #save command to history when running
setopt share_history          # share history with other sessions 
