#!/bin/bash
#Move the files in current directory to other directories acording to their prefix

ADDRESS='/media/gustavolozada/7468CF1D68CEDCCC/Users/gusgo/Desktop/MyThings'

for fil in "$(pwd)"/*; do 
        
    basefil=$(basename "$fil") 
    name=${basefil// /_}
    
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
