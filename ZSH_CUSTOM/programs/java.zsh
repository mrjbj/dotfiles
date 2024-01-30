#----------
# Java
#----------
export JAVA_HOME="/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
export MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED"
export PATH="$HOME/.jenv/bin:$PATH";
eval "$(jenv init -)"
