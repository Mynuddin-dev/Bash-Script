#!/usr/bin/bash

readarray -t urls < urls.txt

for url in ${urls[@]}; do 
    # -d delimeter -f field
    webname=$(echo $url | cut -d "." -f 2)
    sudo snap install curl # if curl is not installed , you need to install it
    
    curl --head "$url" > "$webname".txt 

done