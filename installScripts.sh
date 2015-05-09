#!/bin/bash

mkdir ~/bin 2> /dev/null

scripts=$(ls *.sh)
for script in $scripts
do
    stripped="${script%.*}"
    ln -s $HOME/scripts/$script $HOME/bin/$stripped  2> /dev/null
done

# This is a bit of cleanup to remove this script from the bin folder
rm $HOME/bin/installScripts
