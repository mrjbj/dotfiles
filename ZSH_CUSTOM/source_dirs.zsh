#!/bin/zsh

# Get the directory of the current script
script_dir="${0:A:h}"
# subdirectory list
subdirs=("alias" "config" "keys" "path" "programs" ) 

for dir in "${subdirs[@]}"; do
    full_path="$script_dir/$dir"

    # Check if the directory exists
    if [[ -d "$full_path" ]]; then
        # echo "Sourcing files from: $full_path"
        for file in "$full_path"/*.zsh; do
            # Check if the file exists to avoid sourcing non-existent glob results
            if [[ -f "$file" ]]; then
                source "$file"
            fi
        done
    else
        echo "Directory not found: $full_path"
    fi
done
