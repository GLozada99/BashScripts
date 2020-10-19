#!/bin/bash
# Fix the apt update errors in Ubuntu / Linux Mint
# Demonstrated for fun by guys at ihaveapc.com

ADDRESS='/media/gustavolozada/7468CF1D68CEDCCC/Users/gusgo/Desktop/MyThings'

#var=1
for fil in "$(pwd)"/*; do 
        
    basefil=$(basename "$fil") #get name of file
    name=${basefil// /_}
    #mv "$fil" "$name"
    if [[ $basefil == "Antenas_"* ]]; then
        echo $basefil
        mv "$fil" $ADDRESS/Antenas/"$name"

    elif [[ $basefil == "ComsDigitales_"* ]]; then
        echo $basefil
        mv "$fil" $ADDRESS/ComsDigitales/"$name"

    elif [[ $basefil == "IngEco_"* ]]; then
        echo $basefil
        echo $name
        mv "$fil" $ADDRESS/IngEco/"$name"

    elif [[ $basefil == "TeoriaCodigo_"* ]]; then
        echo $basefil
        mv "$fil" $ADDRESS/TeoriaCodigo/"$name"

    elif [[ $basefil == "Procesos_"* ]]; then
        echo $basefil
        mv "$fil" $ADDRESS/Procesos/"$name"
    elif [[ $basefil == "Books_"* ]]; then
        echo $basefil
        mv "$fil" "~/Documents/Books/""$name"
    fi
    
done
