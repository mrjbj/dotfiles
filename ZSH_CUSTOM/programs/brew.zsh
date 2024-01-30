#----------
# Brew
#----------
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export HOMEBREW_SHELLENV_PREFIX="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
 
# cannot upload this to github. 
# set gitignore to ignore it
export HOMEBREW_GITHUB_API_TOKEN="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";

# override older MacOS system utils
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
