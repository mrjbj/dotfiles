# Check if $(brew --prefix) works and provide a default if not
brew_prefix=$(brew --prefix wxwidgets 2>/dev/null)
if [[ -z "$brew_prefix" ]]; then
    brew_prefix="/opt/homebrew/opt/wxwidgets" # Default prefix
    echo "Setting brew_prefix to default: $brew_prefix"
fi

#----------
# Elixir 
# asdf where elixir
#----------
export ELIXIR_PATH="$HOME/.asdf/installs/elixir/1.15.2-otp-26"
export MIX_HOME="${XDG_DATA_HOME}/mix"
export HEX_HOME="${XDG_DATA_HOME}/hex"
export LIVEBOOK_PASSWORD="RingoRingo123"

#----------
# erlang 
#----------
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_size 1000000"
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=yes
export KERL_INSTALL_MANPAGES=yes
export KERL_CONFIGURE_OPTIONS="--with-wx-config=$brew_prefix/bin/wx-config"

# alias
alias livebook='$(asdf where elixir)/.mix/escripts/livebook server'



