#!/bin/bash

mkdir ~/bin 2> /dev/null

scripts=$(ls *.sh)
for script in $scripts
do
    stripped="${script%.*}"
    ln -s $HOME/scripts/$script $HOME/bin/$stripped  2> /dev/null
done
rm $HOME/bin/installScripts
