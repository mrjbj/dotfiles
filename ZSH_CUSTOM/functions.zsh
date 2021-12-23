# zshell functions (alias that take parameters)
# jfind uses spotlight index to find files.
# doesn't work for files that start with a "." since not included in the index. 
mdf() {
        if [ -n "$1" -a -n "$2" ]
        then
                #found both $1 and $2
                echo "Searching for '$2' in '$1'" 
                mdfind -onlyin "$1" -name "$2"
                echo "found both $1 and $2"
        elif [ -n "$1" -a -z "$2" ]
        then
                echo "Default: Searching for '$1' in '$(pwd)'" 
                mdfind -onlyin $(pwd)  -name "$1"
        else
                echo "Usage: jfind <start-dir> <filespec>"
        fi
}

jsplit() {
    echo $1 | tr : \\n
}

