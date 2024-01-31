#----------
# Java
#----------
export JAVA_HOME="/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
# export JAVA_HOME="/Users/jasonjones/.jenv/versions/temurin64-19.0.2/bin"
# export JAVA_HOME="/Users/jasonjones/.jenv/shims"
# export MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED"
export PATH="$HOME/.jenv/bin:$PATH";
eval "$(jenv init -)"

export FOO="I AM HERE"

# java aliases
alias jsql="./mypsql.sh"
alias jj="./jjshell.sh"
alias jm="./jmvn.sh"
alias jt="mvn clean test"
