#----------
# Postgres 
#----------
export DB_PASSWORD="Ringo!@5";

#----------
# Elixir 
# asdf where elixir
#----------
export ELIXIR_PATH="$HOME/.asdf/installs/elixir/1.14.3-otp-25"
export LIVEBOOK_PASSWORD="Ringo!@5"

#----------
# erlang 
#----------
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=yes
export KERL_INSTALL_MANPAGES=yes


#----------
# Java
#----------
export JAVA_HOME="/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
# needed to allow access to private variables for reflection in jshell
export MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED"

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

#----------
# char encoding 
#----------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#----------
# updatedb 
#----------
export PRUNEPATHS="/run"

#-------------------------
# SSL identity for github 
#-------------------------
ssh-add ~/.ssh/id_rsa_github
