# path for brew 
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# doom binaries
export PATH="$HOME/.emacs.d/bin:$PATH"

# Core binaries to replace older Mac Versions 
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
