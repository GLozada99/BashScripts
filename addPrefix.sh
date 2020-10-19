#!/bin/bash

for item in "$@"
do
    if [[ $item == $1 ]]; then 
        continue
    fi
    mv "$item" "$1""$item"
done 
