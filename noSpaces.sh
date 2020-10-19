#!/bin/bash
#Replaces the spaces with underscores in all the files of the current directory
for fil in "$(pwd)"/*; do 
    basefil=$(basename "$fil")
    name=${basefil// /_}
    
    if [[ ! -e "$name" ]]; then
        mv "$fil" "$name"
    fi
done