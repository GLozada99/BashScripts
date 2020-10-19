#!/bin/bash
for fil in "$(pwd)"/*; do 
    basefil=$(basename "$fil") #get name of file
    name=${basefil// /_}
    
    if [[ ! -e "$name" ]]; then
        mv "$fil" "$name"
    fi
done