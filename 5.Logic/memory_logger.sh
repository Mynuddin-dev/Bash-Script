#!/usr/bin/bash
 
if [ -d $HOME/performance ];then 
    echo "$HOME/performance folder exists"

else
    mkdir $HOME/performance
    echo "$HOME/performance folder has been created"

fi

free >>  $HOME/performance/memory.log 