#----------
# erlang 
#----------
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=yes
export KERL_INSTALL_MANPAGES=yes
export KERL_CONFIGURE_OPTIONS="--with-wx-config=$(brew --prefix wxwidgets)/bin/wx-config"
